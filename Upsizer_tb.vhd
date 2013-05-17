--!
--! Copyright (C) 2013 University of Kaiserslautern
--! Microelectronic Systems Design Research Group
--!
--! This file is part of the financial mathematics research project
--! de.uni-kl.eit.ems.finance
--! @file
--! @brief Axi4-Stream Upsizer testbench
--! @author Luis Vega
--! @brief Supervisors: Philipp Schläfer and Christian de Schryver

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Upsizer_tb is
end Upsizer_tb;

architecture behavioral of Upsizer_tb is

  component Upsizer
    generic (
      G_RESET_ACTIVE : std_logic;
      WIDTH          : integer;
      NUM_REG        : integer);
    port(
      clk           : in  std_logic;    
      rst           : in  std_logic;    
      s_axis_tdata  : in  std_logic_vector(WIDTH-1 downto 0);    
      s_axis_tlast  : in  std_logic;    
      s_axis_tvalid : in  std_logic;          
      s_axis_tready : out std_logic;    
      m_axis_tarray : out std_logic_vector(WIDTH*NUM_REG-1 downto 0);
      m_axis_tlast  : out std_logic;
      m_axis_tvalid : out std_logic;
      m_axis_tready : in  std_logic);
  end component;

  -- component generics
  constant G_RESET_ACTIVE : std_logic := '1';
  constant WIDTH          : integer   := 32;
  constant NUM_REG        : integer   := 3;

  -- component ports
  signal clk           : std_logic := '0';
  signal rst           : std_logic;
  signal s_axis_tdata  : std_logic_vector(WIDTH-1 downto 0);
  signal s_axis_tlast  : std_logic;
  signal s_axis_tvalid : std_logic;
  signal s_axis_tready : std_logic;
  signal m_axis_tarray : std_logic_vector(WIDTH*NUM_REG-1 downto 0);
  signal m_axis_tlast  : std_logic;
  signal m_axis_tvalid : std_logic;
  signal m_axis_tready : std_logic;

  -- clock period definition
  constant clk_period : time := 10 ns;

begin  -- behavioral

  -- component instantiation
  DUT: Upsizer
    generic map (
      G_RESET_ACTIVE => G_RESET_ACTIVE,
      WIDTH          => WIDTH,
      NUM_REG        => NUM_REG)
    port map (
      clk           => clk,
      rst           => rst,
      s_axis_tdata  => s_axis_tdata,
      s_axis_tlast  => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      m_axis_tarray => m_axis_tarray,
      m_axis_tlast  => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready);

  -- clock generation
  clk <= not clk after clk_period/2;

  -- waveform generation
  WaveGen_Proc: process
  begin

    -------------------------------------------------------------------------------                                        
    --! @brief initial configuration - "last signal" is not used, it's assigned to '0'
    -------------------------------------------------------------------------------                                        
    s_axis_tlast  <= '0'; 
    rst           <= '0';
    s_axis_tvalid <= '0';    
    wait for 5*clk_period;
    rst           <= '1';
    wait for 2*clk_period;
    rst           <= '0';
    wait for 10*clk_period;
    -------------------------------------------------------------------------------                                        

    -------------------------------------------------------------------------------                                        
    --! @brief Transaction 1 --> Sending valid "s_axis_tdata" right after each other
    --! @details m_axis_tready activated
    -------------------------------------------------------------------------------
    --! @details Transaction 1 starts
    s_axis_tvalid <= '1';
    m_axis_tready <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(10, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(11, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(12, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    --! @details Transaction 1 ends
    -------------------------------------------------------------------------------                                        

    -- Waiting for 8 clk_period for next transaction
    wait for 8*clk_period;

    -----------------------------------------------------------------------------                                        
    --! @brief Transaction 2 --> Sending valid "s_axis_tdata" right after each other
    --! @details m_axis_tready activated
    -----------------------------------------------------------------------------
    --! @details Transaction 2 starts
    s_axis_tvalid <= '1';
    m_axis_tready <= '0';
    s_axis_tdata  <= std_logic_vector(to_unsigned(5, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(7, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(3, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    --! @details Transaction 2 ends
    -------------------------------------------------------------------------------                                        

    -- Waiting for 8 clk_period for next transaction
    wait for 8*clk_period;

    m_axis_tready <= '1';
    wait for clk_period;
    m_axis_tready <= '0';

    wait;
  end process WaveGen_Proc;

end behavioral;

