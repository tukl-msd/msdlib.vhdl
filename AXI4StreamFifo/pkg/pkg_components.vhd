--!
--! Copyright (C) 2011 TU-KL
--!
--! @file   pkg_components.vhd
--! @brief  Package holding all component interface declarations
--! @author Philipp Schläfer
--! @date   2011/12/15
--!

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
-- use work.pkg_axis_fifo.all;


package pkg_components is

	component axi_fifo is
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
	end component axi_fifo;

end pkg_components;
