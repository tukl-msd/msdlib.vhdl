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

entity denorm_unit is
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

end denorm_unit;

architecture sim of denorm_unit is
  
      --internal signals
  
      -- FSM for denorm_unit  
      type denorm_states is (IDLE, FINISH);
        signal denorm_data : denorm_states;
  
  
      --signals for update exponent and mantissa bits
      --signal for sign bit
      signal s_data : std_logic;
  
      --valid in
      signal valid_d1 : std_logic;
  
      --flag status
      signal flag_int : std_logic_vector(1 downto 0);
  
      --data in
      signal temp_data  : std_logic_vector(EXP+MANT downto 0);
  
      --data out
      signal data_out   : std_logic_vector(EXP+MANT downto 0); 
  
      --exponent  
      signal exp_data:std_logic_vector(EXP-1 downto 0);
  
      --mantissa
      signal man_data:std_logic_vector(MANT downto 0);
      
      --ready out
      signal ready_denorm:std_logic;
      
      --valid_out
      signal valid_denorm:std_logic;
      
  
  
      ----component instantiation---------------
      
      component lzc_shifter is
        
        port ( 
          
              aclk: in std_logic;
              aresetn: in std_logic;
              ready_in: in std_logic;
              
              --Data in interface
              valid_in: in std_logic;
              sign_data: in std_logic;
              flag_in: in std_logic_vector(1 downto 0);
              exp_data:in std_logic_vector(EXP-1 downto 0);
              man_data:in std_logic_vector(MANT downto 0);
              
              --Data out interface
              ready_out: out std_logic;
              valid_out:out std_logic;
              output_tdata : out  std_logic_vector(EXP+MANT downto 0)
              
          );
          
      end component;

  
begin
  
      pr_data:process(aclk, aresetn) is
        begin
          if aresetn='0' then
            denorm_data<=IDLE;
          elsif (aclk'event and aclk='1') then
            case denorm_data is        
            when IDLE=>       
              if s_axis_input_tvalid='1' and s_axis_input_tflag="11" then
                flag_int<=s_axis_input_tflag;
                valid_d1<=s_axis_input_tvalid;
                s_data<=s_axis_input_tdata(BIT_WIDTH-1);
                exp_data<=s_axis_input_tdata(BIT_WIDTH-2 downto MANT+1)&'1'; 
                man_data<='0'& s_axis_input_tdata(MANT-1 downto 0); 
                denorm_data<=FINISH;
              elsif s_axis_input_tvalid='1' or s_axis_input_tflag="10" then
                denorm_data<=IDLE;
              else
                denorm_data<=IDLE;
              end if;
            
            when FINISH=>
              valid_d1<='0';
              s_data<='X';
              exp_data<=(others=>'X');
              man_data<=(others=>'X');
              
              denorm_data<=IDLE;
                            
            end case;
          end if;
        end process pr_data;
  
          
    i_lzc: lzc_shifter
      port map ( 
      
                aclk    =>  aclk,
                aresetn =>  aresetn,
                
                --Data in interface
                ready_in    =>  m_axis_output_tready,
                flag_in     =>  flag_int,
                valid_in    =>  valid_d1,
                sign_data   =>  s_data,
                exp_data    =>  exp_data,
                man_data    =>  man_data,
                
                --Data out interface
                ready_out   =>  s_axis_input_tready,
                valid_out   =>  m_axis_output_tvalid,
                output_tdata=>  m_axis_output_tdata
               );     
end SIM;
