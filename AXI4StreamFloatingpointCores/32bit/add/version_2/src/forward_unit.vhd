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

entity forward_unit is
    port (
    
            aclk                      : in  std_logic;
            aresetn                   : in  std_logic;
          
            --Data in interface
            s_axis_input_tvalid1      : in  std_logic;
            s_axis_input_tvalid2      : in  std_logic;
            s_axis_input_tdata1       : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tdata2       : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tready1      : out std_logic;
            s_axis_input_tready2      : out std_logic;
          
            --Data out interface
            m_axis_output_tvalid1     : out std_logic;
            m_axis_output_tvalid2     : out std_logic;
            m_axis_output_tdata1      : out std_logic_vector(EXP+MANT downto 0);
            m_axis_output_tdata2      : out std_logic_vector(EXP+MANT downto 0);
            m_axis_output_tready1     : in  std_logic;
            m_axis_output_tready2     : in  std_logic
          
        );
  
end forward_unit;    



architecture SIM of forward_unit is
  
          
      --FSM for Forward Unit
      type forward_state is (IDLE, PRO_A, PRO_B,BOTH,NOFORW, FORW);
        signal forward_data : forward_state;
    
    
      -----------------------------Internal signals-------------------
  
      --signal for input data
      signal d_temp1  : std_logic_vector(EXP+MANT downto 0);
      signal d_temp2  : std_logic_vector(EXP+MANT downto 0);
  
      --signal for output data
      signal data_out1  : std_logic_vector(EXP+MANT downto 0);
      signal data_out2  : std_logic_vector(EXP+MANT downto 0);
      signal data_out3  : std_logic_vector(EXP+MANT downto 0);  
      signal data_out4  : std_logic_vector(EXP+MANT downto 0);
      
      
begin
  
  
  
      ---------------------output----------------------------------
  
  
      m_axis_output_tdata1    <=  data_out3 when (forward_data= FORW) else
                                  (others=>'X');
              
      m_axis_output_tdata2    <=  data_out4 when (forward_data= FORW) else
                                  (others=>'X');
              
      m_axis_output_tvalid1   <=  '1' when (forward_data= FORW) else
                                  '0';
             
      m_axis_output_tvalid2   <=  '1' when (forward_data= FORW) else
                                  '0';
  
      s_axis_input_tready1    <=  '1' when (forward_data= IDLE) else
                                  '1' when (forward_data= PRO_B) else
                                  '0';
          
      s_axis_input_tready2    <=  '1' when (forward_data= IDLE) else
                                  '1' when (forward_data= PRO_A) else
                                  '0';
  
  
      ---------------------------------------------------- 
  
    
      pr_data : process (aclk, aresetn) is
      begin 
        if aresetn = '0' then
          forward_data <= IDLE;
        elsif (aclk'event and aclk = '1') then
          case forward_data is 
        
          when IDLE =>       
            if s_axis_input_tvalid1='1' and s_axis_input_tvalid2='1' then 
              forward_data <= BOTH;
              d_temp1<= s_axis_input_tdata1;
              d_temp2<= s_axis_input_tdata2;
            elsif s_axis_input_tvalid1= '1' and s_axis_input_tvalid2= '0' then
              d_temp1<=s_axis_input_tdata1;
              forward_data<= PRO_A;
            elsif s_axis_input_tvalid1='0' and s_axis_input_tvalid2='1' then
              d_temp2<= s_axis_input_tdata2;
              forward_data<= PRO_B;
            else
              forward_data <= IDLE;
            end if;         
         
          when BOTH =>
            data_out1<=d_temp1;
            data_out2<=d_temp2;           
            forward_data <= NOFORW;
                 
          when PRO_A => 
            if s_axis_input_tvalid2= '1' then 
              data_out1<=d_temp1;
              data_out2<=s_axis_input_tdata2;  
              forward_data <= NOFORW;
            else
              d_temp1 <= d_temp1;
              forward_data <= PRO_A;
            end if;
         
          when PRO_B => 
            if s_axis_input_tvalid1= '1' then
              data_out1<= s_axis_input_tdata1;
              data_out2<= d_temp2;             
              forward_data <= NOFORW;
            else
              d_temp2 <= d_temp2;
              forward_data <= PRO_B;
            end if;
         
          when NOFORW =>
            if m_axis_output_tready1= '1' and m_axis_output_tready2='1' then
              data_out3<=data_out1;
              data_out4<=data_out2;
              forward_data <= FORW;
            else
              data_out1<=data_out1;
              data_out2<=data_out2;    
              forward_data <= NOFORW;
            end if;
         
         when FORW =>              
            forward_data <= IDLE;
         
         end case;
       end if; 
     end process pr_data;
  
  
    
  end SIM;
