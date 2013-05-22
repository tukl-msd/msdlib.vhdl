--!
--! Copyright (C) 2012 University of Kaiserslautern
--! Microelectronic Systems Design Research Group
--!
--! This file is part of the financial mathematics research project
--! de.uni-kl.eit.ems.finance
--! @file
--! @brief Axi-Stream Write Interface Testbench
--! @author Luis Vega

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AxiMst_tb is
end AxiMst_tb;

architecture behavioral of AxiMst_tb is

  component AxiMst
    generic (
      G_RESET_ACTIVE : std_logic;
      WIDTH          : integer;
      NUM_REG        : integer);
    port (
      clk             : in  std_logic;
      rst             : in  std_logic;
      reg_array       : in  std_logic_vector(NUM_REG*WIDTH - 1 downto 0);
      reg_array_valid : in  std_logic;
      reg_array_ready : out std_logic;
      m_axis_tvalid   : out std_logic;
      m_axis_tdata    : out std_logic_vector(WIDTH - 1 downto 0);
      m_axis_tlast    : out std_logic;
      m_axis_tready   : in  std_logic);
  end component;

  -- component generics
  constant G_RESET_ACTIVE : std_logic := '1';
  constant WIDTH          : integer   := 32;
  constant NUM_REG        : integer   := 2;

  -- component ports
  signal clk             : std_logic := '0';
  signal rst             : std_logic;
  signal reg_array       : std_logic_vector(NUM_REG*WIDTH - 1 downto 0);
  signal reg_array_valid : std_logic;
  signal reg_array_ready : std_logic;
  signal m_axis_tvalid   : std_logic;
  signal m_axis_tdata    : std_logic_vector(31 downto 0);
  signal m_axis_tlast    : std_logic;
  signal m_axis_tready   : std_logic;

  -- clock
  constant clk_period : time := 10 ns;
  
begin  -- behavioral

  -- component instantiation
  DUT : AxiMst
    generic map (
      G_RESET_ACTIVE => G_RESET_ACTIVE,
      WIDTH          => WIDTH,
      NUM_REG        => NUM_REG)
    port map (
      clk             => clk,
      rst             => rst,
      reg_array       => reg_array,
      reg_array_valid => reg_array_valid,
      reg_array_ready => reg_array_ready,
      m_axis_tvalid   => m_axis_tvalid,
      m_axis_tdata    => m_axis_tdata,
      m_axis_tlast    => m_axis_tlast,
      m_axis_tready   => m_axis_tready);

  -- clock generation
  clk <= not clk after clk_period/2;

  -- waveform generation
  wavegen_proc : process
  begin
    -- initial configuration
    m_axis_tready   <= '0';
    rst             <= '1';
    reg_array_valid <= '0';
    wait for 5*clk_period;
    rst             <= '0';

    ---------------------------------------------------------------------------
    -- first transaction - reg_array_valid high '1' for one cycle
    ---------------------------------------------------------------------------
    reg_array_valid <= '1';
    reg_array       <= std_logic_vector(to_unsigned(7, 32)) & std_logic_vector(to_unsigned(6, 32));
    wait for clk_period;
    reg_array_valid <= '0';
    wait for 2*clk_period;
    -- Microblaze is ready to start receiving values
    m_axis_tready <= '1';
    wait for 4*clk_period;
    m_axis_tready <= '0';
    ---------------------------------------------------------------------------

    -- wait for next transaction
    wait for 8*clk_period;

    ---------------------------------------------------------------------------
    -- second transaction - reg_array_valid high for whole transaction
    ---------------------------------------------------------------------------
    reg_array_valid <= '1';
    reg_array       <= std_logic_vector(to_unsigned(32, 32)) & std_logic_vector(to_unsigned(15, 32));
    wait for clk_period;
    -- Microblaze is ready to start receiving values
    m_axis_tready <= '1';
    wait for 3*clk_period;
    m_axis_tready <= '0';
    reg_array_valid <= '0';
    ---------------------------------------------------------------------------

    -- wait for next transaction
    wait for 8*clk_period;

    ---------------------------------------------------------------------------
    -- third transaction - split transaction, toggle m_axis_tready
    ---------------------------------------------------------------------------
    reg_array_valid <= '1';
    reg_array       <= std_logic_vector(to_unsigned(17, 32)) & std_logic_vector(to_unsigned(31, 32));
    wait for clk_period;
    -- Microblaze is ready to start receiving values
    m_axis_tready <= '1';
    wait for clk_period;
    m_axis_tready <= '0';
    wait for clk_period;
    m_axis_tready <= '1';
    wait for 2*clk_period;
    m_axis_tready <= '0';
    reg_array_valid <= '0';
    ---------------------------------------------------------------------------


    wait;
  end process wavegen_proc;

end behavioral;

