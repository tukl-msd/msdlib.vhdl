library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


use work.pkg_global.all;
use work.pkg_component.all;



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

entity top_level is
  
    port (
        
            aclk                  : in  std_logic;
            aresetn               : in  std_logic;
        
            --Data in interface
            s_axis_input_tvalid1  : in  std_logic;
            s_axis_input_tvalid2  : in  std_logic;
            s_axis_input_tdata1   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tdata2   : in  std_logic_vector(EXP+MANT downto 0);
            s_axis_input_tready1  : out std_logic;
            s_axis_input_tready2  : out std_logic;       
        
            --Data out interface
            m_axis_output_tready  : in  std_logic;
            m_axis_output_tvalid  : out std_logic;
            m_axis_output_tdata   : out std_logic_vector(EXP+MANT downto 0)
            
          );
    
end top_level;

architecture SIM of top_level is


      signal flopoco_result:std_logic_vector(2+EXP+MANT downto 0);

      --signals for data stall unit
      signal output_stall1  : std_logic_vector(EXP+MANT downto 0);
      signal output_stall2  : std_logic_vector(EXP+MANT downto 0);
      signal valid_stall1   : std_logic;
      signal valid_stall2   : std_logic;

      --signal detection
      signal output_det1    : std_logic_vector(EXP+MANT downto 0);
      signal output_det2    : std_logic_vector(EXP+MANT downto 0);
      signal flag_det1      : std_logic_vector(1 downto 0);
      signal flag_det2      : std_logic_vector(1 downto 0);
      signal valid_det1     : std_logic;
      signal valid_det2     : std_logic;
      signal ready_det1     : std_logic;
      signal ready_det2     : std_logic;


      --signal for extend unit
      signal output_extend1 : std_logic_vector(2+EXP+MANT downto 0);
      signal output_extend2 : std_logic_vector(2+EXP+MANT downto 0);
      signal ready_extend1  : std_logic;
      signal ready_extend2  : std_logic;
      signal valid_extend1  : std_logic;
      signal valid_extend2  : std_logic;

      --signal for downsize unit
      signal ready_downsize : std_logic;

      --signal for fifo unit
      signal fifo_valid     : std_logic;

      
      --signal for convert unit
      signal valid_convert1 : std_logic;
      signal ready_convert1 : std_logic;
      signal valid_convert2 : std_logic;
      signal ready_convert2 : std_logic;
      signal out_convert1   : std_logic_vector(EXP+MANT downto 0);
      signal out_convert2   : std_logic_vector(EXP+MANT downto 0);


      --signal for forward unit
      signal valid_forward1 : std_logic;
      signal valid_forward2 : std_logic;
      signal ready_forward1 : std_logic;
      signal ready_forward2 : std_logic;
      signal forward_out1   : std_logic_vector(EXP+MANT downto 0);
      signal forward_out2   : std_logic_vector(EXP+MANT downto 0);

      --signal for transform unit
      signal valid_transform1 : std_logic;
      signal valid_transform2 : std_logic;
      signal ready_transform1 : std_logic;
      signal ready_transform2 : std_logic;
      signal out_transform1   : std_logic_vector(EXP+MANT downto 0);
      signal out_transform2   : std_logic_vector(EXP+MANT downto 0);


begin
  
      -----------------------------port mapping----------------------------------
        
      i_datastall:data_stall
        
        port map ( 
    
                    aclk     =>  aclk,
                    aresetn  =>  aresetn,
               
                    --Data in interface
                    s_axis_input_tvalid1   =>  s_axis_input_tvalid1,
                    s_axis_input_tvalid2   =>  s_axis_input_tvalid2,
                    s_axis_input_tdata1    =>  s_axis_input_tdata1,
                    s_axis_input_tdata2    =>  s_axis_input_tdata2,
                    s_axis_input_tready1   =>  s_axis_input_tready1,
                    s_axis_input_tready2   =>  s_axis_input_tready2,
               
                    --Data out interface
                    m_axis_output_tvalid1  =>  valid_stall1,
                    m_axis_output_tvalid2  =>  valid_stall2,
                    m_axis_output_tready1  =>  ready_det1,
                    m_axis_output_tready2  =>  ready_det2,
                    m_axis_output_tdata1   =>  output_stall1,
                    m_axis_output_tdata2   =>  output_stall2
             
                  );
    
      --detect unit 1           
      
      i_detect_1:type_detect
        
        port map ( 
    
                    aclk      =>  aclk,
                    aresetn   =>  aresetn,
                
                    --Data in interface
                    s_axis_input_tvalid   =>  valid_stall1,
                    s_axis_input_tdata    =>  output_stall1,
                    s_axis_input_tready   =>  ready_det1,
                
                    --Data out interface
                    m_axis_output_tvalid  =>  valid_det1,
                    m_axis_output_tready  =>  ready_transform1,                
                    m_axis_output_tflag   =>  flag_det1,
                    m_axis_output_tdata   =>  output_det1
                
                  );
                  
                  
      --detect unit 2                            
      
      i_detect_2:type_detect
        
        port map ( 
    
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                
                    --Data in interface                
                    s_axis_input_tvalid   =>  valid_stall2,
                    s_axis_input_tready   =>  ready_det2,
                    s_axis_input_tdata    =>  output_stall2,
                
                    --Data out interface
                    m_axis_output_tvalid  =>  valid_det2,
                    m_axis_output_tready  =>  ready_transform2,
                    m_axis_output_tflag   =>  flag_det2,
                    m_axis_output_tdata   =>  output_det2
                
                  );
                  
      --transform unit 1 
               
      i_transform1:transform_unit
        
        port map ( 
    
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                
                    --Data in interface
                    s_axis_input_tready   =>  ready_transform1,
                    s_axis_input_tflag    =>  flag_det1,
                    s_axis_input_tvalid   =>  valid_det1,
                    s_axis_input_tdata    =>  output_det1,
                
                    --Data out interface
                    m_axis_output_tready  =>  ready_forward1,
                    m_axis_output_tvalid  =>  valid_transform1,
                    m_axis_output_tdata   =>  out_transform1
              
                  );
                  
      --transform unit 2
      
      i_transform2:transform_unit
        
        port map ( 
    
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                
                    --Data in interface
                    s_axis_input_tready   =>  ready_transform2,
                    s_axis_input_tflag    =>  flag_det2,
                    s_axis_input_tvalid   =>  valid_det2,
                    s_axis_input_tdata    =>  output_det2,
                
                    --Data out interface
                    m_axis_output_tready  =>  ready_forward2,
                    m_axis_output_tvalid  =>  valid_transform2,
                    m_axis_output_tdata   =>  out_transform2
                  
                  );
                  
                  
      --forward unit
                
      i_forward:forward_unit
        
        port map ( 
    
                    aclk      =>  aclk,
                    aresetn   =>  aresetn,
                
                    --Data in interface
                    s_axis_input_tvalid1   =>  valid_transform1,
                    s_axis_input_tvalid2   =>  valid_transform2,
                    s_axis_input_tdata1    =>  out_transform1,
                    s_axis_input_tdata2    =>  out_transform2,
                    s_axis_input_tready1   =>  ready_forward1,
                    s_axis_input_tready2   =>  ready_forward2,
               
                    --Data out interface
                    m_axis_output_tvalid1  =>  valid_forward1,
                    m_axis_output_tvalid2  =>  valid_forward2,
                    m_axis_output_tready1  =>  ready_extend1,
                    m_axis_output_tready2  =>  ready_extend2,
                    m_axis_output_tdata1   =>  forward_out1,
                    m_axis_output_tdata2   =>  forward_out2
             
                  );
      
      
      --extend unit 1    
      
      i_extend_1:data_extend
        
        port map (  
      
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                  
                    --Data in interface
                    s_axis_input_tdata    =>  forward_out1,
                    s_axis_input_tvalid   =>  valid_forward1,
                    s_axis_input_tready   =>  ready_extend1,
                  
                    --Data out interface
                    m_axis_output_tready  =>  ready_downsize,
                    m_axis_output_tvalid  =>  valid_extend1,
                    m_axis_output_tdata   =>  output_extend1
                
                  );
               
      
      --extend unit 2          
      
      i_extend_2:data_extend
      
        port map (  
      
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                  
                    --Data in interface
                    s_axis_input_tdata    =>  forward_out2,
                    s_axis_input_tvalid   =>  valid_forward2,
                    s_axis_input_tready   =>  ready_extend2,
                  
                    --Data out interface
                    m_axis_output_tready  =>  ready_downsize,
                    m_axis_output_tvalid  =>  valid_extend2,
                    m_axis_output_tdata   =>  output_extend2
                
                  );
                  
                  
      --valid fifo
      
      i_fifo: fifo
        
        port map (  
        
                    aclk    =>  aclk,
                    aresetn =>  aresetn, 
                    s_axis_input_tvalid1 =>  valid_extend1,
                    s_axis_input_tvalid2 =>  valid_extend2,
                    m_axis_output_tvalid =>  fifo_valid
                  
                  );
          
          
      --FloPoCo Unit
      
      --32 bit 
            
  --i_division_32: float_division
--      port map (  clk=> aclk,
--                  rst=>aresetn,
--                  X => output_extend1,
--                  Y => output_extend2,
--                  R => flopoco_result
--                );
                
  --64 bit
                
 i_division_64: float_division
      port map (  clk=> aclk,
                  rst=>aresetn,
                  X => output_extend1,
                  Y => output_extend2,
                  R => flopoco_result
                );
      
      
      --downsize unit
      
      i_downsize:data_downsize
        
        port map ( 
    
                    aclk    =>  aclk,
                    aresetn =>  aresetn,
                
                    --Data in interface
                    s_axis_input_tdata    =>  flopoco_result,
                    s_axis_input_tvalid   =>  fifo_valid,
                    s_axis_input_tready   =>  ready_downsize,
            
            
                    --Data out interface
                    m_axis_output_tvalid  =>  m_axis_output_tvalid,
                    m_axis_output_tready  =>  m_axis_output_tready,            
                    m_axis_output_tdata   =>  m_axis_output_tdata
              
                 );
                  
end SIM;