--!
--! Copyright (C) 2012 University of Kaiserslautern
--! Microelectronic Systems Design Research Group
--!
--! This file is part of the financial mathematics research project
--! de.uni-kl.eit.ems.finance
--! @file
--! @brief Axi-Stream Slave Interface testbench
--! @author Luis Vega

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AxiSlv_tb is
end AxiSlv_tb;

architecture behavioral of AxiSlv_tb is

  component AxiSlv
    generic (
      G_RESET_ACTIVE : std_logic;
      NUM_RST_CYCLE  : integer;
      WIDTH          : integer;
      NUM_REG        : integer);
    port (
      clk             : in  std_logic;
      rst             : in  std_logic;
      s_axis_tvalid   : in  std_logic;
      s_axis_tdata    : in  std_logic_vector(WIDTH-1 downto 0);
      s_axis_tlast    : in  std_logic;
      s_axis_tready   : out std_logic;
      rst_output      : out std_logic;
      reg_array       : out std_logic_vector(WIDTH*NUM_REG-1 downto 0);
      reg_array_valid : out std_logic);
  end component;

  -- component generics
  constant G_RESET_ACTIVE : std_logic := '1';
  constant NUM_RST_CYCLE  : integer   := 5;
  constant WIDTH          : integer   := 32;
  constant NUM_REG        : integer   := 3;

  -- component ports
  signal clk             : std_logic := '0';
  signal rst             : std_logic;
  signal s_axis_tvalid   : std_logic;
  signal s_axis_tdata    : std_logic_vector(WIDTH-1 downto 0);
  signal s_axis_tlast    : std_logic;
  signal s_axis_tready   : std_logic;
  signal rst_output      : std_logic;
  signal reg_array       : std_logic_vector(WIDTH*NUM_REG-1 downto 0);
  signal reg_array_valid : std_logic;

  -- clock period definition
  constant clk_period : time := 10 ns;


begin  -- behavioral

  -- component instantiation
  DUT: AxiSlv
    generic map (
      G_RESET_ACTIVE => G_RESET_ACTIVE,
      NUM_RST_CYCLE  => NUM_RST_CYCLE,
      WIDTH          => WIDTH,
      NUM_REG        => NUM_REG)
    port map (
      clk             => clk,
      rst             => rst,
      s_axis_tvalid   => s_axis_tvalid,
      s_axis_tdata    => s_axis_tdata,
      s_axis_tlast    => s_axis_tlast,
      s_axis_tready   => s_axis_tready,
      rst_output      => rst_output,
      reg_array       => reg_array,
      reg_array_valid => reg_array_valid);

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
    --! @details Activating rst_output, first s_axis_tdata = 0x00000001 
    -------------------------------------------------------------------------------
    --! @details Transaction 1 starts
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(1, 32));
    wait for clk_period;
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

    -------------------------------------------------------------------------------                                        
    --! @brief Transaction 2 --> Sending valid "s_axis_tdata" right after each other
    --! @details Desactivating rst_output, first s_axis_tdata = 0x00000000
    -------------------------------------------------------------------------------
    --! @details Transaction 2 starts
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(0, 32));
    wait for clk_period;
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

    -------------------------------------------------------------------------------                                        
    --! @brief Transaction 3 --> Transaction spplited into two chunks
    --! @details Activating rst_output, first s_axis_tdata = 0x00000001
    -------------------------------------------------------------------------------                                        
    --! @details Transaction 3 starts
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(1, 32));  
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(15, 32));
    wait for clk_period;

    --! @details Valid signal toggled
    s_axis_tvalid <= '0';
    wait for 3*clk_period;

    --! @details Valid data again
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(15, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(15, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    --! @details Transaction 3 ends
    -------------------------------------------------------------------------------                                        

     -- Waiting for 8 clk_period for next transaction
    wait for 8*clk_period;

    -------------------------------------------------------------------------------                                        
    --! @brief Transaction 4 --> Transaction spplited and glitches in between
    --! @details Activating rst_output, first s_axis_tdata = 0x00000001
    -------------------------------------------------------------------------------                                        
    --! @details Transaction 4 starts
    
    -- Data with a first glitch
    s_axis_tvalid <= '0';
    s_axis_tdata  <= std_logic_vector(to_unsigned(1, 32));
    wait for clk_period/2;
    s_axis_tvalid <= '1';
    wait for clk_period/2;

    -- Loading first valid data to activate rst_output
    wait for clk_period;
    s_axis_tvalid <= '0';
    wait for 3*clk_period;
    

    -- Continue with the stream
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(127, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(31, 32));
    wait for clk_period;

    -- Second glitch
    s_axis_tvalid <= '0';
    s_axis_tdata  <= std_logic_vector(to_unsigned(255, 32));
    wait for clk_period/2;
    s_axis_tvalid <= '1';
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for 2*clk_period;
    s_axis_tvalid <= '1';
    wait for clk_period;
    s_axis_tvalid <= '0';
    --! @details Transaction 4 ends
    -------------------------------------------------------------------------------                                        

    -- Waiting for 8 clk_period for next transaction
    wait for 8*clk_period;

    -------------------------------------------------------------------------------                                        
    --! @brief Transaction 5 --> Glitches everywhere there is no valid data loaded
    --! @details Activating rst_output, first s_axis_tdata = 0x00000001
    -------------------------------------------------------------------------------                                        
    --! @details Transaction 5 starts
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(1, 32));
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for 3*clk_period;

    -- Glitch
    s_axis_tvalid <= '1';
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for clk_period/2;

    -- Glitch
    s_axis_tvalid <= '1';
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for clk_period/2;

    -- Glitch
    s_axis_tvalid <= '1';
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for clk_period/2;

    -- Glitch
    s_axis_tvalid <= '1';
    wait for clk_period/2;
    s_axis_tvalid <= '0';
    wait for clk_period/2;

    -- Waiting for 8 clk_period for remaining data
    wait for 6*clk_period;
    
    -- Remaining data
    s_axis_tvalid <= '1';
    s_axis_tdata  <= std_logic_vector(to_unsigned(31, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(1023, 32));
    wait for clk_period;
    s_axis_tdata  <= std_logic_vector(to_unsigned(255, 32));
    wait for clk_period;
    s_axis_tvalid <= '0';
    --! @details Transaction 5 ends
    -------------------------------------------------------------------------------                                        

    wait;
  end process WaveGen_Proc;

end behavioral;

