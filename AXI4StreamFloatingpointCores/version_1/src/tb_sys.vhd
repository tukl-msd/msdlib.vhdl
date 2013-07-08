library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

use work.pkg_global.all;


entity tb_sys is 
 
end tb_sys;

architecture SIM of tb_sys is
  
      --internal signals
      signal aclk   : std_logic;
      signal aresetn: std_logic;
      
      --data in 1
      signal input_data1  : std_logic_vector(EXP+MANT downto 0);
      
      --data in 2
      signal input_data2  : std_logic_vector(EXP+MANT downto 0);
      
      --valid input 1
      signal valid_in1    : std_logic;
      
      --valid input 2
      signal valid_in2    : std_logic;
      
      --slave ready
      signal slave_ready  : std_logic;
      
      --output data
      signal output_data  : std_logic_vector(EXP+MANT downto 0);
      
      --output valid
      signal valid_out    : std_logic;
      
      --stall signal
      signal stall_a      : std_logic;
      signal stall_b      : std_logic;
      signal slave_ready1 : std_logic;
      signal slave_ready2 : std_logic;

 
      
      
      -- top level component
      component top_level is
  
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
                m_axis_output_tdata   : out std_logic_vector (EXP+MANT downto 0)
            
            );
    
      end component;
      
      --file read component

      component file_read is
  
          generic (
           
                    READ_FL : string := "input_stream1.txt"
                  );
  
          port (
          
                  aclk    : in  std_logic;
                  aresetn : in  std_logic;  
                  ready_in      : in  std_logic;
                  valid_out     : out std_logic;
                  output_tdata  : out std_logic_vector (EXP+MANT downto 0)
                  
              );
    
      end component;
      
      
      --write file component
      
      component file_write is
  
          generic (
    
                    WRITE_FL: string:= "output_stream.txt"
                  );
      
          port (
            
                  aclk    : in  std_logic;
                  aresetn : in  std_logic;   
                  input_tvalid   : in std_logic;
                  input_tdata    : in std_logic_vector(EXP+MANT downto 0);
                  slave_tready   : out  std_logic
                  
              );
  
      end component;
      
      

begin
  
      ---------------------port mapping--------------------------
        
         
     read_1:file_read generic map (READ_FL=> "input_stream1.txt")
      
          port map ( 
          
                      aclk          =>  aclk,
                      aresetn       =>  aresetn,
                      ready_in      =>  stall_a,
                      valid_out     =>  valid_in1,
                      output_tdata  =>  input_data1
              
                  );
   
    
    
      read_2: file_read generic map (READ_FL=> "input_stream2.txt")
      
          port map (  
          
                      aclk          =>  aclk, 
                      aresetn       =>  aresetn,
                      ready_in      =>  stall_b,
                      valid_out     =>  valid_in2,
                      output_tdata  =>  input_data2
                  );
                
                
      top_design: top_level
       
          port map ( 
          
                      aclk    =>  aclk, 
                      aresetn =>  aresetn,
                      
                      --Data in interface
                      s_axis_input_tready1  =>  stall_a,
                      s_axis_input_tready2  =>  stall_b,
                      s_axis_input_tvalid1  =>  valid_in1,
                      s_axis_input_tvalid2  =>  valid_in2,
                      s_axis_input_tdata1   =>  input_data1,
                      s_axis_input_tdata2   =>  input_data2,
                      
                      --Data out interface
                      m_axis_output_tvalid  =>  valid_out,
                      m_axis_output_tdata   =>  output_data,
                      m_axis_output_tready  =>  slave_ready
                  
                  );
                  
              
      output_write:file_write generic map(WRITE_FL=> "output_stream.txt")
      
          port map (  
          
                      aclk    =>  aclk,
                      aresetn =>  aresetn,
                      input_tvalid  =>  valid_out,
                      input_tdata   =>  output_data,
                      slave_tready  =>  slave_ready
                  );
                  
       ---------------------------------------------------------------------
       
       --Reset Process
       
       pr_reset : process
       begin
         aresetn<='0';
         wait for 3.33 ns;
         aresetn<='1';
         wait;
       end process pr_reset;
       
       
       --Clock Process
       
       pr_clock : process  
       begin
         aclk <= '0';
         wait for 3.33 ns;
         aclk <= '1';
         wait for 3.33 ns;	
       end process pr_clock;
       
end SIM;