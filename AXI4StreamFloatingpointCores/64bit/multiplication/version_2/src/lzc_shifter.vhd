library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

use work.pkg_global.all;

entity lzc_shifter is
   
   port ( 
            aclk:in std_logic;
            aresetn:in std_logic;
            ready_in:in std_logic;
            valid_in:in std_logic;
            flag_in:std_logic_vector(1 downto 0);
            sign_bit:in std_logic;
            exp_data:in std_logic_vector(EXP-1 downto 0);
            mant_data:in std_logic_vector(MANT downto 0);
            ready_out:out std_logic;
            valid_out:out std_logic;
            output_tdata:out  std_logic_vector(EXP+MANT downto 0)
        );
end lzc_shifter;

architecture sim of lzc_shifter is
  
      --FSM for Shifter
  
      type shifter_fsm is (IDLE, A_32,A_64,B_32,B_64,C_32,C_64,D_32,D_64,E_32,F_32, E_64,F_64,G_64, FORW);
        signal shift_data: shifter_fsm;
    
      signal s_data:std_logic;

      ----signal for 32 bit data   
      signal level5:  std_logic_vector(23 downto 0);
      signal count4, count3, count2, count1, count0 : std_logic;
      signal level4, level4_d1 :  std_logic_vector(23 downto 0);
      signal level3, level3_d1 :  std_logic_vector(23 downto 0);
      signal level2, level2_d1 :  std_logic_vector(23 downto 0);
      signal level1, level1_d1 :  std_logic_vector(23 downto 0);
      signal level0: std_logic_vector(22 downto 0);--23 bit
      signal sCount_1,exp_data1,exp_out1: std_logic_vector(7 downto 0);
      signal temp_data,temp_data2, data_out1:std_logic_vector(31 downto 0);


      --signal for 64 bit data
      signal level6 :  std_logic_vector(52 downto 0);
      signal count5, count4_d1, count3_d1, count2_d1, count1_d1, count0_d1 : std_logic;
      signal reg5, reg5_d1:  std_logic_vector(52 downto 0);
      signal reg4, reg4_d1:  std_logic_vector(52 downto 0);
      signal reg3, reg3_d1 :  std_logic_vector(52 downto 0);
      signal reg2,reg2_d1 :  std_logic_vector(52 downto 0);
      signal reg1,reg1_d1 :  std_logic_vector(52 downto 0);
      signal reg0 :  std_logic_vector(51 downto 0);--52
      signal sCount_2,exp_data2,exp_out2 : std_logic_vector(10 downto 0);
      signal data_out2,temp_d2, temp_d3:std_logic_vector(63 downto 0);

      ------------------------------------------------------------
begin
  
      
      -------combnitorial logic for 32 bit data-----
      ------------------------level 5 (A_32)------
  
      count4<= '1' when level5(23 downto 8) = (23 downto 8=>'0') else '0';
      level4<= level5(23 downto 0) when count4='0' else level5(7 downto 0) & (15 downto 0 => '0');
  
      ------------------------level 4 (B_32)------
  
      count3<= '1' when level4_d1(23 downto 16) = (23 downto 16=>'0') else '0';
      level3<= level4_d1(23 downto 0) when count3='0' else level4_d1(15 downto 0) & (7 downto 0 => '0');
  
      ------------------------level 3 (C_32)------
  
      count2<= '1' when level3_d1(23 downto 20) = (23 downto 20=>'0') else '0';
      level2<= level3_d1(23 downto 0) when count2='0' else level3_d1(19 downto 0) & (3 downto 0 => '0');
  
      ------------------------level 2 (D_32)------
  
      count1<= '1' when level2_d1(23 downto 22) = (23 downto 22=>'0') else '0';
      level1<= level2_d1(23 downto 0) when count1='0' else level2_d1(21 downto 0) & (1 downto 0 => '0');
  
  
      ------------------------level 1 (E_32)------
  
      count0<= '1' when level1_d1(23 downto 23) = (23 downto 23=>'0') else '0';
      level0<= level1_d1(23 downto 1) when count0='0' else level1_d1(22 downto 0);
  
      sCount_1 <= "000" & count4 & count3 & count2 & count1 & count0;
      exp_out1<= exp_data1 - sCount_1;
      data_out1<= s_data & exp_out1 & level0;
    
      -------------------------------
  
  
      ---------------------64 bit data
      ------------------------level 6 (A_64)------
  
      count5<= '1' when level6(52 downto 21) = (52 downto 21=>'0') else '0';
      reg5<= level6(52 downto 0) when count5='0' else level6(20 downto 0) & (31 downto 0 => '0');
  
      ------------------------level 5 (B_64)------
  
      count4_d1<= '1' when reg5_d1(52 downto 37) = (52 downto 37=>'0') else '0';
      reg4<= reg5_d1(52 downto 0) when count4_d1='0' else reg5_d1(36 downto 0) & (15 downto 0 => '0');
  
      ------------------------level 4 (C_64)------
  
      count3_d1<='1' when reg4_d1(52 downto 45) = (52 downto 45=>'0') else '0';
      reg3<= reg4_d1(52 downto 0) when count3_d1='0' else reg4_d1(44 downto 0) & (7 downto 0 => '0');
  
      ------------------------level 3 (D_64)------
  
      count2_d1<= '1' when reg3_d1(52 downto 49) = (52 downto 49=>'0') else '0';
      reg2<= reg3_d1(52 downto 0) when count2_d1='0' else reg3_d1(48 downto 0) & (3 downto 0 => '0');
  
      ------------------------level 2 (E_64)------
  
      count1_d1<= '1' when reg2_d1(52 downto 51) = (52 downto 51=>'0') else '0';
      reg1<= reg2_d1(52 downto 0) when count1_d1='0' else reg2_d1(50 downto 0) & (1 downto 0 => '0');
  
      ------------------------level 1 (F_64)------
  
      count0_d1<= '1' when reg1_d1(52 downto 52) = (52 downto 52=>'0') else '0';
      reg0<= reg1_d1(52 downto 1) when count0_d1='0' else reg1_d1(51 downto 0);
      sCount_2<= "00000" & count5 & count4_d1 & count3_d1 & count2_d1 & count1_d1 & count0_d1;
      exp_out2<= exp_data2 - sCount_2;
      data_out2<= s_data & exp_out2 & reg0;
      
  
      ------sequential logic--------
  
      pr_input: process(aclk, aresetn)
      begin
        if aresetn='0' then
          ready_out<='1';
          shift_data<=IDLE;
        
        elsif (aclk'event and aclk='1') then
          case shift_data is
          when IDLE=>
            if BIT_WIDTH=32 and flag_in="11" and valid_in='1' then
              shift_data<=A_32;
              s_data<=sign_bit;
              exp_data1<=exp_data;
              level5<=mant_data;
              ready_out<='0';
            elsif BIT_WIDTH=64 and flag_in="11" and valid_in='1' then
              s_data<=sign_bit;
              shift_data<=A_64;
              exp_data2<=exp_data;
              level6<=mant_data;
              ready_out<='0';
            else
              ready_out<='1';
              shift_data<=IDLE;
            end if;
          
        
          -------********* FSM for 32 bit data******--------
        
          when A_32=>
            s_data<=s_data;
            exp_data1<=exp_data1;
            level4_d1<=level4;
            shift_data<=B_32;
          
          when B_32=>
            s_data<=s_data;
            exp_data1<=exp_data1;
            level3_d1<=level3;
            shift_data<=C_32;
          
          when C_32=>
            s_data<=s_data;
            exp_data1<=exp_data1;
            level2_d1<=level2;
            shift_data<=D_32;
          
          when D_32=>
            s_data<=s_data;
            exp_data1<=exp_data1;
            level1_d1<=level1;
            shift_data<=E_32;
          
          when E_32=>
            temp_data<=data_out1;
            shift_data<=F_32;
          
          when F_32=>
            if ready_in='1' then
              temp_data2<=temp_data; 
              shift_data<=FORW;
            else
              temp_data<=temp_data;
              shift_data<=F_32;
            end if;
          
          
            -------********* FSM for 64 bit data******--------
          
          when A_64=>
            s_data<=s_data;
            exp_data2<=exp_data2;
            reg5_d1<=reg5;
            shift_data<=B_64;
          
          when B_64=>
            s_data<=s_data;
            exp_data2<=exp_data2;
            reg4_d1<=reg4;
            shift_data<=C_64;
          
          when C_64=>
            s_data<=s_data;
            exp_data2<=exp_data2;
            reg3_d1<=reg3;
            shift_data<=D_64;
          
          when D_64=>
            s_data<=s_data;
            exp_data2<=exp_data2;
            reg2_d1<=reg2;
            shift_data<=E_64;
          
          when E_64=>
            s_data<=s_data;
            exp_data2<=exp_data2;
            reg1_d1<=reg1;
            shift_data<=F_64;
          
          when F_64=>
            temp_d2<=data_out2;
            shift_data<=G_64;
          
          when G_64=>
            if ready_in='1' then
              temp_d3<=temp_d2; 
              shift_data<=FORW;
            else
              temp_d2<=temp_d2;
              shift_data<=G_64;
            end if;
          
            -----------------------------------------------
          
        
          
          when FORW=>
            ready_out<='1'; ---enable signal 
            shift_data<=IDLE;
      
          end case;
        end if;
      end process pr_input;
    
      output_tdata  <=  temp_data2 when (shift_data= FORW and  BIT_WIDTH=32) else
                        temp_d3 when (shift_data= FORW and  BIT_WIDTH=64) else
                        (others=>'X');
  
      valid_out     <=  '1' when (shift_data=FORW) else
                        '0';

  end sim;

