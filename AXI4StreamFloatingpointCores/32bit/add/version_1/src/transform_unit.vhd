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

entity transform_unit is
    
    port (
        
            aclk                  : in  std_logic;
            aresetn               : in  std_logic;
        
            --Data in interface
            s_axis_input_tready   : out std_logic;
            s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
            s_axis_input_tvalid   : in  std_logic;
            s_axis_input_wait_in  : in  std_logic;
            s_axis_input_tdata    : in  std_logic_vector(EXP+MANT downto 0);
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;            
            m_axis_output_wait_out: out std_logic;
            m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
       );
    
end transform_unit;



architecture SIM of transform_unit is
  
  
      --component instantiation
      component denorm_unit is
    
          port (
      
                  aclk: in std_logic;
                  aresetn: in std_logic;
            
                  --Data in
                  s_axis_input_tvalid   : in std_logic;
                  m_axis_output_tready  : in std_logic;
                  s_axis_input_tflag    : in std_logic_vector(1 downto 0);
                  s_axis_input_tdata    : in std_logic_vector(EXP+MANT downto 0);
            
                  --Data out
                  m_axis_output_tvalid  : out std_logic;
                  s_axis_input_tready   : out std_logic;
                  m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
      
              );

      end component;
      
      
      --internal signals
      
      --FSM for transform unit
      type transform_fsm is (IDLE, NORM, SUBN,SB_1, FORW);
        signal data_transform:transform_fsm;
        
      --signal for valid_data from lzc shifter
      signal shift_valid   : std_logic;
      
      --denrom valid
      signal denorm_valid:std_logic;
      
      --ready out from shifter
      signal shift_ready:std_logic;
      
      --data in
      signal norm_data    : std_logic_vector(EXP+MANT downto 0);
      signal denorm_data  : std_logic_vector(EXP+MANT downto 0);
            
      --Data out
      signal data_out     : std_logic_vector(EXP+MANT downto 0);
      signal data_d1      : std_logic_vector(EXP+MANT downto 0);
      signal data_d2      : std_logic_vector(EXP+MANT downto 0);
      
      --flag status for denorm
      signal denorm_flag     : std_logic_vector(1 downto 0);



begin
  
  
  
      -------------------output--------------------------------
      
      m_axis_output_tdata   <=  data_out when (data_transform= FORW) else
                                (others=>'X');
      
      m_axis_output_tvalid  <=  '1' when (data_transform=FORW) else
                                '0';
      
      s_axis_input_tready   <=  '1' when (data_transform=IDLE) else
                                '0';


      
      
      --port mapping
        
      i_denorm: denorm_unit
        port map (
        
                    aclk      =>  aclk,
                    aresetn   =>  aresetn,
                    
                    --Data in
                    m_axis_output_tready  =>  m_axis_output_tready,
                    s_axis_input_tvalid   =>  denorm_valid,
                    s_axis_input_tflag    =>  denorm_flag,
                    s_axis_input_tdata    =>  denorm_data,
                    
                    --Data out
                    m_axis_output_tvalid  =>  shift_valid,
                    s_axis_input_tready   =>  shift_ready,
                    m_axis_output_tdata   =>  data_d1
                ); 


      --- sequential process  
    
      pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          data_transform<=IDLE;
        elsif (aclk'event and aclk='1') then
          case data_transform is
        
          when IDLE=>            
            if s_axis_input_tvalid='1' and s_axis_input_tflag="10" then
              m_axis_output_wait_out<='0';
              norm_data<=s_axis_input_tdata;
              data_transform<=NORM;
            elsif s_axis_input_tvalid='1' and s_axis_input_tflag="11" then
              denorm_valid<=s_axis_input_tvalid;
              denorm_flag<=s_axis_input_tflag;
              m_axis_output_wait_out<='1';              
              denorm_data<=s_axis_input_tdata;
              data_transform<=SUBN;
            else
              data_transform<=IDLE;
            end if;
          
          when NORM =>
            if s_axis_input_wait_in='0' and m_axis_output_tready='1' then
              data_out<=norm_data;              
              data_transform<=FORW;
            else
              norm_data<=norm_data;
              data_transform<=NORM;
            end if;
          
          when SUBN =>
            denorm_valid<='0';
            denorm_data<=(others=>'X');
            if shift_valid='1' then
              m_axis_output_wait_out<='0'; 
              data_d2<=data_d1;         
              data_transform<=SB_1;
            else
              data_transform<=SUBN; 
            end if;
            
          when SB_1 =>
            if m_axis_output_tready='1' then
              data_out<=data_d2;
              data_transform<=FORW;
            else
              data_d2<=data_d2;
              data_transform<=SB_1; 
            end if;
            
          when FORW =>     
              data_transform<=IDLE;
      
          end case;
        end if;
      end process pr_data;
            
end sim;
