library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_global.all;

use IEEE.std_logic_textio.all;
use std.textio.all;

use work.pkg_global.all;


entity file_write is
    generic (
    
              WRITE_FL: string:= "output_stream.txt"
            );
      
    port (
    
            aclk    : in  std_logic;
            aresetn : in  std_logic;   
            input_tvalid  : in  std_logic;
            input_tdata   : in  std_logic_vector (EXP+MANT downto 0);
            slave_tready  : out std_logic
    
        );
  
end file_write;

architecture SIM of file_write is
  
      --data in
      signal temp_data  : std_logic_vector (EXP+MANT downto 0);
      
      --valid in
      signal valid_data : std_logic;


begin
  
      pr_data: process(aclk, aresetn) is
      begin
        if aresetn='0' then 
          temp_data<=(others=>'X');
        elsif aclk'event and aclk='1' then
          slave_tready<='1';
          temp_data<=input_tdata;
          valid_data<=input_tvalid;
        end if;
      end process pr_data;
    
      --write process
      pr_write: process(aclk) is
          variable outline:line;
          variable write_variable:std_logic_vector(EXP+MANT downto 0);
          variable end_of_line:boolean;    
    
          file myfile:text open write_mode is WRITE_FL;
    
      begin
        if aclk'event and aclk='1' then
          if valid_data='1' then
            write(outline,temp_data);
            writeline(myfile,outline);
          end if;
        end if;
      end process;
      
end SIM;