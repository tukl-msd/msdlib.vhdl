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

entity denorm is
  
    port (
    
            aclk: in std_logic;
            aresetn: in std_logic;
            
            --Data in interface
            s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
            s_axis_input_tvalid   : in  std_logic;
            s_axis_input_tenable  : out std_logic;
            s_axis_input_tdata    : in  std_logic_vector(EXP+MANT downto 0);
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;
            m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
            
         );
    
end denorm;

architecture SIM of denorm is
  
  
      --component instantiations
  
      component lzc_shifter is
        port ( 
       
                aclk          : in  std_logic;
                aresetn       : in  std_logic;
                
                ready_in      : in  std_logic;
                valid_in      : in  std_logic;
                flag_in       : in  std_logic_vector(1 downto 0);
                sign_bit      : in  std_logic;
                exp_data      : in  std_logic_vector(EXP-1 downto 0);
                mant_data     : in  std_logic_vector(MANT downto 0);
                ready_out     : out std_logic;
                valid_out     : out std_logic;
                output_tdata  : out std_logic_vector(EXP+MANT downto 0)
            );
      
      end component;

      --FSM for tester unit
      type tester_fsm is (IDLE,FINISH);
        signal tester_data:tester_fsm;
        
      --internal signals
      --signal for enable
      signal enable_d1  : std_logic;
      
      --signal for valid in
      signal valid_d1 : std_logic;
      signal valid_d2 : std_logic;
      
      --signal for sign bit
      signal s_data : std_logic;
      
      --signal for flag status
      signal flag_d1  : std_logic_vector(1 downto 0);
      
      --signal for exponent
      signal exp_data : std_logic_vector(EXP-1 downto 0);
      
      --signal for mantissa
      signal man_data :  std_logic_vector(MANT downto 0);
      
      --signal for data out
      signal data_out :  std_logic_vector(EXP+MANT downto 0);
      
      
begin
    
    
      pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          tester_data<=IDLE;
        elsif (aclk'event and aclk='1') then
        case tester_data is
        
          when IDLE=>       --idle state
            
            if s_axis_input_tvalid='1' and s_axis_input_tflag="11" then
              flag_d1<=s_axis_input_tflag;
              valid_d1<=s_axis_input_tvalid;
              s_data<=s_axis_input_tdata(BIT_WIDTH-1);
              exp_data<=s_axis_input_tdata(BIT_WIDTH-2 downto MANT+1) & '1';
              man_data<='0' & s_axis_input_tdata(MANT-1 downto 0);
              tester_data<=FINISH;
            else
              tester_data<=IDLE;
            end if;
          
          when FINISH=>
            
            valid_d1<='0';            
            tester_data<=IDLE;
                            
          end case;
        end if;
      end process pr_data;
          
    
     i_shifter: lzc_shifter
      port map ( aclk=>aclk,
                 aresetn=>aresetn,
                 ready_in=>m_axis_output_tready,
                 valid_in=>valid_d1,
                 flag_in=>flag_d1,
                 sign_bit=>s_data,
                 exp_data=>exp_data,
                 mant_data=>man_data,
                 ready_out=>s_axis_input_tenable,
                 valid_out=>m_axis_output_tvalid,
                 output_tdata=>m_axis_output_tdata
                 );  
    
end SIM;
