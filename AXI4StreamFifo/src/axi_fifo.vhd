------------------------------------------------------------------------------
-- axis_interface - entity/architecture pair
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

-------------------------------------------------------------------------------------
--
-- AXI Stream interface signals
--
-- S_AXIS_READY  : Ready to accept data in
-- S_AXIS_DATA   : Data in
-- S_AXIS_LAST   : Optional data in qualifier
-- S_AXIS_VALID  : Data in is valid

-- M_AXIS_VALID  : Data out is valid
-- M_AXIS_DATA   : Data Out
-- M_AXIS_LAST   : Optional data out qualifier
-- M_AXIS_READY  : Connected slave device is ready to accept data out
--
-------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Entity Section
------------------------------------------------------------------------------

entity axi_fifo is
	port(
		aclk                    : in    std_logic;
		aresetn                 : in    std_logic;

		-- Configuration in interface
		s_axis_ctrl_tvalid      : in    std_logic;
		s_axis_ctrl_tdata       : in    std_logic_vector(31 downto 0);
		s_axis_ctrl_tlast       : in    std_logic;
		s_axis_ctrl_tready      : out   std_logic;

		-- Data in interface
		s_axis_input_tvalid     : in    std_logic;
		s_axis_input_tdata      : in    std_logic_vector(31 downto 0);
		s_axis_input_tlast      : in    std_logic;
		s_axis_input_tready     : out   std_logic;

		-- Data out interface
		m_axis_output_tvalid    : out   std_logic;
		m_axis_output_tdata     : out   std_logic_vector(31 downto 0);
		m_axis_output_tlast     : out   std_logic;
		m_axis_output_tready    : in    std_logic;

		-- Status out interface
		m_axis_status_tvalid    : out   std_logic;
		m_axis_status_tdata     : out   std_logic_vector(31 downto 0);
		m_axis_status_tlast     : out   std_logic;
		m_axis_status_tready    : in    std_logic
	);

end axi_fifo;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------

architecture EXAMPLE of axi_fifo is

	constant FIFO_DEPTH : natural := 1024;

	constant NUM_CFG_REGS : natural := 2;

	constant NUM_STATUS_REGS : natural := 3;

	-- data pointers for read and write
	signal write_ptr : natural;
	signal read_ptr  : natural;

	-- number of unread data in the fifo
	signal num_data  : natural;

	-- overall number of data passed through the fifo
	signal num_processed_data : natural;

	-- signals for the FIFO state
	signal fifo_not_full  : std_logic;
	signal fifo_not_empty : std_logic;

	-- The actual fifo memory
	type fifo_t is array (FIFO_DEPTH - 1 downto 0) of std_logic_vector(31 downto 0);
	signal fifo : fifo_t;

	-- Memory for the configuration
	type cfg_t is array (NUM_CFG_REGS - 1 downto 0) of std_logic_vector(31 downto 0);
	signal cfg   : cfg_t;
	signal cfg_i : cfg_t;

	signal ctrl_ptr : natural;

	-- '1' for the first clock cycle after the new configuration is valid
	signal cfg_valid_i : std_logic;
	-- '1' as soon as a complete valid config is received
	signal cfg_valid   : std_logic;

	-- soft reset can be initialized by a axi ctrl write
	signal cfg_reset   : std_logic_vector(31 downto 0);
	signal soft_resetn : std_logic;

	-- fifo depth can be reduced by axi ctrl write
	signal cfg_fifo_depth : natural;

	-- the derived fifo depth
	signal soft_fifo_depth : natural;

	signal output_data : std_logic_vector(31 downto 0);

	signal status_i : std_logic_vector(31 downto 0);

	signal status_cnt : natural;

begin

	-- fifo states are derived from the current number of valid data
	fifo_not_full  <= '1' when num_data < soft_fifo_depth else
	                  '0';
	fifo_not_empty <= '1' when num_data > 0 else
	                  '0';

	-- manage the config registers
	cfg <= cfg_i when cfg_valid_i = '1' else
	       cfg;

	-- map the cfg memory to meaningful signals
	cfg_reset <= cfg(0) when cfg_valid_i = '1' else
	             (others => '0');
	cfg_fifo_depth <= to_integer(unsigned(cfg(1)));

	-- generate the reset
	-- important: the soft reset is NOT inverted!
	soft_resetn <= '0' when (aresetn = '0') or cfg_reset(0) = '1' else
	               '1';

	-- compute the fifo depth
	soft_fifo_depth <= cfg_fifo_depth when (cfg_valid = '1') and (cfg_fifo_depth < FIFO_DEPTH) and (cfg_fifo_depth > 0) else
	                   FIFO_DEPTH;


	s_axis_input_tready <= '1' when fifo_not_full = '1' and soft_resetn = '1' else
	                       '0';

	--
	-- Write output stream
	--
	m_axis_output_tvalid <= '1' when fifo_not_empty = '1' else
	                        '0';
	m_axis_output_tlast <= '0' when read_ptr < soft_fifo_depth - 1 else
	                       '1';
	m_axis_output_tdata <= output_data;
	output_data <= fifo(read_ptr) when fifo_not_empty = '1' and aresetn = '1' else
	               output_data    when aresetn = '1'                          else
	               (others => '0');

	--
	-- Write status stream
	--
	m_axis_status_tvalid <= '1';
	m_axis_status_tlast <= '0' when status_cnt /= NUM_STATUS_REGS else
	                       '1';
	m_axis_status_tdata <= status_i;
	status_i <= std_logic_vector(to_unsigned(num_data, m_axis_status_tdata'high + 1)) when status_cnt = 0 else
	            std_logic_vector(to_unsigned(num_processed_data, m_axis_status_tdata'high + 1)) when status_cnt = 1 else
	            std_logic_vector(to_unsigned(soft_fifo_depth, m_axis_status_tdata'high + 1));

	--
	-- Read config stream
	--
	s_axis_ctrl_tready <= '1' when soft_resetn = '1' else
	                      '0';


	--
	-- Set the cfg_valid flag after configuration is complete
	--
	axis_cfg : process (aclk) is
	begin
	if rising_edge(aclk) then
		if aresetn = '0' then
			cfg_valid <= '0';
		else
			if cfg_valid_i = '1' then
				cfg_valid <= '1';
			end if;
		end if;
	end if;
	end process;

	axis_data : process (aclk) is
		variable v_num_data : natural;
	begin
	if rising_edge(aclk) then
		if soft_resetn = '0' then
			fifo <= (others => (others => '0'));
			num_data <= 0;
			write_ptr <= 0;
			read_ptr <= 0;
			cfg_valid_i <= '0';
			v_num_data := 0;
			num_processed_data <= 0;
			status_cnt <= 0;
			cfg_i <= (others => (others => '0'));
		else
			v_num_data := num_data;

			--
			-- Write FIFO
			--
			if (s_axis_input_tvalid = '1') and (fifo_not_full = '1') then

				-- write data
				fifo(write_ptr) <= s_axis_input_tdata;

				-- increment write pointer
				if write_ptr < soft_fifo_depth - 1 then
					write_ptr <= write_ptr + 1;
				else
					write_ptr <= 0;
				end if;

				-- increment the valid data counter
				v_num_data := v_num_data + 1;
			end if;

			--
			-- Read FIFO
			--
			if fifo_not_empty = '1' then

				-- the slave has accepted the transfer
				if m_axis_output_tready = '1' then

					-- decrement the valid data counter
					v_num_data := v_num_data - 1;

					-- increment the processed data counter
					num_processed_data <= num_processed_data + 1;

					-- increment the read pointer
					if read_ptr < soft_fifo_depth - 1 then
						read_ptr <= read_ptr + 1;
					else
						read_ptr <= 0;
					end if;
				end if;
			end if;

			num_data <= v_num_data;


			--
			-- Increment status counter
			--
			if m_axis_status_tready = '1' then

				-- increment the status pointer
				if status_cnt < NUM_STATUS_REGS - 1 then
					status_cnt <= status_cnt + 1;
				else
					status_cnt <= 0;
				end if;
			end if;


			--
			-- Read configuration stream
			--

			-- reset the valid flag
			cfg_valid_i <= '0';

			-- Stream is valid
			if s_axis_ctrl_tvalid = '1' then

				-- write data
				cfg_i(ctrl_ptr) <= s_axis_ctrl_tdata;

				-- increment write pointer
				if ctrl_ptr < NUM_CFG_REGS - 1 then
					ctrl_ptr <= ctrl_ptr + 1;
				else
					ctrl_ptr <= 0;
					cfg_valid_i <= '1';
				end if;


			end if;

		end if;
	end if;
	end process axis_data;

end architecture EXAMPLE;
