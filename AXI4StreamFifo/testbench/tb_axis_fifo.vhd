--!
--! Copyright (C) 2011 TU-KL
--!
--! @file
--! @author Philipp Schlaefer
--! @date   2011/12/14
--! @brief  AXIS FIFO testbench
--!
--!
--! @details
--!

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;

library work;
use work.pkg_components.all;
use work.txt_util.all;
use work.pkg_tb_fileio.all;


entity tb is
	generic(
		-- Clock period within simulation
		CLK_PERIOD      : time    := 10 ns;

		-- Path to configuration data, relative to simulation directory
		CFG_DIRECTORY   : string  := "tb_data/";

		-- Path to testbench data, relative to simulation directory
		DATA_DIRECTORY  : string  := "tb_data/";

		-- Configuration file name
		CFG_FILE        : string  := "cfg.hex";

		-- Configuration data bit width
		BW_CFG_IN       : natural := 32;

		-- Number of the cycle configuration starts
		CFG_START       : natural := 100;

		-- Number of words which belong to one configuration
		NUM_CFG_REGS    : natural := 2;

		-- Input data file name
		IN_FILE         : string  := "data_in.txt";

		-- Number of the cycle configuration starts
		IN_START        : natural := 200;

		-- Input data bit width
		BW_DATA_IN      : natural := 32;

		-- Number of input data
		NUM_IN_DATA     : natural := 30000;

		-- Output data file name
		OUT_FILE        : string  := "data_out.txt";

		-- Input data bit width
		BW_DATA_OUT     : natural := 32;

		-- Throttling of the AXI CTRL bus
		CTRL_THROTTLE   : natural := 5;

		-- Throttling of the AXI INPUT bus
		INPUT_THROTTLE   : natural := 5;

		-- Throttling of the AXI STATUS bus
		STATUS_THROTTLE   : natural := 5;

		-- Throttling of the AXI OUTPUT bus
		OUTPUT_THROTTLE   : natural := 9
	);
end entity tb;


architecture sim of tb is

	signal clk     : std_logic := '0';
	signal aresetn : std_logic;

	signal m_axis_input_tvalid : std_logic;
	signal m_axis_input_tlast  : std_logic;
	signal m_axis_input_tready : std_logic;
	signal m_axis_input_tdata  : std_logic_vector(31 downto 0);

	signal s_axis_output_tvalid : std_logic;
	signal s_axis_output_tlast  : std_logic;
	signal s_axis_output_tready : std_logic;
	signal s_axis_output_tdata  : std_logic_vector(31 downto 0);

	signal m_axis_ctrl_tvalid : std_logic;
	signal m_axis_ctrl_tlast  : std_logic;
	signal m_axis_ctrl_tready : std_logic;
	signal m_axis_ctrl_tdata  : std_logic_vector(31 downto 0);

	signal s_axis_status_tvalid : std_logic;
	signal s_axis_status_tlast  : std_logic;
	signal s_axis_status_tready : std_logic;
	signal s_axis_status_tdata  : std_logic_vector(31 downto 0);

	signal word_counter : natural;

	signal ctrl_counter : natural;

	signal input_data : std_logic_vector(31 downto 0);

	signal ctrl_data : std_logic_vector(31 downto 0);

	signal out_word_counter : natural;

	signal accept_read : natural;

	signal write_cfg : std_logic;

	signal cfg_last : std_logic;
	signal cfg_done : std_logic;

	signal write_input : std_logic;

	-- global cycle counter
	signal counter : natural;

	-- Variables holding the cfg / in / out data
	shared variable v_cfg      : std_logic_array_ptr_type;
	shared variable v_data_in  : int_array_ptr_type;
	shared variable v_data_out : int_array_ptr_type;

begin

	-- instantiate a fifo device
	inst_axi_fifo : axi_fifo
	port map(
		-- Bus protocol ports, do not add or delete.
		aclk    => clk,
		aresetn => aresetn,

		-- Configuration in interface
		s_axis_ctrl_tvalid   => m_axis_ctrl_tvalid,
		s_axis_ctrl_tdata    => m_axis_ctrl_tdata,
		s_axis_ctrl_tlast    => m_axis_ctrl_tlast,
		s_axis_ctrl_tready   => m_axis_ctrl_tready,

		-- Data in interface
		s_axis_input_tvalid  => m_axis_input_tvalid,
		s_axis_input_tdata   => m_axis_input_tdata,
		s_axis_input_tlast   => m_axis_input_tlast,
		s_axis_input_tready  => m_axis_input_tready,

		-- Data out interface
		m_axis_output_tvalid => s_axis_output_tvalid,
		m_axis_output_tdata  => s_axis_output_tdata,
		m_axis_output_tlast  => s_axis_output_tlast,
		m_axis_output_tready => s_axis_output_tready,

		-- Status out interface
		m_axis_status_tvalid => s_axis_status_tvalid,
		m_axis_status_tdata  => s_axis_status_tdata,
		m_axis_status_tlast  => s_axis_status_tlast,
		m_axis_status_tready => s_axis_status_tready
	);

	-- generate the clock
	clk <= not clk after CLK_PERIOD / 2;


	--
	-- Set the signals for uuts output bus
	--
	s_axis_output_tready <= '1' when accept_read = 1 else
	                        '0';

	-- read only every fith cycle
	-- tests the interface behaviour for scattered reads
	accept_read <= 1 when (counter mod OUTPUT_THROTTLE) = 0 else
	               0;

	--
	-- Set the ready signal for uuts status bus
	--
	-- tests the interface behaviour for scattered reads
	s_axis_status_tready <= '1' when (counter mod STATUS_THROTTLE) = 0 else
	                        '0';


	--
	-- Send the cfg file
	--
 	cfg_last <= '1'      when ((ctrl_counter = NUM_CFG_REGS - 1) and (m_axis_ctrl_tready = '1')) or (cfg_done = '1') else
	            cfg_last when aresetn = '1'                                              else
	            '0';

	-- tests the interface behaviour for scattered writes (mod part)
	write_cfg <= '1' when ((counter > CFG_START - 1) and (cfg_done = '0') and (((counter mod CTRL_THROTTLE) = 0) or (m_axis_ctrl_tready = '0'))) else
	             '0';

	ctrl_data <= v_cfg(ctrl_counter) when aresetn = '1' and write_cfg = '1' else
	             ctrl_data           when aresetn = '1' else
	             (others => '0');
	m_axis_ctrl_tdata <= ctrl_data;

	-- Send data from file
	m_axis_ctrl_tvalid <= '1' when aresetn = '1' and write_cfg = '1' else
	                      '0';

	m_axis_ctrl_tlast <= '1' when ctrl_counter = NUM_CFG_REGS - 1 and write_cfg = '1' and cfg_last = '1' else
	                     '0';


	--
	-- Send the input data
	--

	-- tests the interface behaviour for scattered writes
	write_input <= '1' when ((counter > IN_START - 1) and (((counter mod INPUT_THROTTLE) = 0) or (m_axis_input_tready = '0'))) else
	               '0';

	-- Send data from file
	m_axis_input_tvalid <= '1' when aresetn = '1' and write_input = '1' else
	                       '0';

	-- We don't use the tlast flag ... it is opotional
	m_axis_input_tlast  <= '0';

	-- assign the input vector
	input_data <= std_logic_vector(to_signed(v_data_in(word_counter), BW_DATA_IN)) when aresetn = '1' else
	              input_data                                                       when aresetn = '1' else
	              (others => '0');
	m_axis_input_tdata <= input_data;


	pr_counter : process(clk) is
	begin
	if rising_edge(clk) then
		if aresetn = '0' then
			counter <= 0;
		else
			counter <= counter + 1;
		end if;
	end if;
	end process;


	-- initialize reset
	hard_reset : process is
	begin
		aresetn <= '0';
		wait for 4 * CLK_PERIOD;
		aresetn <= '1';
		wait;
	end process;


	--
	-- Read the configuration and data files
	--
	read_files : process is
		variable v_num_lines             : natural := 0;

		variable v_filename_cfg_ptr      : t_string_ptr;

		variable v_filename_data_in_ptr  : t_string_ptr;

		variable v_filename_data_out_ptr : t_string_ptr;
	begin

		-- Read the config file
		-- Data are expected to be in hex format
		v_filename_cfg_ptr := new string'(CFG_DIRECTORY & CFG_FILE);
		v_num_lines := get_num_lines(v_filename_cfg_ptr.all);
		read_file_hex(v_cfg, v_num_lines, v_filename_cfg_ptr.all);

		-- Read the input data file
		v_filename_data_in_ptr := new string'(DATA_DIRECTORY & IN_FILE);
		v_num_lines := get_num_lines(v_filename_data_in_ptr.all);
		read_file(v_data_in, v_num_lines, BW_DATA_IN, v_filename_data_in_ptr.all);

		-- Read the output data file
		v_filename_data_out_ptr := new string'(DATA_DIRECTORY & OUT_FILE);
		v_num_lines := get_num_lines(v_filename_data_out_ptr.all);
		read_file(v_data_out, v_num_lines, BW_DATA_OUT, v_filename_data_out_ptr.all);

		wait;
	end process;


	-- Sending configuration
	pr_config : process(clk) is
		variable v_ctrl_counter : natural;
	begin
	if rising_edge(clk) then
		if aresetn = '0' then
			v_ctrl_counter := 0;
			cfg_done <= '0';
		else
			if m_axis_ctrl_tready = '1' and write_cfg = '1' then

				-- the slave is ready
				if ctrl_counter < NUM_CFG_REGS - 1 then
					v_ctrl_counter := ctrl_counter + 1;
					ctrl_counter   <= v_ctrl_counter;
				else
					v_ctrl_counter := 0;
					cfg_done <= '1';
				end if;
			else
				v_ctrl_counter := ctrl_counter;
			end if;
		end if;
	end if;
	end process;


	-- Configuration and sending data to the core.
	pr_send : process(clk) is
		variable v_word_counter : natural;
	begin
	if rising_edge(clk) then
		if aresetn = '0' then
			v_word_counter := 0;
		else
			if m_axis_input_tready = '1' and write_input = '1' then
				-- the slave is ready
				v_word_counter := word_counter + 1;
				word_counter   <= v_word_counter;
			else
				v_word_counter := word_counter;
			end if;
		end if;
	end if;
	end process;


	--
	-- Receive data and compare them to the data from the reference file
	--
	pr_receive : process(clk) is
	begin
	if rising_edge(clk) then
		if aresetn = '0' then
			out_word_counter   <= 0;
		else

			-- Data passes the output interface.
			if s_axis_output_tvalid = '1' and accept_read = 1 then

				-- save received data
				v_data_out(out_word_counter) := to_integer(signed(s_axis_output_tdata));

				-- compare to reference data
				assert v_data_out(out_word_counter) = v_data_in(out_word_counter)
					report "FAILURE"
					severity error;

				-- increment out data counter
				out_word_counter <= out_word_counter + 1;

			end if;

		end if;
	end if;
	end process pr_receive;


end architecture sim;
