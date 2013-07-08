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


entity data_downsize is
    
  port (
  
          aclk                    : in  std_logic;
          aresetn                 : in  std_logic;
          
          --Data in interface
          s_axis_input_tvalid     : in  std_logic;
          s_axis_input_tdata      : in  std_logic_vector(EXCP+EXP+MANT downto 0);
          s_axis_input_tready     : out std_logic;
            
          --Data out interface
          m_axis_output_tvalid    : out std_logic;
          m_axis_output_tready    : in  std_logic;
          m_axis_output_tdata     : out std_logic_vector(EXP+MANT downto 0)
  
        );
    
end data_downsize;

architecture SIM of data_downsize is
  
      --FSM for Downsize unit  
      type down_fsm is (IDLE,DOWN,NOFORW, FORW);
        signal down_data:down_fsm;
  
      --------------------------internal signals---------------------------
  
      --signal for input data
      signal data_in  : std_logic_vector(EXCP+EXP+MANT downto 0);
  
      --signal for exponent
      signal exp_data : std_logic_vector(EXP-1 downto 0);
  
      --signal for mantissa
      signal man_data : std_logic_vector(MANT-1 downto 0);
  
      --signal for exceptional bits
      signal ext  : std_logic_vector(1 downto 0);
  
      --signal for sign bit
      signal s_data : std_logic;
      signal s_d1   : std_logic;
  
      --signal for exponent zero
      signal exp_zero : std_logic;
  
      --signal for mantissa in
      signal man_in : std_logic_vector(MANT-1 downto 0);
  
      --signal for mantissa out
      signal man_out  : std_logic_vector(MANT-1 downto 0);
  
      --signal for exponent out
      signal exp_out  : std_logic_vector(EXP-1 downto 0);
  
      --signal for output data, temporary storage
      signal data_out   : std_logic_vector(EXP+MANT downto 0);
      signal temp_data  : std_logic_vector(EXP+MANT downto 0);
      signal temp_d1    : std_logic_vector(EXP+MANT downto 0);
  
  begin
    
      
      --------------------combinotrial logic------------------------------
    
      s_data    <=  data_in(BIT_WIDTH-1);
      ext       <=  data_in(BIT_WIDTH+1 downto BIT_WIDTH);
      exp_data  <=  data_in(BIT_WIDTH-2 downto MANT);
      man_data  <=  data_in(MANT-1 downto 0);     
    
      s_d1      <=  s_data when (ext="01" or ext="10" or ext="00") else 
                    '0';
      exp_zero  <=  '1' when exp_data=(EXP-1 downto 0 =>'0') else 
                    '0';
      man_in    <=  (MANT-1 downto 0 =>'0') when (ext="00" or ext="10") else 
                    man_data when (ext="01") else
                    (MANT-1 downto 1 =>'0') & ext(0);
      man_out   <=  man_in;
      exp_out   <= (EXP-1 downto 0 =>'0') when (ext="00") else
                    exp_data when (ext="01") else
                   (EXP-1 downto 0 =>'1');
               
      data_out  <=  s_data & exp_out & man_out;
    
    ---------------------------------------------------------------------
    
    ------------------------------output---------------------------------
    
    m_axis_output_tdata   <=  temp_d1 when (down_data= FORW) else
                              (others=>'X');
      
    m_axis_output_tvalid  <=  '1' when (down_data=FORW) else
                              '0';
      
    s_axis_input_tready   <=  '1' when (down_data=IDLE) else
                              '0';
      
    
               
    ----------------------sequential logic------------------------------
    
    pr_data:process(aclk, aresetn) is
      begin
        if aresetn='0' then
          down_data<=IDLE;
        elsif (aclk'event and aclk='1') then
          case down_data is
                          
            when IDLE=>
              if s_axis_input_tvalid='1' then
                down_data<=DOWN;
                data_in<=s_axis_input_tdata;
              else
                down_data<=IDLE;
              end if;
              
            when DOWN =>
              temp_data<=data_out;
              down_data<= NOFORW;
          
            when NOFORW =>
              if m_axis_output_tready='1' then
                temp_d1<=temp_data;
                down_data<=FORW;
              else
                temp_data<=temp_data;          
                down_data<=NOFORW;         
              end if;
              
            when FORW =>
              down_data<=IDLE;         
              
            end case;
          end if;
      end process pr_data;
      
    
               
end sim;
