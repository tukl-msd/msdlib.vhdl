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

entity trans_out is
    
      port (
        
              aclk                  : in  std_logic;
              aresetn               : in  std_logic;
        
              --Data in interface
              s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
              s_axis_input_tvalid   : in  std_logic;
              m_axis_output_tready  : in  std_logic;
              s_axis_input_tdata1   : in  std_logic_vector(EXP+MANT downto 0);
              s_axis_input_tdata2   : in  std_logic_vector(EXP+MANT downto 0);
              s_axis_input_tready1  : out std_logic;
              s_axis_input_tready2  : out std_logic;
              s_axis_input_tready3  : out std_logic;
              m_axis_output_tvalid  : out std_logic;
              m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
            
            );
    
end trans_out;

architecture SIM of trans_out is
  
      --internal signals
      
      --FSM for Transfrom out
      type trans_fsm is (IDLE,A, NORM,DENORM,NOFORW,NORM_1,FORW);
        signal out_trans:trans_fsm;
          
      --ready signals for normal and denormal
      signal ready_d2 : std_logic;
      signal ready_d3 : std_logic;
      
      --flag status
      signal flag_d1  : std_logic_vector(1 downto 0);
      
      --internal register
      signal temp_data  : std_logic_vector(EXP+MANT downto 0);
      signal temp_d1    : std_logic_vector(EXP+MANT downto 0);
      signal temp_data2 : std_logic_vector(EXP+MANT downto 0);
      signal temp_d2    : std_logic_vector(EXP+MANT downto 0);
          
      --valid data          
      signal valid_d1:std_logic;
          
begin
  
      
      
      
      -----------------------output-----------------------------------
          
      s_axis_input_tready1  <=  '1' when (out_trans=IDLE) else
                                '0';
                                
      s_axis_input_tready2  <=  ready_d2;
      
      s_axis_input_tready3  <=  ready_d3;
      
      
      m_axis_output_tdata   <=  temp_data when (out_trans=FORW) else
                                (others=>'X');
                                
      m_axis_output_tvalid  <=  '1' when (out_trans=FORW) else
                                '0';  
                                
      -----------------------------------------------------------------                      
          
          
      pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          out_trans<=IDLE;
        elsif (aclk'event and aclk='1') then
          case out_trans is        
          when IDLE=>
            flag_d1<=s_axis_input_tflag;
            out_trans<=A;
                              
          when A=>
            
            if flag_d1="11" then
              ready_d2<='0';
              ready_d3<='1';
              out_trans<=DENORM;
            elsif flag_d1="10" then
              ready_d2<='1';
              ready_d3<='0';
              out_trans<=NORM;
            else
              out_trans<=IDLE;
            end if;
              
          when DENORM=>
            
            valid_d1  <=  s_axis_input_tvalid;
            temp_d1   <=  s_axis_input_tdata1;
            if valid_d1='1' then
              temp_d2<=temp_d1;
              ready_d3<='0';                    
              out_trans<=NOFORW;
            else
              out_trans<=DENORM;
            end if;
              
          when NORM=>
            
            ready_d2<='0';
            out_trans<=NORM_1;
                          
          when NORM_1=>
            
            temp_d2<=s_axis_input_tdata2;
            out_trans<=NOFORW;
              
          when NOFORW=>
              if m_axis_output_tready='1' then
                temp_data<=temp_d2;                
                out_trans<=FORW;
              else
                temp_d2<=temp_d2;                
                out_trans<=NOFORW;
              end if;
              
                         
            
              
            when FORW=>
              temp_d2<=(others=>'X');
              out_trans<=IDLE;
              
                
                    
            end case;
          end if;
        end process pr_data;
  
end SIM;