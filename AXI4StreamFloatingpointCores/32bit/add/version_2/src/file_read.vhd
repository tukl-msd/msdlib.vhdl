library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.ALL;
use IEEE.std_logic_textio.all;
use std.textio.all;

use work.pkg_global.all;

entity file_read is
  
  generic (
           READ_FL : string := "text3.txt"
          );
  
  port (  
        aclk: in std_logic;
        aresetn: in std_logic;  
        ready_in: in std_logic;
        valid_out: out std_logic;
        output_tdata: out std_logic_vector (EXP+MANT downto 0)
       );
    
end file_read;

architecture sim of file_read is 

  signal temp_data: std_logic_vector (EXP+MANT downto 0);
  signal valid_d1: std_logic;
  
  type read_fsm is (READ_FILE,DATA_FINISHED);
  signal data_state: read_fsm;

begin
  
  pr_send: process (aclk, aresetn)

  variable inline:line;
  variable read_variable:std_logic_vector (EXP+MANT downto 0);
  variable end_of_line:boolean;
  
  file myfile:text is READ_FL;
    
  begin
    if aresetn='0' then
      valid_d1<='0';
      output_tdata<=(others=>'X');
      data_state<=READ_FILE;
    elsif (aclk'event and aclk='1') then
      case data_state is
      
      when READ_FILE=>
        if ready_in='1' then
          if not(endfile(myfile)) then
            readline (myfile, inline);
            read(inline, read_variable, end_of_line);
            temp_data<= read_variable;
            if temp_data(8)='0' or temp_data(8)='1' then
              valid_d1<= '1';
            else
              valid_d1<= '0';
            end if;
            output_tdata<=temp_data;
            data_state<= READ_FILE;
          elsif endfile(myfile) then
            output_tdata<=(others =>'X');
            data_state<=DATA_FINISHED;
          else
            data_state<= READ_FILE;
          end if;
        end if;
        
                           
      when DATA_FINISHED => 
            
      end case;
    end if;
end process pr_send;
              
valid_out<=valid_d1 when (data_state= READ_FILE) else
          '0';
              
end sim;