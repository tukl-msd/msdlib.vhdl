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
            s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
            s_axis_input_tvalid   : in  std_logic;
            s_axis_input_tready   : out std_logic;
            s_axis_input_tdata    : in  std_logic_vector(EXP+MANT downto 0);
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;
            m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
      );
    
end transform_unit;

architecture SIM of transform_unit is
  
        --flag fifo unit  
        component flag_fifo is
  
          port ( 
  
  
            aclk                    : in  std_logic;
            aresetn                 : in  std_logic;
            
            --Data in interface
            s_axis_input_tvalid     : in  std_logic;
            s_axis_input_tflag      : in  std_logic_vector(1 downto 0);
            s_axis_input_tready     : out std_logic;
            
            --Data out interface
            m_axis_output_tvalid    : out std_logic;
            m_axis_output_tready    : in  std_logic;
            m_axis_output_tflag     : out std_logic_vector(1 downto 0)   
            
        );
            
        end component;


        -- Normal Unit instantiation
        component normal_unit is
  
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
    
        end component;
  
        -- Subnormal Unit instantiation
        component convert_unit is
  
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
    
        end component;
        
        component trans_out is
    
            port (
              
                    aclk                  : in  std_logic;
                    aresetn               : in  std_logic;
        
                    --Data in interface
                    s_axis_input_tflag    : in  std_logic_vector(1 downto 0);
                    s_axis_input_tvalid   : in  std_logic;
                    s_axis_input_tdata1   : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tdata2   : in  std_logic_vector(EXP+MANT downto 0);
                    s_axis_input_tready1  : out std_logic;
                    s_axis_input_tready2  : out std_logic;
                    s_axis_input_tready3  : out std_logic;
                    
                    --Data out interface
                    m_axis_output_tready  : in  std_logic; 
                    m_axis_output_tvalid  : out std_logic;
                    m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
            
                  );
    
        end component;
        
        
        --FSM for Transfrom Unit
        type transform_fsm is (IDLE, FINISH);
          signal data_transform:transform_fsm;
          
          
        -----------internal signals------------------------------
        
        --signal for valid data
        signal valid_d1 : std_logic;
        signal valid_d2 : std_logic;
        
        --signal for data in
        signal temp_d1  : std_logic_vector(EXP+MANT downto 0);
        signal temp_d2  : std_logic_vector(EXP+MANT downto 0);
        
        --signal for data out
        signal data_out1  : std_logic_vector(EXP+MANT downto 0);
        signal data_out2  : std_logic_vector(EXP+MANT downto 0);
        
        --signal for flag status
        signal flag_d1  : std_logic_vector(1 downto 0);
        signal flag_d2  : std_logic_vector(1 downto 0);
        
        --signal for valid out
        signal out_valid1 : std_logic;
        signal out_valid2 : std_logic;
        --signal for ready out
        signal norm_ready   : std_logic;
        signal denorm_ready : std_logic;
        
        --signal for trans out
        signal trans_norm   : std_logic;
        signal trans_denorm : std_logic;
        signal ready_norm   : std_logic;
        
        --signal for flag unit
        signal flag_valid:std_logic;
        signal flag_ready   : std_logic;
        signal trans_flag:std_logic;
        signal flag_out:std_logic_vector(1 downto 0);
        
        --signal for fifo unit
        signal fifo_valid,valid_g1:std_logic;
        signal fifo_data:std_logic_vector(1 downto 0);
        signal flag_g1:std_logic_vector(1 downto 0);
        signal trans_tready:std_logic;
        
        
        
        ---------------------------------------------------------

begin
  
        --ready out 
        
        s_axis_input_tready   <=  denorm_ready and norm_ready and flag_ready;
        
        
        ------------------ sequential process--------------------------  
    
        pr_data:process(aclk, aresetn) is
        begin
          if aresetn='0' then
            data_transform<=IDLE;
          elsif (aclk'event and aclk='1') then
            case data_transform is        
            when IDLE=>            
              if s_axis_input_tvalid='1' and s_axis_input_tflag="10" then
                valid_d1<=s_axis_input_tvalid;
                flag_d1<=s_axis_input_tflag;
                temp_d1<=s_axis_input_tdata;
                data_transform<=FINISH;
              elsif s_axis_input_tvalid='1' and s_axis_input_tflag="11" then
                valid_d2<=s_axis_input_tvalid;
                flag_d2<=s_axis_input_tflag;
                temp_d2<=s_axis_input_tdata;
                data_transform<=FINISH;
              else
                data_transform<=IDLE;
              end if;
          
            when FINISH =>
              valid_d1<='0';
              valid_d2<='0';
              data_transform<=IDLE;
      
            end case;
          end if;
        end process pr_data;
        
        
        process (aclk)
          begin
            if aclk'event and aclk='1' then
              valid_g1<=s_axis_input_tvalid;
              flag_g1<=s_axis_input_tflag;
            end if;
          end process;
          
        
        
        
        --------------------- port mapping-------------------------------
          
        --FiFo  
        i_flag:flag_fifo
            port map ( 
                        aclk=>aclk,
                        aresetn=>aresetn,
                        
                        --Data in interface
                        s_axis_input_tvalid=>valid_g1,
                        s_axis_input_tflag=>flag_g1,
                        s_axis_input_tready=>flag_ready,
                        
                        --Data out interface
                        m_axis_output_tvalid=>flag_valid,
                        m_axis_output_tready=>trans_flag,
                        m_axis_output_tflag=>flag_out
                      );                         
  
        
        --Normal Unit
        i_norm: normal_unit
            
            port map ( 
            
                        aclk    =>  aclk,
                        aresetn =>  aresetn,
                        
                        --Data in interface
                        s_axis_input_tflag    =>  flag_d1,
                        s_axis_input_tready   =>  norm_ready,
                        s_axis_input_tdata    =>  temp_d1,
                        s_axis_input_tvalid   =>  valid_d1,
                        
                        --Data out interface
                        m_axis_output_tready  =>  trans_norm,
                        m_axis_output_tvalid  =>  out_valid1,
                        m_axis_output_tdata   =>  data_out1
                      
                    );
                      
        --Denormal Unit       
        i_denorm:convert_unit
            port map ( 
            
                        aclk    =>  aclk,
                        aresetn =>  aresetn,
                        
                        --Data in interface                        
                        s_axis_input_tflag    =>  flag_d2,
                        m_axis_output_tready  =>  trans_denorm,
                        s_axis_input_tdata    =>  temp_d2,
                        s_axis_input_tvalid   =>  valid_d2,
                        
                        --Data out interface
                        m_axis_output_tvalid  =>  out_valid2,
                        s_axis_input_tready   =>  denorm_ready,
                        m_axis_output_tdata   =>  data_out2
                      
                      );
                      
        --Transform Unit output                      
        i_trans:trans_out
            port map (
              
                       aclk   =>  aclk,
                       aresetn=>  aresetn,
                       
                       --Data in interface
                       s_axis_input_tflag     =>  flag_out,
                       s_axis_input_tvalid    =>  out_valid2,
                       s_axis_input_tdata1    =>  data_out2,
                       s_axis_input_tdata2    =>  data_out1,
                       s_axis_input_tready1   =>  trans_flag,
                       s_axis_input_tready2   =>  trans_norm,
                       s_axis_input_tready3   =>  trans_denorm,
                       
                       --Data in interface
                       m_axis_output_tready   =>  m_axis_output_tready,
                       m_axis_output_tvalid   =>  m_axis_output_tvalid,
                       m_axis_output_tdata    =>  m_axis_output_tdata
                      
                      );
                        
                           
end SIM;