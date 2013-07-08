library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_global.all;



-----------------------------------------------------------------------
--
-- AXI Stream interface signals
--
-- S_AXIS_READY: Ready to accept data in
-- S_AXIS_DATA: Data in
-- S_AXIS_VALID: Data in is valid

-- M_AXIS_VALID: Data out is valid
-- M_AXIS_DATA: Data out
-- M_AXIS_READY: Connected slave device is ready to accept data out
--
-----------------------------------------------------------------------

entity mux_unit is
  
    port (
    
            aclk                  : in  std_logic;
            aresetn               : in  std_logic;
        
            --Data in interface            
            s_axis_input_tdata1   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tdata2   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tdata3   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tdata4   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tvalid1  : in  std_logic;
            s_axis_input_tvalid2  : in  std_logic;
            s_axis_input_tvalid3  : in  std_logic;
            s_axis_input_tvalid4  : in  std_logic;
            s_axis_input_tready   : out std_logic;
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;
            m_axis_output_tdata   : out std_logic_vector (EXP+MANT downto 0)
        );
    
end mux_unit;


architecture sim of mux_unit is
  
  
      --FSM for Mux Unit
      type mux_fsm is (IDLE, A_1, B_1, C_1, D_1, FORW_A, FORW_B, FORW_C, FORW_D);
      signal mux_data:mux_fsm;
  
      --internal signals
      --signals for data in
      signal temp_data1 : std_logic_vector(EXP+MANT downto 0);
      signal temp_d1    : std_logic_vector(EXP+MANT downto 0);
      signal temp_data2 : std_logic_vector(EXP+MANT downto 0);
      signal temp_d2    : std_logic_vector(EXP+MANT downto 0);
      signal temp_data3 : std_logic_vector(EXP+MANT downto 0);
      signal temp_d3    : std_logic_vector(EXP+MANT downto 0);
      signal temp_data4 : std_logic_vector(EXP+MANT downto 0);
      signal temp_d4    : std_logic_vector(EXP+MANT downto 0);
  
begin
  
  
      ---------------------output-----------------------------------------
      m_axis_output_tdata   <= temp_data1 when (mux_data=FORW_A) else
                               temp_data2 when (mux_data=FORW_B) else
                               temp_data3 when (mux_data=FORW_C) else
                               temp_data4 when (mux_data=FORW_D) else
                               (others=>'X');
                     
      m_axis_output_tvalid  <= '1' when (mux_data=FORW_A) else
                               '1' when (mux_data=FORW_B) else
                               '1' when (mux_data=FORW_C) else
                               '1' when (mux_data=FORW_D) else
                               '0';
                               
      s_axis_input_tready   <= '1' when (mux_data=IDLE) else
                               '0';
                               
                               
      --------------------------------------------------------------------
    
      pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          mux_data<=IDLE;
        elsif (aclk'event and aclk='1') then
        case mux_data is
        
          when IDLE=>     
            if s_axis_input_tvalid1='1' then    
              temp_d1<=s_axis_input_tdata1;               
              mux_data<=A_1;
            elsif s_axis_input_tvalid2='1' then   
              temp_d2<=s_axis_input_tdata2;
              mux_data<=B_1;
            elsif s_axis_input_tvalid3='1' then   
              temp_d3<=s_axis_input_tdata3;  
              mux_data<=C_1;
            elsif s_axis_input_tvalid4='1' then 
              temp_d4<=s_axis_input_tdata4;
              mux_data<=D_1;
            else 
              mux_data<=IDLE;
            end if;
            
          when A_1=>
            
            if m_axis_output_tready='1' then
              temp_data1<=temp_d1;
              mux_data<=FORW_A;
            else
              temp_d1<=temp_d1;
              mux_data<=A_1;
            end if;
          
          when B_1=>      
            
            if m_axis_output_tready='1' then
              temp_data2<=temp_d2;
              mux_data<=FORW_B;
            else
              temp_d2<=temp_d2;
              mux_data<=B_1;
            end if;            
          
          when C_1=>    
            
            if m_axis_output_tready='1' then             
              temp_data3<=temp_d3;
              mux_data<=FORW_C;
            else
              temp_d3<=temp_d3;
              mux_data<=C_1; 
            end if;
            
          when D_1=> 
            
            if m_axis_output_tready='1' then
              temp_data4<=temp_d4;
              mux_data<=FORW_D;
            else
              temp_d4<=temp_d4;
              mux_data<=D_1; 
            end if;
            
          when FORW_A=> 
            mux_data<=IDLE;
          
          when FORW_B=> 
            mux_data<=IDLE;
          
          when FORW_C=> 
            mux_data<=IDLE;
              
          when FORW_D=> 
            mux_data<=IDLE;
            
                           
          end case;
        end if;
      end process pr_data;
      
      
                     
end sim;
