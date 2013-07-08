library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

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

entity type_detect is
  
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
            m_axis_output_tflag     : out std_logic_vector(1 downto 0);
            m_axis_output_tdata     : out std_logic_vector(EXP+MANT downto 0)
            
        );
            
end type_detect;

architecture SIM of type_detect is
  
  ------------internal signals--------------------------------
  
  --signal for exponent
  signal exp_data : std_logic_vector(EXP-1 downto 0);
  
  --signal for mantissa
  signal man_data : std_logic_vector(MANT-1 downto 0);
  
  --signal for exponent and mantissa zero
  signal exp_zero : std_logic;
  signal man_zero : std_logic;
  
  --signal for flag status
  signal flag_int : std_logic_vector(1 downto 0);
  
  --signal for temporary data
  signal temp_data  : std_logic_vector(EXP+MANT downto 0);
  signal temp_d1    : std_logic_vector(EXP+MANT downto 0);
  
  --FSM for detection unit
  type detection_states is (IDLE, NOFORW, FORW);
    signal data_type : detection_states;  
    
  
  
begin

    -------------------combinatorial process-------------------------
    
    exp_data  <=  temp_data(BIT_WIDTH-2 downto MANT);
    
    man_data  <=  temp_data(MANT-1 downto 0);
    
    exp_zero  <=  '1' when exp_data=(EXP-1 downto 0=>'0') else
                  '0';
                  
    man_zero  <=  '0' when man_data=(MANT-1 downto 0=>'0') else
                  '1';
                  
    flag_int  <=  "11" when (exp_zero='1' and man_zero='1') else
                  "10"; 
               
    ---------------------------------output---------------------------            
               
               
    m_axis_output_tdata   <=  temp_d1 when (data_type= FORW) else
                              (others=>'X');
                            
    m_axis_output_tvalid  <=  '1' when (data_type=FORW) else
                              '0';
      
    s_axis_input_tready   <=  '1' when (data_type=IDLE) else
                              '0';
      
    m_axis_output_tflag   <=  flag_int when (data_type= FORW) else
                              (others=>'X');
                              
                              
                              
                              
                              
    
    ------------sequential process----------------------------------
                
    pr_data:process(aclk, aresetn) is
    begin
      if aresetn='0' then
        data_type<=IDLE;
      elsif (aclk'event and aclk='1') then
        case data_type is
        when IDLE=>              
          if s_axis_input_tvalid='1' then
            data_type<=NOFORW;
            temp_data<=s_axis_input_tdata;  
          else
            data_type<=IDLE;
          end if;
          
        when NOFORW =>
          if m_axis_output_tready='1' then
            temp_d1<=temp_data;               
            data_type<=FORW;
          else
            temp_data<=temp_data;
            data_type<=NOFORW;
          end if;
          
        when FORW =>
          data_type<=IDLE;
          
        end case;
      end if;
    end process pr_data;      
             
  end SIM;
