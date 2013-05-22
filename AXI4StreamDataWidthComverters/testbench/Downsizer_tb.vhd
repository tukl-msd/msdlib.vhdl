--!
--! Copyright (C) 2013 University of Kaiserslautern
--! Microelectronic Systems Design Research Group
--!
--! This file is part of the financial mathematics research project
--! de.uni-kl.eit.ems.finance
--! @file
--! @brief Axi4-Stream Downsizer testbench
--! @author Luis Vega
--! @brief Supervisors: Philipp Schläfer and Christian de Schryver

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Downsizer_tb is
end Downsizer_tb;

architecture behavioral of Downsizer_tb is

  component Downsizer
    generic (
      G_RESET_ACTIVE : std_logic;
      WIDTH          : integer;
      NUM_REG        : integer);
   port(
    clk           : in  std_logic;
    rst           : in  std_logic;
    s_axis_tarray : in  std_logic_vector(NUM_REG*WIDTH - 1 downto 0);
    s_axis_tlast  : in  std_logic;
    s_axis_tvalid : in  std_logic;
    s_axis_tready : out std_logic;
    m_axis_tdata  : out std_logic_vector(WIDTH - 1 downto 0);
    m_axis_tlast  : out std_logic;
    m_axis_tvalid : out std_logic;    
    m_axis_tready : in  std_logic);
  end component;

  -- component generics
  constant G_RESET_ACTIVE : std_logic := '1';
  constant WIDTH          : integer   := 32;
  constant NUM_REG        : integer   := 2;

  -- component ports
  signal clk           : std_logic := '0';
  signal rst           : std_logic;
  signal s_axis_tarray : std_logic_vector(NUM_REG*WIDTH - 1 downto 0);
  signal s_axis_tlast  : std_logic;
  signal s_axis_tvalid : std_logic;
  signal s_axis_tready : std_logic;
  signal m_axis_tdata  : std_logic_vector(31 downto 0);
  signal m_axis_tlast  : std_logic;
  signal m_axis_tvalid : std_logic;  
  signal m_axis_tready : std_logic;

  -- clock
  constant clk_period : time := 10 ns;
  
begin  -- behavioral

  -- component instantiation
  DUT : Downsizer
    generic map (
      G_RESET_ACTIVE => G_RESET_ACTIVE,
      WIDTH          => WIDTH,
      NUM_REG        => NUM_REG)
    port map (
      clk           => clk,
      rst           => rst,
      s_axis_tarray => s_axis_tarray,
      s_axis_tlast  => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      m_axis_tdata  => m_axis_tdata,
      m_axis_tlast  => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready);

  -- clock generation
  clk <= not clk after clk_period/2;

  -- waveform generation
  wavegen_proc : process
  begin
    -- initial configuration
    s_axis_tlast  <= '0';
    m_axis_tready <= '0';
    rst           <= '1';
    s_axis_tvalid <= '0';
    wait for 5*clk_period;
    rst           <= '0';

    ---------------------------------------------------------------------------
    -- First transaction - s_axis_tvalid high '1' for one cycle
    ---------------------------------------------------------------------------
    s_axis_tvalid <= '1';
    s_axis_tarray <= std_logic_vector(to_unsigned(7, 32)) & std_logic_vector(to_unsigned(6, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    wait for 2*clk_period;
    -- Ready to start sending values
    m_axis_tready <= '1';
    wait for 4*clk_period;
    m_axis_tready <= '0';
    ---------------------------------------------------------------------------

    -- wait for next transaction
    wait for 8*clk_period;

    ---------------------------------------------------------------------------
    -- Second transaction - s_axis_tvalid high for whole transaction
    ---------------------------------------------------------------------------
    s_axis_tvalid <= '1';
    s_axis_tarray <= std_logic_vector(to_unsigned(32, 32)) & std_logic_vector(to_unsigned(15, 32));
    wait for clk_period;
    -- Ready to start sending values
    m_axis_tready <= '1';
    wait for 3*clk_period;
    m_axis_tready <= '0';
    s_axis_tvalid <= '0';
    ---------------------------------------------------------------------------

    -- wait for next transaction
    wait for 8*clk_period;

    ---------------------------------------------------------------------------
    -- Third transaction - split transaction, toggle m_axis_tready
    ---------------------------------------------------------------------------
    s_axis_tvalid <= '1';
    s_axis_tarray <= std_logic_vector(to_unsigned(17, 32)) & std_logic_vector(to_unsigned(31, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    --Ready to start sending values
    m_axis_tready <= '1';
    wait for clk_period;
    m_axis_tready <= '0';
    wait for clk_period;
    m_axis_tready <= '1';
    wait for 2*clk_period;
    m_axis_tready <= '0';
    ---------------------------------------------------------------------------
    wait;
  end process wavegen_proc;

end behavioral;

