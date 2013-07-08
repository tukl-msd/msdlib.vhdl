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

entity norm_pipeline is
    
    port (
        
            aclk                    : in  std_logic;
            aresetn                 : in  std_logic;
            
            --Data in interface
            s_axis_input_tvalid     : in  std_logic;
            s_axis_input_tdata      : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tready     : out std_logic;
            
            --Data out interface
            m_axis_output_tvalid    : out std_logic;
            m_axis_output_tready    : in  std_logic;
            m_axis_output_tdata     : out std_logic_vector(EXP+MANT downto 0)
            
          );
        
            
end norm_pipeline;

architecture SIM of norm_pipeline is
  
      --Internal signals
  
      --FSM for pipelining
      type norm_fsm is (IDLE, A, FORW);
        signal norm_data:norm_fsm;
  
  
      --signal for data in
      signal temp_data  : std_logic_vector(EXP+MANT downto 0);
      signal temp_d1    : std_logic_vector(EXP+MANT downto 0);
      
      
begin
  
  
      --------------------output------------------------------------
      
      m_axis_output_tdata   <=  temp_d1 when (norm_data=FORW) else
                                (others=>'X');
                     
      m_axis_output_tvalid  <=  '1' when (norm_data=FORW) else
                                '0';
      
      s_axis_input_tready   <=  '1' when (norm_data=IDLE) else
                                '0';
  
      ---------------------------------------------------------------
      
      
      pr_input:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          norm_data<=IDLE;
        elsif (aclk'event and aclk='1') then
          case norm_data is
        
            when IDLE=>     
              if s_axis_input_tvalid='1' then
                temp_data<=s_axis_input_tdata;               
                norm_data<=A;
              else 
                norm_data<=IDLE;
              end if;
            
            when A=>
              if m_axis_output_tready='1' then
                temp_d1<=temp_data;
                norm_data<=FORW;
              else
                temp_data<=temp_data;
                norm_data<=A;
              end if;
          
            when FORW=>            
              norm_data<=IDLE;
                                    
          end case;
        end if;
      end process pr_input;
      
      
       
end SIM;