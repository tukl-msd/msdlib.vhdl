library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_global.all;


entity  fifo is
  
  port (
          
          aclk                 : in  std_logic;
          aresetn              : in  std_logic;
          s_axis_input_tvalid1 : in  std_logic;
          s_axis_input_tvalid2 : in  std_logic;
          m_axis_output_tvalid : out std_logic
        );
        
end fifo;

architecture SIM of fifo is
 
    --Internal signals
    
    --signal for valid 1
    signal valid_d1 : std_logic;
    
    --signal for valid 2
    signal valid_d2 : std_logic;
    
    --signal for replication
    signal valid_gen  : std_logic_vector(1 to DIV_FIFO);
 
    
    
    component valid_buffer is 
      
      port ( 
      
              aclk  : in std_logic;
              input : in std_logic;
              output: out std_logic
            );
    end component; 

begin  
              
    --valid signal
    valid_d1  <=  '1' when (s_axis_input_tvalid1='1' and s_axis_input_tvalid2='1') else 
                  '0';
   
    m_axis_output_tvalid <=  valid_d2;
  

    ----------------------------------------------------
      ---***********Generate Sequence***************---
    ----------------------------------------------------  
  
    G1:for i IN 1 to DIV_FIFO generate
    begin
      
      buffer_left: if i=1 generate
        begin
          i_buffer:valid_buffer
            port map( 
            
                      aclk  =>  aclk,
                      input =>  valid_d1,
                      output=>  valid_gen(i)
                    );
        end generate buffer_left;
             
      buffer_others: if ((i>1) and (i<DIV_FIFO)) generate 
        begin
          i_buffer:valid_buffer
            port map( 
            
                      aclk  =>  aclk,
                      input =>  valid_gen(i-1),
                      output => valid_gen(i)
                    );
        end generate buffer_others;
             
      buffer_right: if i=DIV_FIFO generate
        begin
          i_buffer:valid_buffer
            port map( 
            
                      aclk  =>  aclk,
                      input =>  valid_gen(i-1),
                      output => valid_d2
                    );
        end generate buffer_right;
    end generate G1;
    
end SIM;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_global.all;

entity valid_buffer is 
  
  port ( 
  
          aclk  : in std_logic;
          input : in std_logic;
         output : out std_logic
        );
end valid_buffer;

architecture SIM of valid_buffer is
 
begin
  
  process (aclk)
    begin
      if aclk'event and aclk='1' then
        output<= input;
      end if;
    end process;
    
end SIM;