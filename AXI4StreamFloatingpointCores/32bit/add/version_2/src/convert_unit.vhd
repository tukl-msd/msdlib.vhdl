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

entity convert_unit is
  
    port (
    
            aclk                  : in  std_logic;
            aresetn               : in  std_logic;
        
            --Data in interface
            s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
            s_axis_input_tvalid   : in  std_logic;
            s_axis_input_tready   : out std_logic;
            s_axis_input_tdata    : in  std_logic_vector(EXP+MANT downto 0);
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;
            m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
            
        );
    
end convert_unit;

architecture SIM of convert_unit is
  
        --FSM for convert unit
        type convert_fsm is (IDLE,FINISH);
          signal convert_data:convert_fsm;
    
        -----------------internal signals----------------------------
        
        --signal for data in
        signal temp_d1  : std_logic_vector(EXP+MANT downto 0);
        signal temp_d2  : std_logic_vector(EXP+MANT downto 0);
        signal temp_d3  : std_logic_vector(EXP+MANT downto 0);
        signal temp_d4  : std_logic_vector(EXP+MANT downto 0);
        
        --signal for enable signals from tester unit
        signal enable_1 : std_logic;
        signal enable_2 : std_logic;
        signal enable_3 : std_logic;
        signal enable_4 : std_logic;
            
        --signals for valid in
        signal valid_in1  : std_logic;
        signal valid_in2  : std_logic;
        signal valid_in3  : std_logic;
        signal valid_in4  : std_logic;
            
    
        --signal for flag status
        signal flag_in1 : std_logic_vector(1 downto 0);
        signal flag_in2 : std_logic_vector(1 downto 0);
        signal flag_in3 : std_logic_vector(1 downto 0);
        signal flag_in4 : std_logic_vector(1 downto 0);
    
        --signals for valid out
        signal valid_out1 : std_logic;
        signal valid_out2 : std_logic;
        signal valid_out3 : std_logic;
        signal valid_out4 : std_logic;
    
        --signal for data out
        signal data_out1  : std_logic_vector(EXP+MANT downto 0);
        signal data_out2  : std_logic_vector(EXP+MANT downto 0);
        signal data_out3  : std_logic_vector(EXP+MANT downto 0);
        signal data_out4  : std_logic_vector(EXP+MANT downto 0);
    
        -- signals for mux unit    
        signal mux_valid  : std_logic;
        signal mux_data   : std_logic_vector(EXP+MANT downto 0);
        signal mux_ready  : std_logic;
 
 
 
        --component instanstiations   
    
        component denorm is
  
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
    
        end component;
    
        component mux_unit is
  
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
    
        end component;
    

begin
  
        s_axis_input_tready<=mux_ready;
  
        denorm_1: denorm
          port map ( 
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      
                      --Data in interface
                      s_axis_input_tenable  =>  enable_1,
                      s_axis_input_tflag    =>  flag_in1,
                      s_axis_input_tdata    =>  temp_d1,
                      s_axis_input_tvalid   =>  valid_in1,
                      
                      --Data out interface
                      m_axis_output_tready  =>  mux_ready,
                      m_axis_output_tvalid  =>  valid_out1,
                      m_axis_output_tdata   =>  data_out1
                  
                  );
                  
               
        denorm_2: denorm
          port map ( 
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      
                      --Data in interface
                      s_axis_input_tenable  =>  enable_2,
                      s_axis_input_tflag    =>  flag_in2,
                      s_axis_input_tdata    =>  temp_d2,
                      s_axis_input_tvalid   =>  valid_in2,
                      
                      --Data out interface
                      m_axis_output_tready  =>  mux_ready,
                      m_axis_output_tvalid  =>  valid_out2,
                      m_axis_output_tdata   =>  data_out2
                  );
               
        denorm_3: denorm
          port map ( 
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      
                      --Data in interface
                      s_axis_input_tenable  =>  enable_3,
                      s_axis_input_tflag    =>  flag_in3,
                      s_axis_input_tdata    =>  temp_d3,
                      s_axis_input_tvalid   =>  valid_in3,
                      
                      --Data out interface
                      m_axis_output_tready  =>  mux_ready,
                      m_axis_output_tvalid  =>  valid_out3,
                      m_axis_output_tdata   =>  data_out3
                  );
               
        denorm_4: denorm
          port map ( 
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      
                      --Data in interface
                      s_axis_input_tenable  =>  enable_4,
                      s_axis_input_tflag    =>  flag_in4,
                      s_axis_input_tdata    =>  temp_d4,
                      s_axis_input_tvalid   =>  valid_in4,
                      
                      --Data out interface
                      m_axis_output_tready  =>  mux_ready,
                      m_axis_output_tvalid  =>  valid_out4,
                      m_axis_output_tdata   =>  data_out4
                  );
               
               
        i_mux:mux_unit
          port map ( 
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      
                      --Data in interface 
                      
                      s_axis_input_tdata1   =>  data_out1,
                      s_axis_input_tdata2   =>  data_out2,
                      s_axis_input_tdata3   =>  data_out3,
                      s_axis_input_tdata4   =>  data_out4,
                      s_axis_input_tvalid1  =>  valid_out1,
                      s_axis_input_tvalid2  =>  valid_out2,
                      s_axis_input_tvalid3  =>  valid_out3,
                      s_axis_input_tvalid4  =>  valid_out4,
                      s_axis_input_tready   =>  mux_ready,
                      
                      --Data out interface
                      m_axis_output_tready  =>  m_axis_output_tready,
                      m_axis_output_tvalid  =>  m_axis_output_tvalid,
                      m_axis_output_tdata   =>  m_axis_output_tdata
               
                  );
                  
                  
        --------------------------------------------------------------------------------------------------

             
             
        pr_data:process(aclk, aresetn) is
        begin
          if aresetn='0' then
            convert_data<=IDLE;
          elsif (aclk'event and aclk='1') then
            case convert_data is        
            when IDLE=>       
              if s_axis_input_tvalid='1' and s_axis_input_tflag="11" and enable_1='1' then    
                flag_in1<=s_axis_input_tflag;
                temp_d1<=s_axis_input_tdata;
                valid_in1<=s_axis_input_tvalid;
                convert_data<=FINISH;
              elsif s_axis_input_tvalid='1' and s_axis_input_tflag="11" and enable_2='1' then    
                flag_in2<=s_axis_input_tflag;
                temp_d2<=s_axis_input_tdata;
                valid_in2<=s_axis_input_tvalid;
                convert_data<=FINISH;
              elsif s_axis_input_tvalid='1' and s_axis_input_tflag="11" and enable_3='1' then    
                flag_in3<=s_axis_input_tflag;
                temp_d3<=s_axis_input_tdata;
                valid_in3<=s_axis_input_tvalid;
                convert_data<=FINISH;
              elsif s_axis_input_tvalid='1' and s_axis_input_tflag="11" and enable_4='1' then    
                flag_in4<=s_axis_input_tflag;
                temp_d4<=s_axis_input_tdata;
                valid_in4<=s_axis_input_tvalid;
                convert_data<=FINISH;
              elsif s_axis_input_tvalid='1' or s_axis_input_tflag="10" then
                convert_data<=IDLE;
              else
                convert_data<=IDLE;
              end if;
            
            when FINISH=>
              valid_in1<='0';
              valid_in2<='0';
              valid_in3<='0';
              valid_in4<='0';
              convert_data<=IDLE;
                            
            end case;
          end if;
        end process pr_data;

end SIM;