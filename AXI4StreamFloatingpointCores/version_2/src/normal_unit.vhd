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

entity normal_unit is
  
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
    
end normal_unit;

architecture SIM of normal_unit is
  
  
      --internal signals
  
      --signals for data in
      signal temp_data: std_logic_vector(EXP+MANT downto 0);
      
      --signals for valid in
      signal temp_valid: std_logic;
      
      --signals for flag status
      signal flag_d1:std_logic_vector(1 downto 0);
      
      --signals for data out
      signal out_data: std_logic_vector(EXP+MANT downto 0);
      
      --signals for valid out
      signal out_valid: std_logic;
      
      ----signals for ready out
      signal fifo_ready:std_logic;
      signal out_ready: std_logic;
      
      --FSM for Normal unit
  
      type normal_fsm is (IDLE,FINISH);
        signal normal_data:normal_fsm; 
    
      
      --component instantiation
      component axi_fifo is
  
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
            
      end component;
  
      component norm_pipeline is
    
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
        
            
      end component;
    
    

begin
  
      s_axis_input_tready<=fifo_ready;
  
      pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          normal_data<=IDLE;
        elsif (aclk'event and aclk='1') then
          case normal_data is
          when IDLE=>
            if s_axis_input_tvalid='1' and s_axis_input_tflag="10" then
              normal_data<=FINISH;
              temp_data<=s_axis_input_tdata;
              temp_valid<=s_axis_input_tvalid;
            else
              normal_data<=IDLE;
            end if;
            
          when FINISH=>
            temp_valid<='0';
            temp_data<= (others=>'X');
            normal_data<=IDLE;
                    
        end case;
      end if;
    end process pr_data;
    
    
    ---------------------port mapping--------------------
    
    i_axis:axi_fifo
      
      port map ( 
      
                  aclk     =>  aclk,
                  aresetn  =>  aresetn,
                  
                  --Data in interface
                  m_axis_output_tready  =>  out_ready,
                  s_axis_input_tdata    =>  temp_data,
                  s_axis_input_tvalid   =>  temp_valid,
                  
                  --Data out interface
                  m_axis_output_tvalid  =>  out_valid,
                  s_axis_input_tready   =>  fifo_ready,
                  m_axis_output_tdata   =>  out_data
               );
               
               
    i_norm:norm_pipeline
      
      port map ( 
      
                  aclk          =>  aclk,
                  aresetn       =>  aresetn,
                  
                  --Data in interface
                  s_axis_input_tvalid   =>  out_valid,
                  s_axis_input_tready   =>  out_ready,                  
                  s_axis_input_tdata    =>  out_data,
                  
                  --Data out interface
                  m_axis_output_tready  =>  m_axis_output_tready,
                  m_axis_output_tvalid  =>  m_axis_output_tvalid,                  
                  m_axis_output_tdata   =>  m_axis_output_tdata
               );
                               
    
end SIM;