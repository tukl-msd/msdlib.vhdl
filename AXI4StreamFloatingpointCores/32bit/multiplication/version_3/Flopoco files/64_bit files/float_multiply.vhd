--------------------------------------------------------------------------------
--                              Compressor_15_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_15_3 is
   port ( X0 : in  std_logic_vector(4 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_15_3 is
signal X :  std_logic_vector(5 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "000000", 
      "001" when "000001", 
      "001" when "000010", 
      "010" when "000011", 
      "001" when "000100", 
      "010" when "000101", 
      "010" when "000110", 
      "011" when "000111", 
      "001" when "001000", 
      "010" when "001001", 
      "010" when "001010", 
      "011" when "001011", 
      "010" when "001100", 
      "011" when "001101", 
      "011" when "001110", 
      "100" when "001111", 
      "001" when "010000", 
      "010" when "010001", 
      "010" when "010010", 
      "011" when "010011", 
      "010" when "010100", 
      "011" when "010101", 
      "011" when "010110", 
      "100" when "010111", 
      "010" when "011000", 
      "011" when "011001", 
      "011" when "011010", 
      "100" when "011011", 
      "011" when "011100", 
      "100" when "011101", 
      "100" when "011110", 
      "101" when "011111", 
      "010" when "100000", 
      "011" when "100001", 
      "011" when "100010", 
      "100" when "100011", 
      "011" when "100100", 
      "100" when "100101", 
      "100" when "100110", 
      "101" when "100111", 
      "011" when "101000", 
      "100" when "101001", 
      "100" when "101010", 
      "101" when "101011", 
      "100" when "101100", 
      "101" when "101101", 
      "101" when "101110", 
      "110" when "101111", 
      "011" when "110000", 
      "100" when "110001", 
      "100" when "110010", 
      "101" when "110011", 
      "100" when "110100", 
      "101" when "110101", 
      "101" when "110110", 
      "110" when "110111", 
      "100" when "111000", 
      "101" when "111001", 
      "101" when "111010", 
      "110" when "111011", 
      "101" when "111100", 
      "110" when "111101", 
      "110" when "111110", 
      "111" when "111111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_23_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_2_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_2_2 is
   port ( X0 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_2_2 is
signal X :  std_logic_vector(1 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "00", 
      "01" when "01", 
      "01" when "10", 
      "10" when "11", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_103_f300_uid125
--                   (IntAdderAlternative_103_f300_uid129)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_103_f300_uid125 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(102 downto 0);
          Y : in  std_logic_vector(102 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(102 downto 0)   );
end entity;

architecture arch of IntAdder_103_f300_uid125 is
signal s_sum_l0_idx0 :  std_logic_vector(78 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(25 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(77 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(24 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(25 downto 0);
signal sum_l1_idx1 :  std_logic_vector(24 downto 0);
signal c_l1_idx1 :  std_logic_vector(0 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            s_sum_l0_idx1_d1 <=  s_sum_l0_idx1;
            sum_l0_idx0_d1 <=  sum_l0_idx0;
            c_l0_idx0_d1 <=  c_l0_idx0;
         end if;
      end process;
   --Alternative
   s_sum_l0_idx0 <= ( "0" & X(77 downto 0)) + ( "0" & Y(77 downto 0)) + Cin;
   s_sum_l0_idx1 <= ( "0" & X(102 downto 78)) + ( "0" & Y(102 downto 78));
   sum_l0_idx0 <= s_sum_l0_idx0(77 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(78 downto 78);
   sum_l0_idx1 <= s_sum_l0_idx1(24 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(25 downto 25);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(24 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(25 downto 25);
   R <= sum_l1_idx1(24 downto 0) & sum_l0_idx0_d1(77 downto 0);
end architecture;

--------------------------------------------------------------------------------
--               IntMultiplier_UsingDSP_53_53_106_unsigned_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_53_53_106_unsigned_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          Y : in  std_logic_vector(52 downto 0);
          R : out  std_logic_vector(105 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_53_53_106_unsigned_uid4 is
   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_15_3 is
      port ( X0 : in  std_logic_vector(4 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntAdder_103_f300_uid125 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(102 downto 0);
             Y : in  std_logic_vector(102 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(102 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(52 downto 0);
signal YY_m5 :  std_logic_vector(52 downto 0);
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w105_0, heap_bh6_w105_0_d1, heap_bh6_w105_0_d2 : std_logic;
signal heap_bh6_w104_0, heap_bh6_w104_0_d1, heap_bh6_w104_0_d2 : std_logic;
signal heap_bh6_w103_0, heap_bh6_w103_0_d1, heap_bh6_w103_0_d2 : std_logic;
signal heap_bh6_w102_0, heap_bh6_w102_0_d1, heap_bh6_w102_0_d2 : std_logic;
signal heap_bh6_w101_0, heap_bh6_w101_0_d1, heap_bh6_w101_0_d2 : std_logic;
signal heap_bh6_w100_0, heap_bh6_w100_0_d1, heap_bh6_w100_0_d2 : std_logic;
signal heap_bh6_w99_0, heap_bh6_w99_0_d1, heap_bh6_w99_0_d2 : std_logic;
signal heap_bh6_w98_0, heap_bh6_w98_0_d1, heap_bh6_w98_0_d2 : std_logic;
signal heap_bh6_w97_0, heap_bh6_w97_0_d1, heap_bh6_w97_0_d2 : std_logic;
signal heap_bh6_w96_0, heap_bh6_w96_0_d1, heap_bh6_w96_0_d2 : std_logic;
signal heap_bh6_w95_0, heap_bh6_w95_0_d1, heap_bh6_w95_0_d2 : std_logic;
signal heap_bh6_w94_0, heap_bh6_w94_0_d1, heap_bh6_w94_0_d2 : std_logic;
signal heap_bh6_w93_0, heap_bh6_w93_0_d1, heap_bh6_w93_0_d2 : std_logic;
signal heap_bh6_w92_0, heap_bh6_w92_0_d1, heap_bh6_w92_0_d2 : std_logic;
signal heap_bh6_w91_0, heap_bh6_w91_0_d1, heap_bh6_w91_0_d2 : std_logic;
signal heap_bh6_w90_0, heap_bh6_w90_0_d1, heap_bh6_w90_0_d2 : std_logic;
signal heap_bh6_w89_0, heap_bh6_w89_0_d1, heap_bh6_w89_0_d2 : std_logic;
signal heap_bh6_w88_0, heap_bh6_w88_0_d1 : std_logic;
signal heap_bh6_w87_0, heap_bh6_w87_0_d1 : std_logic;
signal heap_bh6_w86_0, heap_bh6_w86_0_d1 : std_logic;
signal heap_bh6_w85_0, heap_bh6_w85_0_d1 : std_logic;
signal heap_bh6_w84_0, heap_bh6_w84_0_d1 : std_logic;
signal heap_bh6_w83_0, heap_bh6_w83_0_d1 : std_logic;
signal heap_bh6_w82_0, heap_bh6_w82_0_d1 : std_logic;
signal heap_bh6_w81_0, heap_bh6_w81_0_d1 : std_logic;
signal heap_bh6_w80_0, heap_bh6_w80_0_d1 : std_logic;
signal heap_bh6_w79_0, heap_bh6_w79_0_d1 : std_logic;
signal heap_bh6_w78_0, heap_bh6_w78_0_d1 : std_logic;
signal heap_bh6_w77_0, heap_bh6_w77_0_d1 : std_logic;
signal heap_bh6_w76_0, heap_bh6_w76_0_d1 : std_logic;
signal heap_bh6_w75_0, heap_bh6_w75_0_d1 : std_logic;
signal heap_bh6_w74_0, heap_bh6_w74_0_d1 : std_logic;
signal heap_bh6_w73_0, heap_bh6_w73_0_d1 : std_logic;
signal heap_bh6_w72_0, heap_bh6_w72_0_d1 : std_logic;
signal heap_bh6_w71_0, heap_bh6_w71_0_d1 : std_logic;
signal heap_bh6_w70_0, heap_bh6_w70_0_d1 : std_logic;
signal heap_bh6_w69_0, heap_bh6_w69_0_d1 : std_logic;
signal heap_bh6_w68_0, heap_bh6_w68_0_d1 : std_logic;
signal heap_bh6_w67_0, heap_bh6_w67_0_d1 : std_logic;
signal heap_bh6_w66_0, heap_bh6_w66_0_d1 : std_logic;
signal heap_bh6_w65_0, heap_bh6_w65_0_d1 : std_logic;
signal DSP_bh6_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w81_1, heap_bh6_w81_1_d1 : std_logic;
signal heap_bh6_w80_1, heap_bh6_w80_1_d1 : std_logic;
signal heap_bh6_w79_1, heap_bh6_w79_1_d1 : std_logic;
signal heap_bh6_w78_1, heap_bh6_w78_1_d1 : std_logic;
signal heap_bh6_w77_1, heap_bh6_w77_1_d1 : std_logic;
signal heap_bh6_w76_1, heap_bh6_w76_1_d1 : std_logic;
signal heap_bh6_w75_1, heap_bh6_w75_1_d1 : std_logic;
signal heap_bh6_w74_1, heap_bh6_w74_1_d1 : std_logic;
signal heap_bh6_w73_1, heap_bh6_w73_1_d1 : std_logic;
signal heap_bh6_w72_1, heap_bh6_w72_1_d1 : std_logic;
signal heap_bh6_w71_1, heap_bh6_w71_1_d1 : std_logic;
signal heap_bh6_w70_1, heap_bh6_w70_1_d1 : std_logic;
signal heap_bh6_w69_1, heap_bh6_w69_1_d1 : std_logic;
signal heap_bh6_w68_1, heap_bh6_w68_1_d1 : std_logic;
signal heap_bh6_w67_1, heap_bh6_w67_1_d1 : std_logic;
signal heap_bh6_w66_1, heap_bh6_w66_1_d1 : std_logic;
signal heap_bh6_w65_1, heap_bh6_w65_1_d1 : std_logic;
signal heap_bh6_w64_0, heap_bh6_w64_0_d1 : std_logic;
signal heap_bh6_w63_0, heap_bh6_w63_0_d1 : std_logic;
signal heap_bh6_w62_0, heap_bh6_w62_0_d1 : std_logic;
signal heap_bh6_w61_0, heap_bh6_w61_0_d1 : std_logic;
signal heap_bh6_w60_0, heap_bh6_w60_0_d1 : std_logic;
signal heap_bh6_w59_0, heap_bh6_w59_0_d1 : std_logic;
signal heap_bh6_w58_0, heap_bh6_w58_0_d1 : std_logic;
signal heap_bh6_w57_0, heap_bh6_w57_0_d1 : std_logic;
signal heap_bh6_w56_0, heap_bh6_w56_0_d1 : std_logic;
signal heap_bh6_w55_0, heap_bh6_w55_0_d1 : std_logic;
signal heap_bh6_w54_0, heap_bh6_w54_0_d1 : std_logic;
signal heap_bh6_w53_0, heap_bh6_w53_0_d1 : std_logic;
signal heap_bh6_w52_0, heap_bh6_w52_0_d1 : std_logic;
signal heap_bh6_w51_0, heap_bh6_w51_0_d1 : std_logic;
signal heap_bh6_w50_0, heap_bh6_w50_0_d1 : std_logic;
signal heap_bh6_w49_0, heap_bh6_w49_0_d1 : std_logic;
signal heap_bh6_w48_0, heap_bh6_w48_0_d1 : std_logic;
signal heap_bh6_w47_0, heap_bh6_w47_0_d1 : std_logic;
signal heap_bh6_w46_0, heap_bh6_w46_0_d1 : std_logic;
signal heap_bh6_w45_0, heap_bh6_w45_0_d1 : std_logic;
signal heap_bh6_w44_0, heap_bh6_w44_0_d1 : std_logic;
signal heap_bh6_w43_0, heap_bh6_w43_0_d1 : std_logic;
signal heap_bh6_w42_0, heap_bh6_w42_0_d1 : std_logic;
signal heap_bh6_w41_0, heap_bh6_w41_0_d1 : std_logic;
signal DSP_bh6_ch2_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w57_1, heap_bh6_w57_1_d1 : std_logic;
signal heap_bh6_w56_1, heap_bh6_w56_1_d1 : std_logic;
signal heap_bh6_w55_1, heap_bh6_w55_1_d1 : std_logic;
signal heap_bh6_w54_1, heap_bh6_w54_1_d1 : std_logic;
signal heap_bh6_w53_1, heap_bh6_w53_1_d1 : std_logic;
signal heap_bh6_w52_1, heap_bh6_w52_1_d1 : std_logic;
signal heap_bh6_w51_1, heap_bh6_w51_1_d1 : std_logic;
signal heap_bh6_w50_1, heap_bh6_w50_1_d1 : std_logic;
signal heap_bh6_w49_1, heap_bh6_w49_1_d1 : std_logic;
signal heap_bh6_w48_1, heap_bh6_w48_1_d1 : std_logic;
signal heap_bh6_w47_1, heap_bh6_w47_1_d1 : std_logic;
signal heap_bh6_w46_1, heap_bh6_w46_1_d1 : std_logic;
signal heap_bh6_w45_1, heap_bh6_w45_1_d1 : std_logic;
signal heap_bh6_w44_1, heap_bh6_w44_1_d1 : std_logic;
signal heap_bh6_w43_1, heap_bh6_w43_1_d1 : std_logic;
signal heap_bh6_w42_1, heap_bh6_w42_1_d1 : std_logic;
signal heap_bh6_w41_1, heap_bh6_w41_1_d1 : std_logic;
signal heap_bh6_w40_0, heap_bh6_w40_0_d1 : std_logic;
signal heap_bh6_w39_0, heap_bh6_w39_0_d1 : std_logic;
signal heap_bh6_w38_0, heap_bh6_w38_0_d1 : std_logic;
signal heap_bh6_w37_0, heap_bh6_w37_0_d1 : std_logic;
signal heap_bh6_w36_0, heap_bh6_w36_0_d1 : std_logic;
signal heap_bh6_w35_0, heap_bh6_w35_0_d1 : std_logic;
signal heap_bh6_w34_0, heap_bh6_w34_0_d1 : std_logic;
signal heap_bh6_w33_0, heap_bh6_w33_0_d1 : std_logic;
signal heap_bh6_w32_0, heap_bh6_w32_0_d1 : std_logic;
signal heap_bh6_w31_0, heap_bh6_w31_0_d1 : std_logic;
signal heap_bh6_w30_0, heap_bh6_w30_0_d1 : std_logic;
signal heap_bh6_w29_0, heap_bh6_w29_0_d1 : std_logic;
signal heap_bh6_w28_0, heap_bh6_w28_0_d1 : std_logic;
signal heap_bh6_w27_0, heap_bh6_w27_0_d1 : std_logic;
signal heap_bh6_w26_0, heap_bh6_w26_0_d1 : std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1 : std_logic;
signal heap_bh6_w24_0, heap_bh6_w24_0_d1 : std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 : std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 : std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 : std_logic;
signal heap_bh6_w20_0, heap_bh6_w20_0_d1 : std_logic;
signal heap_bh6_w19_0, heap_bh6_w19_0_d1 : std_logic;
signal heap_bh6_w18_0, heap_bh6_w18_0_d1 : std_logic;
signal heap_bh6_w17_0, heap_bh6_w17_0_d1 : std_logic;
signal DSP_bh6_ch3_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w88_1, heap_bh6_w88_1_d1 : std_logic;
signal heap_bh6_w87_1, heap_bh6_w87_1_d1 : std_logic;
signal heap_bh6_w86_1, heap_bh6_w86_1_d1 : std_logic;
signal heap_bh6_w85_1, heap_bh6_w85_1_d1 : std_logic;
signal heap_bh6_w84_1, heap_bh6_w84_1_d1 : std_logic;
signal heap_bh6_w83_1, heap_bh6_w83_1_d1 : std_logic;
signal heap_bh6_w82_1, heap_bh6_w82_1_d1 : std_logic;
signal heap_bh6_w81_2, heap_bh6_w81_2_d1 : std_logic;
signal heap_bh6_w80_2, heap_bh6_w80_2_d1 : std_logic;
signal heap_bh6_w79_2, heap_bh6_w79_2_d1 : std_logic;
signal heap_bh6_w78_2, heap_bh6_w78_2_d1 : std_logic;
signal heap_bh6_w77_2, heap_bh6_w77_2_d1 : std_logic;
signal heap_bh6_w76_2, heap_bh6_w76_2_d1 : std_logic;
signal heap_bh6_w75_2, heap_bh6_w75_2_d1 : std_logic;
signal heap_bh6_w74_2, heap_bh6_w74_2_d1 : std_logic;
signal heap_bh6_w73_2, heap_bh6_w73_2_d1 : std_logic;
signal heap_bh6_w72_2, heap_bh6_w72_2_d1 : std_logic;
signal heap_bh6_w71_2, heap_bh6_w71_2_d1 : std_logic;
signal heap_bh6_w70_2, heap_bh6_w70_2_d1 : std_logic;
signal heap_bh6_w69_2, heap_bh6_w69_2_d1 : std_logic;
signal heap_bh6_w68_2, heap_bh6_w68_2_d1 : std_logic;
signal heap_bh6_w67_2, heap_bh6_w67_2_d1 : std_logic;
signal heap_bh6_w66_2, heap_bh6_w66_2_d1 : std_logic;
signal heap_bh6_w65_2, heap_bh6_w65_2_d1 : std_logic;
signal heap_bh6_w64_1, heap_bh6_w64_1_d1 : std_logic;
signal heap_bh6_w63_1, heap_bh6_w63_1_d1 : std_logic;
signal heap_bh6_w62_1, heap_bh6_w62_1_d1 : std_logic;
signal heap_bh6_w61_1, heap_bh6_w61_1_d1 : std_logic;
signal heap_bh6_w60_1, heap_bh6_w60_1_d1 : std_logic;
signal heap_bh6_w59_1, heap_bh6_w59_1_d1 : std_logic;
signal heap_bh6_w58_1, heap_bh6_w58_1_d1 : std_logic;
signal heap_bh6_w57_2, heap_bh6_w57_2_d1 : std_logic;
signal heap_bh6_w56_2, heap_bh6_w56_2_d1 : std_logic;
signal heap_bh6_w55_2, heap_bh6_w55_2_d1 : std_logic;
signal heap_bh6_w54_2, heap_bh6_w54_2_d1 : std_logic;
signal heap_bh6_w53_2, heap_bh6_w53_2_d1 : std_logic;
signal heap_bh6_w52_2, heap_bh6_w52_2_d1 : std_logic;
signal heap_bh6_w51_2, heap_bh6_w51_2_d1 : std_logic;
signal heap_bh6_w50_2, heap_bh6_w50_2_d1 : std_logic;
signal heap_bh6_w49_2, heap_bh6_w49_2_d1 : std_logic;
signal heap_bh6_w48_2, heap_bh6_w48_2_d1 : std_logic;
signal DSP_bh6_ch4_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w64_2, heap_bh6_w64_2_d1 : std_logic;
signal heap_bh6_w63_2, heap_bh6_w63_2_d1 : std_logic;
signal heap_bh6_w62_2, heap_bh6_w62_2_d1 : std_logic;
signal heap_bh6_w61_2, heap_bh6_w61_2_d1 : std_logic;
signal heap_bh6_w60_2, heap_bh6_w60_2_d1 : std_logic;
signal heap_bh6_w59_2, heap_bh6_w59_2_d1 : std_logic;
signal heap_bh6_w58_2, heap_bh6_w58_2_d1 : std_logic;
signal heap_bh6_w57_3, heap_bh6_w57_3_d1 : std_logic;
signal heap_bh6_w56_3, heap_bh6_w56_3_d1 : std_logic;
signal heap_bh6_w55_3, heap_bh6_w55_3_d1 : std_logic;
signal heap_bh6_w54_3, heap_bh6_w54_3_d1 : std_logic;
signal heap_bh6_w53_3, heap_bh6_w53_3_d1 : std_logic;
signal heap_bh6_w52_3, heap_bh6_w52_3_d1 : std_logic;
signal heap_bh6_w51_3, heap_bh6_w51_3_d1 : std_logic;
signal heap_bh6_w50_3, heap_bh6_w50_3_d1 : std_logic;
signal heap_bh6_w49_3, heap_bh6_w49_3_d1 : std_logic;
signal heap_bh6_w48_3, heap_bh6_w48_3_d1 : std_logic;
signal heap_bh6_w47_2, heap_bh6_w47_2_d1 : std_logic;
signal heap_bh6_w46_2, heap_bh6_w46_2_d1 : std_logic;
signal heap_bh6_w45_2, heap_bh6_w45_2_d1 : std_logic;
signal heap_bh6_w44_2, heap_bh6_w44_2_d1 : std_logic;
signal heap_bh6_w43_2, heap_bh6_w43_2_d1 : std_logic;
signal heap_bh6_w42_2, heap_bh6_w42_2_d1 : std_logic;
signal heap_bh6_w41_2, heap_bh6_w41_2_d1 : std_logic;
signal heap_bh6_w40_1, heap_bh6_w40_1_d1 : std_logic;
signal heap_bh6_w39_1, heap_bh6_w39_1_d1 : std_logic;
signal heap_bh6_w38_1, heap_bh6_w38_1_d1 : std_logic;
signal heap_bh6_w37_1, heap_bh6_w37_1_d1 : std_logic;
signal heap_bh6_w36_1, heap_bh6_w36_1_d1 : std_logic;
signal heap_bh6_w35_1, heap_bh6_w35_1_d1 : std_logic;
signal heap_bh6_w34_1, heap_bh6_w34_1_d1 : std_logic;
signal heap_bh6_w33_1, heap_bh6_w33_1_d1 : std_logic;
signal heap_bh6_w32_1, heap_bh6_w32_1_d1 : std_logic;
signal heap_bh6_w31_1, heap_bh6_w31_1_d1 : std_logic;
signal heap_bh6_w30_1, heap_bh6_w30_1_d1 : std_logic;
signal heap_bh6_w29_1, heap_bh6_w29_1_d1 : std_logic;
signal heap_bh6_w28_1, heap_bh6_w28_1_d1 : std_logic;
signal heap_bh6_w27_1, heap_bh6_w27_1_d1 : std_logic;
signal heap_bh6_w26_1, heap_bh6_w26_1_d1 : std_logic;
signal heap_bh6_w25_1, heap_bh6_w25_1_d1 : std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 : std_logic;
signal DSP_bh6_ch5_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w40_2, heap_bh6_w40_2_d1 : std_logic;
signal heap_bh6_w39_2, heap_bh6_w39_2_d1 : std_logic;
signal heap_bh6_w38_2, heap_bh6_w38_2_d1 : std_logic;
signal heap_bh6_w37_2, heap_bh6_w37_2_d1 : std_logic;
signal heap_bh6_w36_2, heap_bh6_w36_2_d1 : std_logic;
signal heap_bh6_w35_2, heap_bh6_w35_2_d1 : std_logic;
signal heap_bh6_w34_2, heap_bh6_w34_2_d1 : std_logic;
signal heap_bh6_w33_2, heap_bh6_w33_2_d1 : std_logic;
signal heap_bh6_w32_2, heap_bh6_w32_2_d1 : std_logic;
signal heap_bh6_w31_2, heap_bh6_w31_2_d1 : std_logic;
signal heap_bh6_w30_2, heap_bh6_w30_2_d1 : std_logic;
signal heap_bh6_w29_2, heap_bh6_w29_2_d1 : std_logic;
signal heap_bh6_w28_2, heap_bh6_w28_2_d1 : std_logic;
signal heap_bh6_w27_2, heap_bh6_w27_2_d1 : std_logic;
signal heap_bh6_w26_2, heap_bh6_w26_2_d1 : std_logic;
signal heap_bh6_w25_2, heap_bh6_w25_2_d1 : std_logic;
signal heap_bh6_w24_2, heap_bh6_w24_2_d1 : std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 : std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 : std_logic;
signal heap_bh6_w21_1, heap_bh6_w21_1_d1 : std_logic;
signal heap_bh6_w20_1, heap_bh6_w20_1_d1 : std_logic;
signal heap_bh6_w19_1, heap_bh6_w19_1_d1 : std_logic;
signal heap_bh6_w18_1, heap_bh6_w18_1_d1 : std_logic;
signal heap_bh6_w17_1, heap_bh6_w17_1_d1 : std_logic;
signal heap_bh6_w16_0, heap_bh6_w16_0_d1 : std_logic;
signal heap_bh6_w15_0, heap_bh6_w15_0_d1 : std_logic;
signal heap_bh6_w14_0, heap_bh6_w14_0_d1 : std_logic;
signal heap_bh6_w13_0, heap_bh6_w13_0_d1 : std_logic;
signal heap_bh6_w12_0, heap_bh6_w12_0_d1 : std_logic;
signal heap_bh6_w11_0, heap_bh6_w11_0_d1 : std_logic;
signal heap_bh6_w10_0, heap_bh6_w10_0_d1 : std_logic;
signal heap_bh6_w9_0, heap_bh6_w9_0_d1 : std_logic;
signal heap_bh6_w8_0, heap_bh6_w8_0_d1 : std_logic;
signal heap_bh6_w7_0, heap_bh6_w7_0_d1 : std_logic;
signal heap_bh6_w6_0, heap_bh6_w6_0_d1 : std_logic;
signal heap_bh6_w5_0, heap_bh6_w5_0_d1 : std_logic;
signal heap_bh6_w4_0, heap_bh6_w4_0_d1 : std_logic;
signal heap_bh6_w3_0, heap_bh6_w3_0_d1 : std_logic;
signal heap_bh6_w2_0, heap_bh6_w2_0_d1 : std_logic;
signal heap_bh6_w1_0, heap_bh6_w1_0_d1 : std_logic;
signal heap_bh6_w0_0, heap_bh6_w0_0_d1 : std_logic;
signal DSP_bh6_ch6_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w71_3, heap_bh6_w71_3_d1 : std_logic;
signal heap_bh6_w70_3, heap_bh6_w70_3_d1 : std_logic;
signal heap_bh6_w69_3, heap_bh6_w69_3_d1 : std_logic;
signal heap_bh6_w68_3, heap_bh6_w68_3_d1 : std_logic;
signal heap_bh6_w67_3, heap_bh6_w67_3_d1 : std_logic;
signal heap_bh6_w66_3, heap_bh6_w66_3_d1 : std_logic;
signal heap_bh6_w65_3, heap_bh6_w65_3_d1 : std_logic;
signal heap_bh6_w64_3, heap_bh6_w64_3_d1 : std_logic;
signal heap_bh6_w63_3, heap_bh6_w63_3_d1 : std_logic;
signal heap_bh6_w62_3, heap_bh6_w62_3_d1 : std_logic;
signal heap_bh6_w61_3, heap_bh6_w61_3_d1 : std_logic;
signal heap_bh6_w60_3, heap_bh6_w60_3_d1 : std_logic;
signal heap_bh6_w59_3, heap_bh6_w59_3_d1 : std_logic;
signal heap_bh6_w58_3, heap_bh6_w58_3_d1 : std_logic;
signal heap_bh6_w57_4, heap_bh6_w57_4_d1 : std_logic;
signal heap_bh6_w56_4, heap_bh6_w56_4_d1 : std_logic;
signal heap_bh6_w55_4, heap_bh6_w55_4_d1 : std_logic;
signal heap_bh6_w54_4, heap_bh6_w54_4_d1 : std_logic;
signal heap_bh6_w53_4, heap_bh6_w53_4_d1 : std_logic;
signal heap_bh6_w52_4, heap_bh6_w52_4_d1 : std_logic;
signal heap_bh6_w51_4, heap_bh6_w51_4_d1 : std_logic;
signal heap_bh6_w50_4, heap_bh6_w50_4_d1 : std_logic;
signal heap_bh6_w49_4, heap_bh6_w49_4_d1 : std_logic;
signal heap_bh6_w48_4, heap_bh6_w48_4_d1 : std_logic;
signal heap_bh6_w47_3, heap_bh6_w47_3_d1 : std_logic;
signal heap_bh6_w46_3, heap_bh6_w46_3_d1 : std_logic;
signal heap_bh6_w45_3, heap_bh6_w45_3_d1 : std_logic;
signal heap_bh6_w44_3, heap_bh6_w44_3_d1 : std_logic;
signal heap_bh6_w43_3, heap_bh6_w43_3_d1 : std_logic;
signal heap_bh6_w42_3, heap_bh6_w42_3_d1 : std_logic;
signal heap_bh6_w41_3, heap_bh6_w41_3_d1 : std_logic;
signal heap_bh6_w40_3, heap_bh6_w40_3_d1 : std_logic;
signal heap_bh6_w39_3, heap_bh6_w39_3_d1 : std_logic;
signal heap_bh6_w38_3, heap_bh6_w38_3_d1 : std_logic;
signal heap_bh6_w37_3, heap_bh6_w37_3_d1 : std_logic;
signal heap_bh6_w36_3, heap_bh6_w36_3_d1 : std_logic;
signal heap_bh6_w35_3, heap_bh6_w35_3_d1 : std_logic;
signal heap_bh6_w34_3, heap_bh6_w34_3_d1 : std_logic;
signal heap_bh6_w33_3, heap_bh6_w33_3_d1 : std_logic;
signal heap_bh6_w32_3, heap_bh6_w32_3_d1 : std_logic;
signal heap_bh6_w31_3, heap_bh6_w31_3_d1 : std_logic;
signal DSP_bh6_ch7_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w47_4, heap_bh6_w47_4_d1 : std_logic;
signal heap_bh6_w46_4, heap_bh6_w46_4_d1 : std_logic;
signal heap_bh6_w45_4, heap_bh6_w45_4_d1 : std_logic;
signal heap_bh6_w44_4, heap_bh6_w44_4_d1 : std_logic;
signal heap_bh6_w43_4, heap_bh6_w43_4_d1 : std_logic;
signal heap_bh6_w42_4, heap_bh6_w42_4_d1 : std_logic;
signal heap_bh6_w41_4, heap_bh6_w41_4_d1 : std_logic;
signal heap_bh6_w40_4, heap_bh6_w40_4_d1 : std_logic;
signal heap_bh6_w39_4, heap_bh6_w39_4_d1 : std_logic;
signal heap_bh6_w38_4, heap_bh6_w38_4_d1 : std_logic;
signal heap_bh6_w37_4, heap_bh6_w37_4_d1 : std_logic;
signal heap_bh6_w36_4, heap_bh6_w36_4_d1 : std_logic;
signal heap_bh6_w35_4, heap_bh6_w35_4_d1 : std_logic;
signal heap_bh6_w34_4, heap_bh6_w34_4_d1 : std_logic;
signal heap_bh6_w33_4, heap_bh6_w33_4_d1 : std_logic;
signal heap_bh6_w32_4, heap_bh6_w32_4_d1 : std_logic;
signal heap_bh6_w31_4, heap_bh6_w31_4_d1 : std_logic;
signal heap_bh6_w30_3, heap_bh6_w30_3_d1 : std_logic;
signal heap_bh6_w29_3, heap_bh6_w29_3_d1 : std_logic;
signal heap_bh6_w28_3, heap_bh6_w28_3_d1 : std_logic;
signal heap_bh6_w27_3, heap_bh6_w27_3_d1 : std_logic;
signal heap_bh6_w26_3, heap_bh6_w26_3_d1 : std_logic;
signal heap_bh6_w25_3, heap_bh6_w25_3_d1 : std_logic;
signal heap_bh6_w24_3, heap_bh6_w24_3_d1 : std_logic;
signal heap_bh6_w23_2, heap_bh6_w23_2_d1 : std_logic;
signal heap_bh6_w22_2, heap_bh6_w22_2_d1 : std_logic;
signal heap_bh6_w21_2, heap_bh6_w21_2_d1 : std_logic;
signal heap_bh6_w20_2, heap_bh6_w20_2_d1 : std_logic;
signal heap_bh6_w19_2, heap_bh6_w19_2_d1 : std_logic;
signal heap_bh6_w18_2, heap_bh6_w18_2_d1 : std_logic;
signal heap_bh6_w17_2, heap_bh6_w17_2_d1 : std_logic;
signal heap_bh6_w16_1, heap_bh6_w16_1_d1 : std_logic;
signal heap_bh6_w15_1, heap_bh6_w15_1_d1 : std_logic;
signal heap_bh6_w14_1, heap_bh6_w14_1_d1 : std_logic;
signal heap_bh6_w13_1, heap_bh6_w13_1_d1 : std_logic;
signal heap_bh6_w12_1, heap_bh6_w12_1_d1 : std_logic;
signal heap_bh6_w11_1, heap_bh6_w11_1_d1 : std_logic;
signal heap_bh6_w10_1, heap_bh6_w10_1_d1 : std_logic;
signal heap_bh6_w9_1, heap_bh6_w9_1_d1 : std_logic;
signal heap_bh6_w8_1, heap_bh6_w8_1_d1 : std_logic;
signal heap_bh6_w7_1, heap_bh6_w7_1_d1 : std_logic;
signal DSP_bh6_ch8_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w23_3, heap_bh6_w23_3_d1 : std_logic;
signal heap_bh6_w22_3, heap_bh6_w22_3_d1 : std_logic;
signal heap_bh6_w21_3, heap_bh6_w21_3_d1 : std_logic;
signal heap_bh6_w20_3, heap_bh6_w20_3_d1 : std_logic;
signal heap_bh6_w19_3, heap_bh6_w19_3_d1 : std_logic;
signal heap_bh6_w18_3, heap_bh6_w18_3_d1 : std_logic;
signal heap_bh6_w17_3, heap_bh6_w17_3_d1 : std_logic;
signal heap_bh6_w16_2, heap_bh6_w16_2_d1 : std_logic;
signal heap_bh6_w15_2, heap_bh6_w15_2_d1 : std_logic;
signal heap_bh6_w14_2, heap_bh6_w14_2_d1 : std_logic;
signal heap_bh6_w13_2, heap_bh6_w13_2_d1 : std_logic;
signal heap_bh6_w12_2, heap_bh6_w12_2_d1 : std_logic;
signal heap_bh6_w11_2, heap_bh6_w11_2_d1 : std_logic;
signal heap_bh6_w10_2, heap_bh6_w10_2_d1 : std_logic;
signal heap_bh6_w9_2, heap_bh6_w9_2_d1 : std_logic;
signal heap_bh6_w8_2, heap_bh6_w8_2_d1 : std_logic;
signal heap_bh6_w7_2, heap_bh6_w7_2_d1 : std_logic;
signal heap_bh6_w6_1, heap_bh6_w6_1_d1 : std_logic;
signal heap_bh6_w5_1, heap_bh6_w5_1_d1 : std_logic;
signal heap_bh6_w4_1, heap_bh6_w4_1_d1 : std_logic;
signal heap_bh6_w3_1, heap_bh6_w3_1_d1 : std_logic;
signal heap_bh6_w2_1, heap_bh6_w2_1_d1 : std_logic;
signal heap_bh6_w1_1, heap_bh6_w1_1_d1 : std_logic;
signal heap_bh6_w0_1, heap_bh6_w0_1_d1 : std_logic;
signal DSP_bh6_ch9_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w54_5, heap_bh6_w54_5_d1 : std_logic;
signal heap_bh6_w53_5, heap_bh6_w53_5_d1 : std_logic;
signal heap_bh6_w52_5, heap_bh6_w52_5_d1 : std_logic;
signal heap_bh6_w51_5, heap_bh6_w51_5_d1 : std_logic;
signal heap_bh6_w50_5, heap_bh6_w50_5_d1 : std_logic;
signal heap_bh6_w49_5, heap_bh6_w49_5_d1 : std_logic;
signal heap_bh6_w48_5, heap_bh6_w48_5_d1 : std_logic;
signal heap_bh6_w47_5, heap_bh6_w47_5_d1 : std_logic;
signal heap_bh6_w46_5, heap_bh6_w46_5_d1 : std_logic;
signal heap_bh6_w45_5, heap_bh6_w45_5_d1 : std_logic;
signal heap_bh6_w44_5, heap_bh6_w44_5_d1 : std_logic;
signal heap_bh6_w43_5, heap_bh6_w43_5_d1 : std_logic;
signal heap_bh6_w42_5, heap_bh6_w42_5_d1 : std_logic;
signal heap_bh6_w41_5, heap_bh6_w41_5_d1 : std_logic;
signal heap_bh6_w40_5, heap_bh6_w40_5_d1 : std_logic;
signal heap_bh6_w39_5, heap_bh6_w39_5_d1 : std_logic;
signal heap_bh6_w38_5, heap_bh6_w38_5_d1 : std_logic;
signal heap_bh6_w37_5, heap_bh6_w37_5_d1 : std_logic;
signal heap_bh6_w36_5, heap_bh6_w36_5_d1 : std_logic;
signal heap_bh6_w35_5, heap_bh6_w35_5_d1 : std_logic;
signal heap_bh6_w34_5, heap_bh6_w34_5_d1 : std_logic;
signal heap_bh6_w33_5, heap_bh6_w33_5_d1 : std_logic;
signal heap_bh6_w32_5, heap_bh6_w32_5_d1 : std_logic;
signal heap_bh6_w31_5, heap_bh6_w31_5_d1 : std_logic;
signal heap_bh6_w30_4, heap_bh6_w30_4_d1 : std_logic;
signal heap_bh6_w29_4, heap_bh6_w29_4_d1 : std_logic;
signal heap_bh6_w28_4, heap_bh6_w28_4_d1 : std_logic;
signal heap_bh6_w27_4, heap_bh6_w27_4_d1 : std_logic;
signal heap_bh6_w26_4, heap_bh6_w26_4_d1 : std_logic;
signal heap_bh6_w25_4, heap_bh6_w25_4_d1 : std_logic;
signal heap_bh6_w24_4, heap_bh6_w24_4_d1 : std_logic;
signal heap_bh6_w23_4, heap_bh6_w23_4_d1 : std_logic;
signal heap_bh6_w22_4, heap_bh6_w22_4_d1 : std_logic;
signal heap_bh6_w21_4, heap_bh6_w21_4_d1 : std_logic;
signal heap_bh6_w20_4, heap_bh6_w20_4_d1 : std_logic;
signal heap_bh6_w19_4, heap_bh6_w19_4_d1 : std_logic;
signal heap_bh6_w18_4, heap_bh6_w18_4_d1 : std_logic;
signal heap_bh6_w17_4, heap_bh6_w17_4_d1 : std_logic;
signal heap_bh6_w16_3, heap_bh6_w16_3_d1 : std_logic;
signal heap_bh6_w15_3, heap_bh6_w15_3_d1 : std_logic;
signal heap_bh6_w14_3, heap_bh6_w14_3_d1 : std_logic;
signal DSP_bh6_ch10_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w30_5, heap_bh6_w30_5_d1 : std_logic;
signal heap_bh6_w29_5, heap_bh6_w29_5_d1 : std_logic;
signal heap_bh6_w28_5, heap_bh6_w28_5_d1 : std_logic;
signal heap_bh6_w27_5, heap_bh6_w27_5_d1 : std_logic;
signal heap_bh6_w26_5, heap_bh6_w26_5_d1 : std_logic;
signal heap_bh6_w25_5, heap_bh6_w25_5_d1 : std_logic;
signal heap_bh6_w24_5, heap_bh6_w24_5_d1 : std_logic;
signal heap_bh6_w23_5, heap_bh6_w23_5_d1 : std_logic;
signal heap_bh6_w22_5, heap_bh6_w22_5_d1 : std_logic;
signal heap_bh6_w21_5, heap_bh6_w21_5_d1 : std_logic;
signal heap_bh6_w20_5, heap_bh6_w20_5_d1 : std_logic;
signal heap_bh6_w19_5, heap_bh6_w19_5_d1 : std_logic;
signal heap_bh6_w18_5, heap_bh6_w18_5_d1 : std_logic;
signal heap_bh6_w17_5, heap_bh6_w17_5_d1 : std_logic;
signal heap_bh6_w16_4, heap_bh6_w16_4_d1 : std_logic;
signal heap_bh6_w15_4, heap_bh6_w15_4_d1 : std_logic;
signal heap_bh6_w14_4, heap_bh6_w14_4_d1 : std_logic;
signal heap_bh6_w13_3, heap_bh6_w13_3_d1 : std_logic;
signal heap_bh6_w12_3, heap_bh6_w12_3_d1 : std_logic;
signal heap_bh6_w11_3, heap_bh6_w11_3_d1 : std_logic;
signal heap_bh6_w10_3, heap_bh6_w10_3_d1 : std_logic;
signal heap_bh6_w9_3, heap_bh6_w9_3_d1 : std_logic;
signal heap_bh6_w8_3, heap_bh6_w8_3_d1 : std_logic;
signal heap_bh6_w7_3, heap_bh6_w7_3_d1 : std_logic;
signal heap_bh6_w6_2, heap_bh6_w6_2_d1 : std_logic;
signal heap_bh6_w5_2, heap_bh6_w5_2_d1 : std_logic;
signal heap_bh6_w4_2, heap_bh6_w4_2_d1 : std_logic;
signal heap_bh6_w3_2, heap_bh6_w3_2_d1 : std_logic;
signal heap_bh6_w2_2, heap_bh6_w2_2_d1 : std_logic;
signal heap_bh6_w1_2, heap_bh6_w1_2_d1 : std_logic;
signal heap_bh6_w0_2, heap_bh6_w0_2_d1 : std_logic;
signal DSP_bh6_ch11_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w6_3, heap_bh6_w6_3_d1 : std_logic;
signal heap_bh6_w5_3, heap_bh6_w5_3_d1 : std_logic;
signal heap_bh6_w4_3, heap_bh6_w4_3_d1 : std_logic;
signal heap_bh6_w3_3, heap_bh6_w3_3_d1 : std_logic;
signal heap_bh6_w2_3, heap_bh6_w2_3_d1 : std_logic;
signal heap_bh6_w1_3, heap_bh6_w1_3_d1 : std_logic;
signal heap_bh6_w0_3, heap_bh6_w0_3_d1 : std_logic;
signal CompressorIn_bh6_0_0 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w0_4 : std_logic;
signal heap_bh6_w1_4 : std_logic;
signal heap_bh6_w2_4 : std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w1_5 : std_logic;
signal heap_bh6_w2_5 : std_logic;
signal heap_bh6_w3_4 : std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_5 : std_logic;
signal heap_bh6_w4_4 : std_logic;
signal heap_bh6_w5_4 : std_logic;
signal CompressorIn_bh6_3_6 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_3_7 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w4_5 : std_logic;
signal heap_bh6_w5_5 : std_logic;
signal heap_bh6_w6_4, heap_bh6_w6_4_d1 : std_logic;
signal CompressorIn_bh6_4_8 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_4_9 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_5 : std_logic;
signal heap_bh6_w7_4 : std_logic;
signal heap_bh6_w8_4 : std_logic;
signal CompressorIn_bh6_5_10 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_5_11 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_5 : std_logic;
signal heap_bh6_w8_5 : std_logic;
signal heap_bh6_w9_4, heap_bh6_w9_4_d1 : std_logic;
signal CompressorIn_bh6_6_12 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_6_13 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_5 : std_logic;
signal heap_bh6_w10_4 : std_logic;
signal heap_bh6_w11_4 : std_logic;
signal CompressorIn_bh6_7_14 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_7_15 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_5 : std_logic;
signal heap_bh6_w11_5 : std_logic;
signal heap_bh6_w12_4, heap_bh6_w12_4_d1 : std_logic;
signal CompressorIn_bh6_8_16 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_8_17 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_5 : std_logic;
signal heap_bh6_w13_4 : std_logic;
signal heap_bh6_w14_5 : std_logic;
signal CompressorIn_bh6_9_18 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_9_19 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_5 : std_logic;
signal heap_bh6_w14_6 : std_logic;
signal heap_bh6_w15_5, heap_bh6_w15_5_d1 : std_logic;
signal CompressorIn_bh6_10_20 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_10_21 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_7 : std_logic;
signal heap_bh6_w15_6 : std_logic;
signal heap_bh6_w16_5 : std_logic;
signal CompressorIn_bh6_11_22 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_11_23 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_7 : std_logic;
signal heap_bh6_w16_6 : std_logic;
signal heap_bh6_w17_6, heap_bh6_w17_6_d1 : std_logic;
signal CompressorIn_bh6_12_24 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_12_25 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_7 : std_logic;
signal heap_bh6_w17_7 : std_logic;
signal heap_bh6_w18_6 : std_logic;
signal CompressorIn_bh6_13_26 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_13_27 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_8 : std_logic;
signal heap_bh6_w18_7 : std_logic;
signal heap_bh6_w19_6, heap_bh6_w19_6_d1 : std_logic;
signal CompressorIn_bh6_14_28 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_14_29 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_8 : std_logic;
signal heap_bh6_w19_7 : std_logic;
signal heap_bh6_w20_6 : std_logic;
signal CompressorIn_bh6_15_30 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_15_31 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_8 : std_logic;
signal heap_bh6_w20_7 : std_logic;
signal heap_bh6_w21_6, heap_bh6_w21_6_d1 : std_logic;
signal CompressorIn_bh6_16_32 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_16_33 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_8 : std_logic;
signal heap_bh6_w21_7 : std_logic;
signal heap_bh6_w22_6 : std_logic;
signal CompressorIn_bh6_17_34 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_17_35 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_8 : std_logic;
signal heap_bh6_w22_7 : std_logic;
signal heap_bh6_w23_6, heap_bh6_w23_6_d1 : std_logic;
signal CompressorIn_bh6_18_36 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_18_37 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_8 : std_logic;
signal heap_bh6_w23_7 : std_logic;
signal heap_bh6_w24_6 : std_logic;
signal CompressorIn_bh6_19_38 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_19_39 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_8 : std_logic;
signal heap_bh6_w24_7 : std_logic;
signal heap_bh6_w25_6, heap_bh6_w25_6_d1 : std_logic;
signal CompressorIn_bh6_20_40 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_20_41 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_8 : std_logic;
signal heap_bh6_w25_7 : std_logic;
signal heap_bh6_w26_6 : std_logic;
signal CompressorIn_bh6_21_42 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_21_43 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_8 : std_logic;
signal heap_bh6_w26_7 : std_logic;
signal heap_bh6_w27_6, heap_bh6_w27_6_d1 : std_logic;
signal CompressorIn_bh6_22_44 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_22_45 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_8 : std_logic;
signal heap_bh6_w27_7 : std_logic;
signal heap_bh6_w28_6 : std_logic;
signal CompressorIn_bh6_23_46 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_23_47 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_8 : std_logic;
signal heap_bh6_w28_7 : std_logic;
signal heap_bh6_w29_6, heap_bh6_w29_6_d1 : std_logic;
signal CompressorIn_bh6_24_48 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_24_49 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_8 : std_logic;
signal heap_bh6_w29_7 : std_logic;
signal heap_bh6_w30_6 : std_logic;
signal CompressorIn_bh6_25_50 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_25_51 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_8 : std_logic;
signal heap_bh6_w30_7 : std_logic;
signal heap_bh6_w31_6, heap_bh6_w31_6_d1 : std_logic;
signal CompressorIn_bh6_26_52 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_26_53 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_8 : std_logic;
signal heap_bh6_w31_7 : std_logic;
signal heap_bh6_w32_6 : std_logic;
signal CompressorIn_bh6_27_54 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_27_55 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w31_8 : std_logic;
signal heap_bh6_w32_7 : std_logic;
signal heap_bh6_w33_6, heap_bh6_w33_6_d1 : std_logic;
signal CompressorIn_bh6_28_56 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_28_57 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_8 : std_logic;
signal heap_bh6_w33_7 : std_logic;
signal heap_bh6_w34_6 : std_logic;
signal CompressorIn_bh6_29_58 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_29_59 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh6_w33_8 : std_logic;
signal heap_bh6_w34_7 : std_logic;
signal heap_bh6_w35_6, heap_bh6_w35_6_d1 : std_logic;
signal CompressorIn_bh6_30_60 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_30_61 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_8 : std_logic;
signal heap_bh6_w35_7 : std_logic;
signal heap_bh6_w36_6 : std_logic;
signal CompressorIn_bh6_31_62 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_31_63 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_8 : std_logic;
signal heap_bh6_w36_7 : std_logic;
signal heap_bh6_w37_6, heap_bh6_w37_6_d1 : std_logic;
signal CompressorIn_bh6_32_64 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_32_65 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_8 : std_logic;
signal heap_bh6_w37_7 : std_logic;
signal heap_bh6_w38_6 : std_logic;
signal CompressorIn_bh6_33_66 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_33_67 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh6_w37_8 : std_logic;
signal heap_bh6_w38_7 : std_logic;
signal heap_bh6_w39_6, heap_bh6_w39_6_d1 : std_logic;
signal CompressorIn_bh6_34_68 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_34_69 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_34_34 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_8 : std_logic;
signal heap_bh6_w39_7 : std_logic;
signal heap_bh6_w40_6 : std_logic;
signal CompressorIn_bh6_35_70 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_35_71 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_35_35 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_8 : std_logic;
signal heap_bh6_w40_7 : std_logic;
signal heap_bh6_w41_6, heap_bh6_w41_6_d1 : std_logic;
signal CompressorIn_bh6_36_72 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_36_73 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_36_36 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_8 : std_logic;
signal heap_bh6_w41_7 : std_logic;
signal heap_bh6_w42_6 : std_logic;
signal CompressorIn_bh6_37_74 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_37_75 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_37_37 :  std_logic_vector(2 downto 0);
signal heap_bh6_w41_8 : std_logic;
signal heap_bh6_w42_7 : std_logic;
signal heap_bh6_w43_6, heap_bh6_w43_6_d1 : std_logic;
signal CompressorIn_bh6_38_76 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_38_77 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_38_38 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_8 : std_logic;
signal heap_bh6_w43_7 : std_logic;
signal heap_bh6_w44_6 : std_logic;
signal CompressorIn_bh6_39_78 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_39_79 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_39_39 :  std_logic_vector(2 downto 0);
signal heap_bh6_w43_8 : std_logic;
signal heap_bh6_w44_7 : std_logic;
signal heap_bh6_w45_6, heap_bh6_w45_6_d1 : std_logic;
signal CompressorIn_bh6_40_80 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_40_81 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_40_40 :  std_logic_vector(2 downto 0);
signal heap_bh6_w44_8 : std_logic;
signal heap_bh6_w45_7 : std_logic;
signal heap_bh6_w46_6 : std_logic;
signal CompressorIn_bh6_41_82 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_41_83 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_41_41 :  std_logic_vector(2 downto 0);
signal heap_bh6_w45_8 : std_logic;
signal heap_bh6_w46_7 : std_logic;
signal heap_bh6_w47_6, heap_bh6_w47_6_d1 : std_logic;
signal CompressorIn_bh6_42_84 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_42_85 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_42_42 :  std_logic_vector(2 downto 0);
signal heap_bh6_w46_8 : std_logic;
signal heap_bh6_w47_7 : std_logic;
signal heap_bh6_w48_6 : std_logic;
signal CompressorIn_bh6_43_86 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_43_87 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_43_43 :  std_logic_vector(2 downto 0);
signal heap_bh6_w47_8 : std_logic;
signal heap_bh6_w48_7 : std_logic;
signal heap_bh6_w49_6, heap_bh6_w49_6_d1 : std_logic;
signal CompressorIn_bh6_44_88 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_44_89 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_44_44 :  std_logic_vector(2 downto 0);
signal heap_bh6_w48_8 : std_logic;
signal heap_bh6_w49_7 : std_logic;
signal heap_bh6_w50_6 : std_logic;
signal CompressorIn_bh6_45_90 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_45_91 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_45_45 :  std_logic_vector(2 downto 0);
signal heap_bh6_w49_8 : std_logic;
signal heap_bh6_w50_7 : std_logic;
signal heap_bh6_w51_6, heap_bh6_w51_6_d1 : std_logic;
signal CompressorIn_bh6_46_92 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_46_93 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_46_46 :  std_logic_vector(2 downto 0);
signal heap_bh6_w50_8 : std_logic;
signal heap_bh6_w51_7 : std_logic;
signal heap_bh6_w52_6 : std_logic;
signal CompressorIn_bh6_47_94 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_47_95 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_47_47 :  std_logic_vector(2 downto 0);
signal heap_bh6_w51_8 : std_logic;
signal heap_bh6_w52_7 : std_logic;
signal heap_bh6_w53_6, heap_bh6_w53_6_d1 : std_logic;
signal CompressorIn_bh6_48_96 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_48_97 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_48_48 :  std_logic_vector(2 downto 0);
signal heap_bh6_w52_8 : std_logic;
signal heap_bh6_w53_7 : std_logic;
signal heap_bh6_w54_6 : std_logic;
signal CompressorIn_bh6_49_98 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_49_99 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_49_49 :  std_logic_vector(2 downto 0);
signal heap_bh6_w53_8 : std_logic;
signal heap_bh6_w54_7 : std_logic;
signal heap_bh6_w55_5, heap_bh6_w55_5_d1 : std_logic;
signal CompressorIn_bh6_50_100 :  std_logic_vector(4 downto 0);
signal CompressorIn_bh6_50_101 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_50_50 :  std_logic_vector(2 downto 0);
signal heap_bh6_w54_8 : std_logic;
signal heap_bh6_w55_6 : std_logic;
signal heap_bh6_w56_5 : std_logic;
signal CompressorIn_bh6_51_102 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_51_103 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_51_51 :  std_logic_vector(2 downto 0);
signal heap_bh6_w55_7 : std_logic;
signal heap_bh6_w56_6 : std_logic;
signal heap_bh6_w57_5, heap_bh6_w57_5_d1 : std_logic;
signal CompressorIn_bh6_52_104 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_52_105 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_52_52 :  std_logic_vector(2 downto 0);
signal heap_bh6_w56_7 : std_logic;
signal heap_bh6_w57_6 : std_logic;
signal heap_bh6_w58_4 : std_logic;
signal CompressorIn_bh6_53_106 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_53_107 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_53_53 :  std_logic_vector(2 downto 0);
signal heap_bh6_w57_7 : std_logic;
signal heap_bh6_w58_5 : std_logic;
signal heap_bh6_w59_4 : std_logic;
signal CompressorIn_bh6_54_108 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_54_109 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_54_54 :  std_logic_vector(2 downto 0);
signal heap_bh6_w58_6 : std_logic;
signal heap_bh6_w59_5 : std_logic;
signal heap_bh6_w60_4 : std_logic;
signal CompressorIn_bh6_55_110 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_55_111 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_55_55 :  std_logic_vector(2 downto 0);
signal heap_bh6_w60_5 : std_logic;
signal heap_bh6_w61_4 : std_logic;
signal heap_bh6_w62_4 : std_logic;
signal CompressorIn_bh6_56_112 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_56_113 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_56_56 :  std_logic_vector(2 downto 0);
signal heap_bh6_w61_5 : std_logic;
signal heap_bh6_w62_5 : std_logic;
signal heap_bh6_w63_4, heap_bh6_w63_4_d1 : std_logic;
signal CompressorIn_bh6_57_114 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_57_115 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_57_57 :  std_logic_vector(2 downto 0);
signal heap_bh6_w63_5 : std_logic;
signal heap_bh6_w64_4 : std_logic;
signal heap_bh6_w65_4 : std_logic;
signal CompressorIn_bh6_58_116 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_58_117 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_58_58 :  std_logic_vector(2 downto 0);
signal heap_bh6_w64_5 : std_logic;
signal heap_bh6_w65_5 : std_logic;
signal heap_bh6_w66_4, heap_bh6_w66_4_d1 : std_logic;
signal CompressorIn_bh6_59_118 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_59_119 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_59_59 :  std_logic_vector(2 downto 0);
signal heap_bh6_w66_5 : std_logic;
signal heap_bh6_w67_4 : std_logic;
signal heap_bh6_w68_4 : std_logic;
signal CompressorIn_bh6_60_120 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_60_121 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_60_60 :  std_logic_vector(2 downto 0);
signal heap_bh6_w67_5 : std_logic;
signal heap_bh6_w68_5 : std_logic;
signal heap_bh6_w69_4, heap_bh6_w69_4_d1 : std_logic;
signal CompressorIn_bh6_61_122 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_61_123 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_61_61 :  std_logic_vector(2 downto 0);
signal heap_bh6_w69_5 : std_logic;
signal heap_bh6_w70_4 : std_logic;
signal heap_bh6_w71_4 : std_logic;
signal CompressorIn_bh6_62_124 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_62_125 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_62_62 :  std_logic_vector(2 downto 0);
signal heap_bh6_w70_5 : std_logic;
signal heap_bh6_w71_5 : std_logic;
signal heap_bh6_w72_3, heap_bh6_w72_3_d1 : std_logic;
signal CompressorIn_bh6_63_126 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_63_127 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_63_63 :  std_logic_vector(2 downto 0);
signal heap_bh6_w72_4 : std_logic;
signal heap_bh6_w73_3 : std_logic;
signal heap_bh6_w74_3 : std_logic;
signal CompressorIn_bh6_64_128 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_64_129 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_64_64 :  std_logic_vector(2 downto 0);
signal heap_bh6_w74_4 : std_logic;
signal heap_bh6_w75_3 : std_logic;
signal heap_bh6_w76_3 : std_logic;
signal CompressorIn_bh6_65_130 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_65_131 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_65_65 :  std_logic_vector(2 downto 0);
signal heap_bh6_w76_4 : std_logic;
signal heap_bh6_w77_3 : std_logic;
signal heap_bh6_w78_3 : std_logic;
signal CompressorIn_bh6_66_132 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_66_133 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_66_66 :  std_logic_vector(2 downto 0);
signal heap_bh6_w78_4 : std_logic;
signal heap_bh6_w79_3 : std_logic;
signal heap_bh6_w80_3 : std_logic;
signal CompressorIn_bh6_67_134 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_67_135 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_67_67 :  std_logic_vector(2 downto 0);
signal heap_bh6_w80_4 : std_logic;
signal heap_bh6_w81_3 : std_logic;
signal heap_bh6_w82_2 : std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1, tempR_bh6_0_d2 : std_logic;
signal CompressorIn_bh6_68_136 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_68_137 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_68_68 :  std_logic_vector(2 downto 0);
signal heap_bh6_w2_6 : std_logic;
signal heap_bh6_w3_6 : std_logic;
signal heap_bh6_w4_6 : std_logic;
signal CompressorIn_bh6_69_138 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_69_139 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_69_69 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_6, heap_bh6_w5_6_d1 : std_logic;
signal heap_bh6_w6_6, heap_bh6_w6_6_d1 : std_logic;
signal heap_bh6_w7_6 : std_logic;
signal CompressorIn_bh6_70_140 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_70_141 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_70_70 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_6, heap_bh6_w8_6_d1 : std_logic;
signal heap_bh6_w9_6, heap_bh6_w9_6_d1 : std_logic;
signal heap_bh6_w10_6 : std_logic;
signal CompressorIn_bh6_71_142 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_71_143 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_71_71 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_6, heap_bh6_w11_6_d1 : std_logic;
signal heap_bh6_w12_6, heap_bh6_w12_6_d1 : std_logic;
signal heap_bh6_w13_6 : std_logic;
signal CompressorIn_bh6_72_144 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_72_145 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_72_72 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_8, heap_bh6_w14_8_d1 : std_logic;
signal heap_bh6_w15_8, heap_bh6_w15_8_d1 : std_logic;
signal heap_bh6_w16_8, heap_bh6_w16_8_d1 : std_logic;
signal CompressorIn_bh6_73_146 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_73_147 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_73_73 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_9, heap_bh6_w16_9_d1 : std_logic;
signal heap_bh6_w17_9, heap_bh6_w17_9_d1 : std_logic;
signal heap_bh6_w18_9, heap_bh6_w18_9_d1 : std_logic;
signal CompressorIn_bh6_74_148 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_74_149 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_74_74 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_10, heap_bh6_w18_10_d1 : std_logic;
signal heap_bh6_w19_9, heap_bh6_w19_9_d1 : std_logic;
signal heap_bh6_w20_9, heap_bh6_w20_9_d1 : std_logic;
signal CompressorIn_bh6_75_150 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_75_151 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_75_75 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_10, heap_bh6_w20_10_d1 : std_logic;
signal heap_bh6_w21_9, heap_bh6_w21_9_d1 : std_logic;
signal heap_bh6_w22_9, heap_bh6_w22_9_d1 : std_logic;
signal CompressorIn_bh6_76_152 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_76_153 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_76_76 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_10, heap_bh6_w22_10_d1 : std_logic;
signal heap_bh6_w23_9, heap_bh6_w23_9_d1 : std_logic;
signal heap_bh6_w24_9, heap_bh6_w24_9_d1 : std_logic;
signal CompressorIn_bh6_77_154 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_77_155 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_77_77 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_10, heap_bh6_w24_10_d1 : std_logic;
signal heap_bh6_w25_9, heap_bh6_w25_9_d1 : std_logic;
signal heap_bh6_w26_9, heap_bh6_w26_9_d1 : std_logic;
signal CompressorIn_bh6_78_156 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_78_157 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_78_78 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_10, heap_bh6_w26_10_d1 : std_logic;
signal heap_bh6_w27_9, heap_bh6_w27_9_d1 : std_logic;
signal heap_bh6_w28_9, heap_bh6_w28_9_d1 : std_logic;
signal CompressorIn_bh6_79_158 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_79_159 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_79_79 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_10, heap_bh6_w28_10_d1 : std_logic;
signal heap_bh6_w29_9, heap_bh6_w29_9_d1 : std_logic;
signal heap_bh6_w30_9, heap_bh6_w30_9_d1 : std_logic;
signal CompressorIn_bh6_80_160 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_80_161 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_80_80 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_10, heap_bh6_w30_10_d1 : std_logic;
signal heap_bh6_w31_9, heap_bh6_w31_9_d1 : std_logic;
signal heap_bh6_w32_9, heap_bh6_w32_9_d1 : std_logic;
signal CompressorIn_bh6_81_162 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_81_163 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_81_81 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_10, heap_bh6_w32_10_d1 : std_logic;
signal heap_bh6_w33_9, heap_bh6_w33_9_d1 : std_logic;
signal heap_bh6_w34_9, heap_bh6_w34_9_d1 : std_logic;
signal CompressorIn_bh6_82_164 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_82_165 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_82_82 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_10, heap_bh6_w34_10_d1 : std_logic;
signal heap_bh6_w35_9, heap_bh6_w35_9_d1 : std_logic;
signal heap_bh6_w36_9, heap_bh6_w36_9_d1 : std_logic;
signal CompressorIn_bh6_83_166 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_83_167 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_83_83 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_10, heap_bh6_w36_10_d1 : std_logic;
signal heap_bh6_w37_9, heap_bh6_w37_9_d1 : std_logic;
signal heap_bh6_w38_9, heap_bh6_w38_9_d1 : std_logic;
signal CompressorIn_bh6_84_168 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_84_169 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_84_84 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_10, heap_bh6_w38_10_d1 : std_logic;
signal heap_bh6_w39_9, heap_bh6_w39_9_d1 : std_logic;
signal heap_bh6_w40_9, heap_bh6_w40_9_d1 : std_logic;
signal CompressorIn_bh6_85_170 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_85_171 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_85_85 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_10, heap_bh6_w40_10_d1 : std_logic;
signal heap_bh6_w41_9, heap_bh6_w41_9_d1 : std_logic;
signal heap_bh6_w42_9, heap_bh6_w42_9_d1 : std_logic;
signal CompressorIn_bh6_86_172 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_86_173 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_86_86 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_10, heap_bh6_w42_10_d1 : std_logic;
signal heap_bh6_w43_9, heap_bh6_w43_9_d1 : std_logic;
signal heap_bh6_w44_9, heap_bh6_w44_9_d1 : std_logic;
signal CompressorIn_bh6_87_174 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_87_175 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_87_87 :  std_logic_vector(2 downto 0);
signal heap_bh6_w44_10, heap_bh6_w44_10_d1 : std_logic;
signal heap_bh6_w45_9, heap_bh6_w45_9_d1 : std_logic;
signal heap_bh6_w46_9, heap_bh6_w46_9_d1 : std_logic;
signal CompressorIn_bh6_88_176 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_88_177 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_88_88 :  std_logic_vector(2 downto 0);
signal heap_bh6_w46_10, heap_bh6_w46_10_d1 : std_logic;
signal heap_bh6_w47_9, heap_bh6_w47_9_d1 : std_logic;
signal heap_bh6_w48_9, heap_bh6_w48_9_d1 : std_logic;
signal CompressorIn_bh6_89_178 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_89_179 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_89_89 :  std_logic_vector(2 downto 0);
signal heap_bh6_w48_10, heap_bh6_w48_10_d1 : std_logic;
signal heap_bh6_w49_9, heap_bh6_w49_9_d1 : std_logic;
signal heap_bh6_w50_9, heap_bh6_w50_9_d1 : std_logic;
signal CompressorIn_bh6_90_180 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_90_181 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_90_90 :  std_logic_vector(2 downto 0);
signal heap_bh6_w50_10, heap_bh6_w50_10_d1 : std_logic;
signal heap_bh6_w51_9, heap_bh6_w51_9_d1 : std_logic;
signal heap_bh6_w52_9, heap_bh6_w52_9_d1 : std_logic;
signal CompressorIn_bh6_91_182 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_91_183 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_91_91 :  std_logic_vector(2 downto 0);
signal heap_bh6_w52_10, heap_bh6_w52_10_d1 : std_logic;
signal heap_bh6_w53_9, heap_bh6_w53_9_d1 : std_logic;
signal heap_bh6_w54_9, heap_bh6_w54_9_d1 : std_logic;
signal CompressorIn_bh6_92_184 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_92_185 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_92_92 :  std_logic_vector(2 downto 0);
signal heap_bh6_w54_10, heap_bh6_w54_10_d1 : std_logic;
signal heap_bh6_w55_8, heap_bh6_w55_8_d1 : std_logic;
signal heap_bh6_w56_8, heap_bh6_w56_8_d1 : std_logic;
signal CompressorIn_bh6_93_186 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_93_187 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_93_93 :  std_logic_vector(2 downto 0);
signal heap_bh6_w56_9, heap_bh6_w56_9_d1 : std_logic;
signal heap_bh6_w57_8, heap_bh6_w57_8_d1 : std_logic;
signal heap_bh6_w58_7, heap_bh6_w58_7_d1 : std_logic;
signal CompressorIn_bh6_94_188 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_94_189 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_94_94 :  std_logic_vector(2 downto 0);
signal heap_bh6_w58_8, heap_bh6_w58_8_d1 : std_logic;
signal heap_bh6_w59_6 : std_logic;
signal heap_bh6_w60_6 : std_logic;
signal CompressorIn_bh6_95_190 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_95_191 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_95_95 :  std_logic_vector(2 downto 0);
signal heap_bh6_w62_6, heap_bh6_w62_6_d1 : std_logic;
signal heap_bh6_w63_6, heap_bh6_w63_6_d1 : std_logic;
signal heap_bh6_w64_6 : std_logic;
signal CompressorIn_bh6_96_192 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_96_193 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_96_96 :  std_logic_vector(2 downto 0);
signal heap_bh6_w65_6, heap_bh6_w65_6_d1 : std_logic;
signal heap_bh6_w66_6, heap_bh6_w66_6_d1 : std_logic;
signal heap_bh6_w67_6 : std_logic;
signal CompressorIn_bh6_97_194 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_97_195 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_97_97 :  std_logic_vector(2 downto 0);
signal heap_bh6_w68_6, heap_bh6_w68_6_d1 : std_logic;
signal heap_bh6_w69_6, heap_bh6_w69_6_d1 : std_logic;
signal heap_bh6_w70_6 : std_logic;
signal CompressorIn_bh6_98_196 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_98_197 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_98_98 :  std_logic_vector(2 downto 0);
signal heap_bh6_w71_6, heap_bh6_w71_6_d1 : std_logic;
signal heap_bh6_w72_5, heap_bh6_w72_5_d1 : std_logic;
signal heap_bh6_w73_4 : std_logic;
signal CompressorIn_bh6_99_198 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_99_199 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_99_99 :  std_logic_vector(2 downto 0);
signal heap_bh6_w82_3, heap_bh6_w82_3_d1 : std_logic;
signal heap_bh6_w83_2, heap_bh6_w83_2_d1 : std_logic;
signal heap_bh6_w84_2 : std_logic;
signal inAdder0_bh6_0 :  std_logic_vector(3 downto 0);
signal inAdder1_bh6_0 :  std_logic_vector(3 downto 0);
signal cin_bh6_0 : std_logic;
signal outAdder_bh6_0 :  std_logic_vector(3 downto 0);
signal heap_bh6_w1_6 : std_logic;
signal heap_bh6_w2_7 : std_logic;
signal heap_bh6_w3_7 : std_logic;
signal heap_bh6_w4_7, heap_bh6_w4_7_d1 : std_logic;
signal tempR_bh6_1, tempR_bh6_1_d1, tempR_bh6_1_d2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_100_200 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_100_100 :  std_logic_vector(1 downto 0);
signal heap_bh6_w4_8, heap_bh6_w4_8_d1 : std_logic;
signal heap_bh6_w5_7, heap_bh6_w5_7_d1 : std_logic;
signal CompressorIn_bh6_101_201 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_101_101 :  std_logic_vector(1 downto 0);
signal heap_bh6_w7_7, heap_bh6_w7_7_d1 : std_logic;
signal heap_bh6_w8_7, heap_bh6_w8_7_d1 : std_logic;
signal CompressorIn_bh6_102_202 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_102_102 :  std_logic_vector(1 downto 0);
signal heap_bh6_w10_7, heap_bh6_w10_7_d1 : std_logic;
signal heap_bh6_w11_7, heap_bh6_w11_7_d1 : std_logic;
signal CompressorIn_bh6_103_203 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_103_103 :  std_logic_vector(1 downto 0);
signal heap_bh6_w13_7, heap_bh6_w13_7_d1 : std_logic;
signal heap_bh6_w14_9, heap_bh6_w14_9_d1 : std_logic;
signal CompressorIn_bh6_104_204 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_104_104 :  std_logic_vector(1 downto 0);
signal heap_bh6_w59_7, heap_bh6_w59_7_d1 : std_logic;
signal heap_bh6_w60_7, heap_bh6_w60_7_d1 : std_logic;
signal inAdder0_bh6_1 :  std_logic_vector(2 downto 0);
signal inAdder1_bh6_1 :  std_logic_vector(2 downto 0);
signal cin_bh6_1 : std_logic;
signal outAdder_bh6_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w60_8, heap_bh6_w60_8_d1 : std_logic;
signal heap_bh6_w61_6, heap_bh6_w61_6_d1 : std_logic;
signal heap_bh6_w62_7, heap_bh6_w62_7_d1 : std_logic;
signal CompressorIn_bh6_105_205 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_105_105 :  std_logic_vector(1 downto 0);
signal heap_bh6_w64_7, heap_bh6_w64_7_d1 : std_logic;
signal heap_bh6_w65_7, heap_bh6_w65_7_d1 : std_logic;
signal CompressorIn_bh6_106_206 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_106_106 :  std_logic_vector(1 downto 0);
signal heap_bh6_w67_7, heap_bh6_w67_7_d1 : std_logic;
signal heap_bh6_w68_7, heap_bh6_w68_7_d1 : std_logic;
signal CompressorIn_bh6_107_207 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_107_107 :  std_logic_vector(1 downto 0);
signal heap_bh6_w70_7, heap_bh6_w70_7_d1 : std_logic;
signal heap_bh6_w71_7, heap_bh6_w71_7_d1 : std_logic;
signal inAdder0_bh6_2 :  std_logic_vector(9 downto 0);
signal inAdder1_bh6_2 :  std_logic_vector(9 downto 0);
signal cin_bh6_2 : std_logic;
signal outAdder_bh6_2 :  std_logic_vector(9 downto 0);
signal heap_bh6_w73_5, heap_bh6_w73_5_d1 : std_logic;
signal heap_bh6_w74_5, heap_bh6_w74_5_d1 : std_logic;
signal heap_bh6_w75_4, heap_bh6_w75_4_d1 : std_logic;
signal heap_bh6_w76_5, heap_bh6_w76_5_d1 : std_logic;
signal heap_bh6_w77_4, heap_bh6_w77_4_d1 : std_logic;
signal heap_bh6_w78_5, heap_bh6_w78_5_d1 : std_logic;
signal heap_bh6_w79_4, heap_bh6_w79_4_d1 : std_logic;
signal heap_bh6_w80_5, heap_bh6_w80_5_d1 : std_logic;
signal heap_bh6_w81_4, heap_bh6_w81_4_d1 : std_logic;
signal heap_bh6_w82_4, heap_bh6_w82_4_d1 : std_logic;
signal inAdder0_bh6_3 :  std_logic_vector(5 downto 0);
signal inAdder1_bh6_3 :  std_logic_vector(5 downto 0);
signal cin_bh6_3 : std_logic;
signal outAdder_bh6_3 :  std_logic_vector(5 downto 0);
signal heap_bh6_w84_3, heap_bh6_w84_3_d1 : std_logic;
signal heap_bh6_w85_2, heap_bh6_w85_2_d1 : std_logic;
signal heap_bh6_w86_2, heap_bh6_w86_2_d1 : std_logic;
signal heap_bh6_w87_2, heap_bh6_w87_2_d1 : std_logic;
signal heap_bh6_w88_2, heap_bh6_w88_2_d1 : std_logic;
signal heap_bh6_w89_1, heap_bh6_w89_1_d1 : std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(102 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(102 downto 0);
signal finalAdderCin_bh6 : std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(102 downto 0);
signal CompressionResult6 :  std_logic_vector(106 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w105_0_d1 <=  heap_bh6_w105_0;
            heap_bh6_w105_0_d2 <=  heap_bh6_w105_0_d1;
            heap_bh6_w104_0_d1 <=  heap_bh6_w104_0;
            heap_bh6_w104_0_d2 <=  heap_bh6_w104_0_d1;
            heap_bh6_w103_0_d1 <=  heap_bh6_w103_0;
            heap_bh6_w103_0_d2 <=  heap_bh6_w103_0_d1;
            heap_bh6_w102_0_d1 <=  heap_bh6_w102_0;
            heap_bh6_w102_0_d2 <=  heap_bh6_w102_0_d1;
            heap_bh6_w101_0_d1 <=  heap_bh6_w101_0;
            heap_bh6_w101_0_d2 <=  heap_bh6_w101_0_d1;
            heap_bh6_w100_0_d1 <=  heap_bh6_w100_0;
            heap_bh6_w100_0_d2 <=  heap_bh6_w100_0_d1;
            heap_bh6_w99_0_d1 <=  heap_bh6_w99_0;
            heap_bh6_w99_0_d2 <=  heap_bh6_w99_0_d1;
            heap_bh6_w98_0_d1 <=  heap_bh6_w98_0;
            heap_bh6_w98_0_d2 <=  heap_bh6_w98_0_d1;
            heap_bh6_w97_0_d1 <=  heap_bh6_w97_0;
            heap_bh6_w97_0_d2 <=  heap_bh6_w97_0_d1;
            heap_bh6_w96_0_d1 <=  heap_bh6_w96_0;
            heap_bh6_w96_0_d2 <=  heap_bh6_w96_0_d1;
            heap_bh6_w95_0_d1 <=  heap_bh6_w95_0;
            heap_bh6_w95_0_d2 <=  heap_bh6_w95_0_d1;
            heap_bh6_w94_0_d1 <=  heap_bh6_w94_0;
            heap_bh6_w94_0_d2 <=  heap_bh6_w94_0_d1;
            heap_bh6_w93_0_d1 <=  heap_bh6_w93_0;
            heap_bh6_w93_0_d2 <=  heap_bh6_w93_0_d1;
            heap_bh6_w92_0_d1 <=  heap_bh6_w92_0;
            heap_bh6_w92_0_d2 <=  heap_bh6_w92_0_d1;
            heap_bh6_w91_0_d1 <=  heap_bh6_w91_0;
            heap_bh6_w91_0_d2 <=  heap_bh6_w91_0_d1;
            heap_bh6_w90_0_d1 <=  heap_bh6_w90_0;
            heap_bh6_w90_0_d2 <=  heap_bh6_w90_0_d1;
            heap_bh6_w89_0_d1 <=  heap_bh6_w89_0;
            heap_bh6_w89_0_d2 <=  heap_bh6_w89_0_d1;
            heap_bh6_w88_0_d1 <=  heap_bh6_w88_0;
            heap_bh6_w87_0_d1 <=  heap_bh6_w87_0;
            heap_bh6_w86_0_d1 <=  heap_bh6_w86_0;
            heap_bh6_w85_0_d1 <=  heap_bh6_w85_0;
            heap_bh6_w84_0_d1 <=  heap_bh6_w84_0;
            heap_bh6_w83_0_d1 <=  heap_bh6_w83_0;
            heap_bh6_w82_0_d1 <=  heap_bh6_w82_0;
            heap_bh6_w81_0_d1 <=  heap_bh6_w81_0;
            heap_bh6_w80_0_d1 <=  heap_bh6_w80_0;
            heap_bh6_w79_0_d1 <=  heap_bh6_w79_0;
            heap_bh6_w78_0_d1 <=  heap_bh6_w78_0;
            heap_bh6_w77_0_d1 <=  heap_bh6_w77_0;
            heap_bh6_w76_0_d1 <=  heap_bh6_w76_0;
            heap_bh6_w75_0_d1 <=  heap_bh6_w75_0;
            heap_bh6_w74_0_d1 <=  heap_bh6_w74_0;
            heap_bh6_w73_0_d1 <=  heap_bh6_w73_0;
            heap_bh6_w72_0_d1 <=  heap_bh6_w72_0;
            heap_bh6_w71_0_d1 <=  heap_bh6_w71_0;
            heap_bh6_w70_0_d1 <=  heap_bh6_w70_0;
            heap_bh6_w69_0_d1 <=  heap_bh6_w69_0;
            heap_bh6_w68_0_d1 <=  heap_bh6_w68_0;
            heap_bh6_w67_0_d1 <=  heap_bh6_w67_0;
            heap_bh6_w66_0_d1 <=  heap_bh6_w66_0;
            heap_bh6_w65_0_d1 <=  heap_bh6_w65_0;
            heap_bh6_w81_1_d1 <=  heap_bh6_w81_1;
            heap_bh6_w80_1_d1 <=  heap_bh6_w80_1;
            heap_bh6_w79_1_d1 <=  heap_bh6_w79_1;
            heap_bh6_w78_1_d1 <=  heap_bh6_w78_1;
            heap_bh6_w77_1_d1 <=  heap_bh6_w77_1;
            heap_bh6_w76_1_d1 <=  heap_bh6_w76_1;
            heap_bh6_w75_1_d1 <=  heap_bh6_w75_1;
            heap_bh6_w74_1_d1 <=  heap_bh6_w74_1;
            heap_bh6_w73_1_d1 <=  heap_bh6_w73_1;
            heap_bh6_w72_1_d1 <=  heap_bh6_w72_1;
            heap_bh6_w71_1_d1 <=  heap_bh6_w71_1;
            heap_bh6_w70_1_d1 <=  heap_bh6_w70_1;
            heap_bh6_w69_1_d1 <=  heap_bh6_w69_1;
            heap_bh6_w68_1_d1 <=  heap_bh6_w68_1;
            heap_bh6_w67_1_d1 <=  heap_bh6_w67_1;
            heap_bh6_w66_1_d1 <=  heap_bh6_w66_1;
            heap_bh6_w65_1_d1 <=  heap_bh6_w65_1;
            heap_bh6_w64_0_d1 <=  heap_bh6_w64_0;
            heap_bh6_w63_0_d1 <=  heap_bh6_w63_0;
            heap_bh6_w62_0_d1 <=  heap_bh6_w62_0;
            heap_bh6_w61_0_d1 <=  heap_bh6_w61_0;
            heap_bh6_w60_0_d1 <=  heap_bh6_w60_0;
            heap_bh6_w59_0_d1 <=  heap_bh6_w59_0;
            heap_bh6_w58_0_d1 <=  heap_bh6_w58_0;
            heap_bh6_w57_0_d1 <=  heap_bh6_w57_0;
            heap_bh6_w56_0_d1 <=  heap_bh6_w56_0;
            heap_bh6_w55_0_d1 <=  heap_bh6_w55_0;
            heap_bh6_w54_0_d1 <=  heap_bh6_w54_0;
            heap_bh6_w53_0_d1 <=  heap_bh6_w53_0;
            heap_bh6_w52_0_d1 <=  heap_bh6_w52_0;
            heap_bh6_w51_0_d1 <=  heap_bh6_w51_0;
            heap_bh6_w50_0_d1 <=  heap_bh6_w50_0;
            heap_bh6_w49_0_d1 <=  heap_bh6_w49_0;
            heap_bh6_w48_0_d1 <=  heap_bh6_w48_0;
            heap_bh6_w47_0_d1 <=  heap_bh6_w47_0;
            heap_bh6_w46_0_d1 <=  heap_bh6_w46_0;
            heap_bh6_w45_0_d1 <=  heap_bh6_w45_0;
            heap_bh6_w44_0_d1 <=  heap_bh6_w44_0;
            heap_bh6_w43_0_d1 <=  heap_bh6_w43_0;
            heap_bh6_w42_0_d1 <=  heap_bh6_w42_0;
            heap_bh6_w41_0_d1 <=  heap_bh6_w41_0;
            heap_bh6_w57_1_d1 <=  heap_bh6_w57_1;
            heap_bh6_w56_1_d1 <=  heap_bh6_w56_1;
            heap_bh6_w55_1_d1 <=  heap_bh6_w55_1;
            heap_bh6_w54_1_d1 <=  heap_bh6_w54_1;
            heap_bh6_w53_1_d1 <=  heap_bh6_w53_1;
            heap_bh6_w52_1_d1 <=  heap_bh6_w52_1;
            heap_bh6_w51_1_d1 <=  heap_bh6_w51_1;
            heap_bh6_w50_1_d1 <=  heap_bh6_w50_1;
            heap_bh6_w49_1_d1 <=  heap_bh6_w49_1;
            heap_bh6_w48_1_d1 <=  heap_bh6_w48_1;
            heap_bh6_w47_1_d1 <=  heap_bh6_w47_1;
            heap_bh6_w46_1_d1 <=  heap_bh6_w46_1;
            heap_bh6_w45_1_d1 <=  heap_bh6_w45_1;
            heap_bh6_w44_1_d1 <=  heap_bh6_w44_1;
            heap_bh6_w43_1_d1 <=  heap_bh6_w43_1;
            heap_bh6_w42_1_d1 <=  heap_bh6_w42_1;
            heap_bh6_w41_1_d1 <=  heap_bh6_w41_1;
            heap_bh6_w40_0_d1 <=  heap_bh6_w40_0;
            heap_bh6_w39_0_d1 <=  heap_bh6_w39_0;
            heap_bh6_w38_0_d1 <=  heap_bh6_w38_0;
            heap_bh6_w37_0_d1 <=  heap_bh6_w37_0;
            heap_bh6_w36_0_d1 <=  heap_bh6_w36_0;
            heap_bh6_w35_0_d1 <=  heap_bh6_w35_0;
            heap_bh6_w34_0_d1 <=  heap_bh6_w34_0;
            heap_bh6_w33_0_d1 <=  heap_bh6_w33_0;
            heap_bh6_w32_0_d1 <=  heap_bh6_w32_0;
            heap_bh6_w31_0_d1 <=  heap_bh6_w31_0;
            heap_bh6_w30_0_d1 <=  heap_bh6_w30_0;
            heap_bh6_w29_0_d1 <=  heap_bh6_w29_0;
            heap_bh6_w28_0_d1 <=  heap_bh6_w28_0;
            heap_bh6_w27_0_d1 <=  heap_bh6_w27_0;
            heap_bh6_w26_0_d1 <=  heap_bh6_w26_0;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w20_0_d1 <=  heap_bh6_w20_0;
            heap_bh6_w19_0_d1 <=  heap_bh6_w19_0;
            heap_bh6_w18_0_d1 <=  heap_bh6_w18_0;
            heap_bh6_w17_0_d1 <=  heap_bh6_w17_0;
            heap_bh6_w88_1_d1 <=  heap_bh6_w88_1;
            heap_bh6_w87_1_d1 <=  heap_bh6_w87_1;
            heap_bh6_w86_1_d1 <=  heap_bh6_w86_1;
            heap_bh6_w85_1_d1 <=  heap_bh6_w85_1;
            heap_bh6_w84_1_d1 <=  heap_bh6_w84_1;
            heap_bh6_w83_1_d1 <=  heap_bh6_w83_1;
            heap_bh6_w82_1_d1 <=  heap_bh6_w82_1;
            heap_bh6_w81_2_d1 <=  heap_bh6_w81_2;
            heap_bh6_w80_2_d1 <=  heap_bh6_w80_2;
            heap_bh6_w79_2_d1 <=  heap_bh6_w79_2;
            heap_bh6_w78_2_d1 <=  heap_bh6_w78_2;
            heap_bh6_w77_2_d1 <=  heap_bh6_w77_2;
            heap_bh6_w76_2_d1 <=  heap_bh6_w76_2;
            heap_bh6_w75_2_d1 <=  heap_bh6_w75_2;
            heap_bh6_w74_2_d1 <=  heap_bh6_w74_2;
            heap_bh6_w73_2_d1 <=  heap_bh6_w73_2;
            heap_bh6_w72_2_d1 <=  heap_bh6_w72_2;
            heap_bh6_w71_2_d1 <=  heap_bh6_w71_2;
            heap_bh6_w70_2_d1 <=  heap_bh6_w70_2;
            heap_bh6_w69_2_d1 <=  heap_bh6_w69_2;
            heap_bh6_w68_2_d1 <=  heap_bh6_w68_2;
            heap_bh6_w67_2_d1 <=  heap_bh6_w67_2;
            heap_bh6_w66_2_d1 <=  heap_bh6_w66_2;
            heap_bh6_w65_2_d1 <=  heap_bh6_w65_2;
            heap_bh6_w64_1_d1 <=  heap_bh6_w64_1;
            heap_bh6_w63_1_d1 <=  heap_bh6_w63_1;
            heap_bh6_w62_1_d1 <=  heap_bh6_w62_1;
            heap_bh6_w61_1_d1 <=  heap_bh6_w61_1;
            heap_bh6_w60_1_d1 <=  heap_bh6_w60_1;
            heap_bh6_w59_1_d1 <=  heap_bh6_w59_1;
            heap_bh6_w58_1_d1 <=  heap_bh6_w58_1;
            heap_bh6_w57_2_d1 <=  heap_bh6_w57_2;
            heap_bh6_w56_2_d1 <=  heap_bh6_w56_2;
            heap_bh6_w55_2_d1 <=  heap_bh6_w55_2;
            heap_bh6_w54_2_d1 <=  heap_bh6_w54_2;
            heap_bh6_w53_2_d1 <=  heap_bh6_w53_2;
            heap_bh6_w52_2_d1 <=  heap_bh6_w52_2;
            heap_bh6_w51_2_d1 <=  heap_bh6_w51_2;
            heap_bh6_w50_2_d1 <=  heap_bh6_w50_2;
            heap_bh6_w49_2_d1 <=  heap_bh6_w49_2;
            heap_bh6_w48_2_d1 <=  heap_bh6_w48_2;
            heap_bh6_w64_2_d1 <=  heap_bh6_w64_2;
            heap_bh6_w63_2_d1 <=  heap_bh6_w63_2;
            heap_bh6_w62_2_d1 <=  heap_bh6_w62_2;
            heap_bh6_w61_2_d1 <=  heap_bh6_w61_2;
            heap_bh6_w60_2_d1 <=  heap_bh6_w60_2;
            heap_bh6_w59_2_d1 <=  heap_bh6_w59_2;
            heap_bh6_w58_2_d1 <=  heap_bh6_w58_2;
            heap_bh6_w57_3_d1 <=  heap_bh6_w57_3;
            heap_bh6_w56_3_d1 <=  heap_bh6_w56_3;
            heap_bh6_w55_3_d1 <=  heap_bh6_w55_3;
            heap_bh6_w54_3_d1 <=  heap_bh6_w54_3;
            heap_bh6_w53_3_d1 <=  heap_bh6_w53_3;
            heap_bh6_w52_3_d1 <=  heap_bh6_w52_3;
            heap_bh6_w51_3_d1 <=  heap_bh6_w51_3;
            heap_bh6_w50_3_d1 <=  heap_bh6_w50_3;
            heap_bh6_w49_3_d1 <=  heap_bh6_w49_3;
            heap_bh6_w48_3_d1 <=  heap_bh6_w48_3;
            heap_bh6_w47_2_d1 <=  heap_bh6_w47_2;
            heap_bh6_w46_2_d1 <=  heap_bh6_w46_2;
            heap_bh6_w45_2_d1 <=  heap_bh6_w45_2;
            heap_bh6_w44_2_d1 <=  heap_bh6_w44_2;
            heap_bh6_w43_2_d1 <=  heap_bh6_w43_2;
            heap_bh6_w42_2_d1 <=  heap_bh6_w42_2;
            heap_bh6_w41_2_d1 <=  heap_bh6_w41_2;
            heap_bh6_w40_1_d1 <=  heap_bh6_w40_1;
            heap_bh6_w39_1_d1 <=  heap_bh6_w39_1;
            heap_bh6_w38_1_d1 <=  heap_bh6_w38_1;
            heap_bh6_w37_1_d1 <=  heap_bh6_w37_1;
            heap_bh6_w36_1_d1 <=  heap_bh6_w36_1;
            heap_bh6_w35_1_d1 <=  heap_bh6_w35_1;
            heap_bh6_w34_1_d1 <=  heap_bh6_w34_1;
            heap_bh6_w33_1_d1 <=  heap_bh6_w33_1;
            heap_bh6_w32_1_d1 <=  heap_bh6_w32_1;
            heap_bh6_w31_1_d1 <=  heap_bh6_w31_1;
            heap_bh6_w30_1_d1 <=  heap_bh6_w30_1;
            heap_bh6_w29_1_d1 <=  heap_bh6_w29_1;
            heap_bh6_w28_1_d1 <=  heap_bh6_w28_1;
            heap_bh6_w27_1_d1 <=  heap_bh6_w27_1;
            heap_bh6_w26_1_d1 <=  heap_bh6_w26_1;
            heap_bh6_w25_1_d1 <=  heap_bh6_w25_1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
            heap_bh6_w40_2_d1 <=  heap_bh6_w40_2;
            heap_bh6_w39_2_d1 <=  heap_bh6_w39_2;
            heap_bh6_w38_2_d1 <=  heap_bh6_w38_2;
            heap_bh6_w37_2_d1 <=  heap_bh6_w37_2;
            heap_bh6_w36_2_d1 <=  heap_bh6_w36_2;
            heap_bh6_w35_2_d1 <=  heap_bh6_w35_2;
            heap_bh6_w34_2_d1 <=  heap_bh6_w34_2;
            heap_bh6_w33_2_d1 <=  heap_bh6_w33_2;
            heap_bh6_w32_2_d1 <=  heap_bh6_w32_2;
            heap_bh6_w31_2_d1 <=  heap_bh6_w31_2;
            heap_bh6_w30_2_d1 <=  heap_bh6_w30_2;
            heap_bh6_w29_2_d1 <=  heap_bh6_w29_2;
            heap_bh6_w28_2_d1 <=  heap_bh6_w28_2;
            heap_bh6_w27_2_d1 <=  heap_bh6_w27_2;
            heap_bh6_w26_2_d1 <=  heap_bh6_w26_2;
            heap_bh6_w25_2_d1 <=  heap_bh6_w25_2;
            heap_bh6_w24_2_d1 <=  heap_bh6_w24_2;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_1_d1 <=  heap_bh6_w21_1;
            heap_bh6_w20_1_d1 <=  heap_bh6_w20_1;
            heap_bh6_w19_1_d1 <=  heap_bh6_w19_1;
            heap_bh6_w18_1_d1 <=  heap_bh6_w18_1;
            heap_bh6_w17_1_d1 <=  heap_bh6_w17_1;
            heap_bh6_w16_0_d1 <=  heap_bh6_w16_0;
            heap_bh6_w15_0_d1 <=  heap_bh6_w15_0;
            heap_bh6_w14_0_d1 <=  heap_bh6_w14_0;
            heap_bh6_w13_0_d1 <=  heap_bh6_w13_0;
            heap_bh6_w12_0_d1 <=  heap_bh6_w12_0;
            heap_bh6_w11_0_d1 <=  heap_bh6_w11_0;
            heap_bh6_w10_0_d1 <=  heap_bh6_w10_0;
            heap_bh6_w9_0_d1 <=  heap_bh6_w9_0;
            heap_bh6_w8_0_d1 <=  heap_bh6_w8_0;
            heap_bh6_w7_0_d1 <=  heap_bh6_w7_0;
            heap_bh6_w6_0_d1 <=  heap_bh6_w6_0;
            heap_bh6_w5_0_d1 <=  heap_bh6_w5_0;
            heap_bh6_w4_0_d1 <=  heap_bh6_w4_0;
            heap_bh6_w3_0_d1 <=  heap_bh6_w3_0;
            heap_bh6_w2_0_d1 <=  heap_bh6_w2_0;
            heap_bh6_w1_0_d1 <=  heap_bh6_w1_0;
            heap_bh6_w0_0_d1 <=  heap_bh6_w0_0;
            heap_bh6_w71_3_d1 <=  heap_bh6_w71_3;
            heap_bh6_w70_3_d1 <=  heap_bh6_w70_3;
            heap_bh6_w69_3_d1 <=  heap_bh6_w69_3;
            heap_bh6_w68_3_d1 <=  heap_bh6_w68_3;
            heap_bh6_w67_3_d1 <=  heap_bh6_w67_3;
            heap_bh6_w66_3_d1 <=  heap_bh6_w66_3;
            heap_bh6_w65_3_d1 <=  heap_bh6_w65_3;
            heap_bh6_w64_3_d1 <=  heap_bh6_w64_3;
            heap_bh6_w63_3_d1 <=  heap_bh6_w63_3;
            heap_bh6_w62_3_d1 <=  heap_bh6_w62_3;
            heap_bh6_w61_3_d1 <=  heap_bh6_w61_3;
            heap_bh6_w60_3_d1 <=  heap_bh6_w60_3;
            heap_bh6_w59_3_d1 <=  heap_bh6_w59_3;
            heap_bh6_w58_3_d1 <=  heap_bh6_w58_3;
            heap_bh6_w57_4_d1 <=  heap_bh6_w57_4;
            heap_bh6_w56_4_d1 <=  heap_bh6_w56_4;
            heap_bh6_w55_4_d1 <=  heap_bh6_w55_4;
            heap_bh6_w54_4_d1 <=  heap_bh6_w54_4;
            heap_bh6_w53_4_d1 <=  heap_bh6_w53_4;
            heap_bh6_w52_4_d1 <=  heap_bh6_w52_4;
            heap_bh6_w51_4_d1 <=  heap_bh6_w51_4;
            heap_bh6_w50_4_d1 <=  heap_bh6_w50_4;
            heap_bh6_w49_4_d1 <=  heap_bh6_w49_4;
            heap_bh6_w48_4_d1 <=  heap_bh6_w48_4;
            heap_bh6_w47_3_d1 <=  heap_bh6_w47_3;
            heap_bh6_w46_3_d1 <=  heap_bh6_w46_3;
            heap_bh6_w45_3_d1 <=  heap_bh6_w45_3;
            heap_bh6_w44_3_d1 <=  heap_bh6_w44_3;
            heap_bh6_w43_3_d1 <=  heap_bh6_w43_3;
            heap_bh6_w42_3_d1 <=  heap_bh6_w42_3;
            heap_bh6_w41_3_d1 <=  heap_bh6_w41_3;
            heap_bh6_w40_3_d1 <=  heap_bh6_w40_3;
            heap_bh6_w39_3_d1 <=  heap_bh6_w39_3;
            heap_bh6_w38_3_d1 <=  heap_bh6_w38_3;
            heap_bh6_w37_3_d1 <=  heap_bh6_w37_3;
            heap_bh6_w36_3_d1 <=  heap_bh6_w36_3;
            heap_bh6_w35_3_d1 <=  heap_bh6_w35_3;
            heap_bh6_w34_3_d1 <=  heap_bh6_w34_3;
            heap_bh6_w33_3_d1 <=  heap_bh6_w33_3;
            heap_bh6_w32_3_d1 <=  heap_bh6_w32_3;
            heap_bh6_w31_3_d1 <=  heap_bh6_w31_3;
            heap_bh6_w47_4_d1 <=  heap_bh6_w47_4;
            heap_bh6_w46_4_d1 <=  heap_bh6_w46_4;
            heap_bh6_w45_4_d1 <=  heap_bh6_w45_4;
            heap_bh6_w44_4_d1 <=  heap_bh6_w44_4;
            heap_bh6_w43_4_d1 <=  heap_bh6_w43_4;
            heap_bh6_w42_4_d1 <=  heap_bh6_w42_4;
            heap_bh6_w41_4_d1 <=  heap_bh6_w41_4;
            heap_bh6_w40_4_d1 <=  heap_bh6_w40_4;
            heap_bh6_w39_4_d1 <=  heap_bh6_w39_4;
            heap_bh6_w38_4_d1 <=  heap_bh6_w38_4;
            heap_bh6_w37_4_d1 <=  heap_bh6_w37_4;
            heap_bh6_w36_4_d1 <=  heap_bh6_w36_4;
            heap_bh6_w35_4_d1 <=  heap_bh6_w35_4;
            heap_bh6_w34_4_d1 <=  heap_bh6_w34_4;
            heap_bh6_w33_4_d1 <=  heap_bh6_w33_4;
            heap_bh6_w32_4_d1 <=  heap_bh6_w32_4;
            heap_bh6_w31_4_d1 <=  heap_bh6_w31_4;
            heap_bh6_w30_3_d1 <=  heap_bh6_w30_3;
            heap_bh6_w29_3_d1 <=  heap_bh6_w29_3;
            heap_bh6_w28_3_d1 <=  heap_bh6_w28_3;
            heap_bh6_w27_3_d1 <=  heap_bh6_w27_3;
            heap_bh6_w26_3_d1 <=  heap_bh6_w26_3;
            heap_bh6_w25_3_d1 <=  heap_bh6_w25_3;
            heap_bh6_w24_3_d1 <=  heap_bh6_w24_3;
            heap_bh6_w23_2_d1 <=  heap_bh6_w23_2;
            heap_bh6_w22_2_d1 <=  heap_bh6_w22_2;
            heap_bh6_w21_2_d1 <=  heap_bh6_w21_2;
            heap_bh6_w20_2_d1 <=  heap_bh6_w20_2;
            heap_bh6_w19_2_d1 <=  heap_bh6_w19_2;
            heap_bh6_w18_2_d1 <=  heap_bh6_w18_2;
            heap_bh6_w17_2_d1 <=  heap_bh6_w17_2;
            heap_bh6_w16_1_d1 <=  heap_bh6_w16_1;
            heap_bh6_w15_1_d1 <=  heap_bh6_w15_1;
            heap_bh6_w14_1_d1 <=  heap_bh6_w14_1;
            heap_bh6_w13_1_d1 <=  heap_bh6_w13_1;
            heap_bh6_w12_1_d1 <=  heap_bh6_w12_1;
            heap_bh6_w11_1_d1 <=  heap_bh6_w11_1;
            heap_bh6_w10_1_d1 <=  heap_bh6_w10_1;
            heap_bh6_w9_1_d1 <=  heap_bh6_w9_1;
            heap_bh6_w8_1_d1 <=  heap_bh6_w8_1;
            heap_bh6_w7_1_d1 <=  heap_bh6_w7_1;
            heap_bh6_w23_3_d1 <=  heap_bh6_w23_3;
            heap_bh6_w22_3_d1 <=  heap_bh6_w22_3;
            heap_bh6_w21_3_d1 <=  heap_bh6_w21_3;
            heap_bh6_w20_3_d1 <=  heap_bh6_w20_3;
            heap_bh6_w19_3_d1 <=  heap_bh6_w19_3;
            heap_bh6_w18_3_d1 <=  heap_bh6_w18_3;
            heap_bh6_w17_3_d1 <=  heap_bh6_w17_3;
            heap_bh6_w16_2_d1 <=  heap_bh6_w16_2;
            heap_bh6_w15_2_d1 <=  heap_bh6_w15_2;
            heap_bh6_w14_2_d1 <=  heap_bh6_w14_2;
            heap_bh6_w13_2_d1 <=  heap_bh6_w13_2;
            heap_bh6_w12_2_d1 <=  heap_bh6_w12_2;
            heap_bh6_w11_2_d1 <=  heap_bh6_w11_2;
            heap_bh6_w10_2_d1 <=  heap_bh6_w10_2;
            heap_bh6_w9_2_d1 <=  heap_bh6_w9_2;
            heap_bh6_w8_2_d1 <=  heap_bh6_w8_2;
            heap_bh6_w7_2_d1 <=  heap_bh6_w7_2;
            heap_bh6_w6_1_d1 <=  heap_bh6_w6_1;
            heap_bh6_w5_1_d1 <=  heap_bh6_w5_1;
            heap_bh6_w4_1_d1 <=  heap_bh6_w4_1;
            heap_bh6_w3_1_d1 <=  heap_bh6_w3_1;
            heap_bh6_w2_1_d1 <=  heap_bh6_w2_1;
            heap_bh6_w1_1_d1 <=  heap_bh6_w1_1;
            heap_bh6_w0_1_d1 <=  heap_bh6_w0_1;
            heap_bh6_w54_5_d1 <=  heap_bh6_w54_5;
            heap_bh6_w53_5_d1 <=  heap_bh6_w53_5;
            heap_bh6_w52_5_d1 <=  heap_bh6_w52_5;
            heap_bh6_w51_5_d1 <=  heap_bh6_w51_5;
            heap_bh6_w50_5_d1 <=  heap_bh6_w50_5;
            heap_bh6_w49_5_d1 <=  heap_bh6_w49_5;
            heap_bh6_w48_5_d1 <=  heap_bh6_w48_5;
            heap_bh6_w47_5_d1 <=  heap_bh6_w47_5;
            heap_bh6_w46_5_d1 <=  heap_bh6_w46_5;
            heap_bh6_w45_5_d1 <=  heap_bh6_w45_5;
            heap_bh6_w44_5_d1 <=  heap_bh6_w44_5;
            heap_bh6_w43_5_d1 <=  heap_bh6_w43_5;
            heap_bh6_w42_5_d1 <=  heap_bh6_w42_5;
            heap_bh6_w41_5_d1 <=  heap_bh6_w41_5;
            heap_bh6_w40_5_d1 <=  heap_bh6_w40_5;
            heap_bh6_w39_5_d1 <=  heap_bh6_w39_5;
            heap_bh6_w38_5_d1 <=  heap_bh6_w38_5;
            heap_bh6_w37_5_d1 <=  heap_bh6_w37_5;
            heap_bh6_w36_5_d1 <=  heap_bh6_w36_5;
            heap_bh6_w35_5_d1 <=  heap_bh6_w35_5;
            heap_bh6_w34_5_d1 <=  heap_bh6_w34_5;
            heap_bh6_w33_5_d1 <=  heap_bh6_w33_5;
            heap_bh6_w32_5_d1 <=  heap_bh6_w32_5;
            heap_bh6_w31_5_d1 <=  heap_bh6_w31_5;
            heap_bh6_w30_4_d1 <=  heap_bh6_w30_4;
            heap_bh6_w29_4_d1 <=  heap_bh6_w29_4;
            heap_bh6_w28_4_d1 <=  heap_bh6_w28_4;
            heap_bh6_w27_4_d1 <=  heap_bh6_w27_4;
            heap_bh6_w26_4_d1 <=  heap_bh6_w26_4;
            heap_bh6_w25_4_d1 <=  heap_bh6_w25_4;
            heap_bh6_w24_4_d1 <=  heap_bh6_w24_4;
            heap_bh6_w23_4_d1 <=  heap_bh6_w23_4;
            heap_bh6_w22_4_d1 <=  heap_bh6_w22_4;
            heap_bh6_w21_4_d1 <=  heap_bh6_w21_4;
            heap_bh6_w20_4_d1 <=  heap_bh6_w20_4;
            heap_bh6_w19_4_d1 <=  heap_bh6_w19_4;
            heap_bh6_w18_4_d1 <=  heap_bh6_w18_4;
            heap_bh6_w17_4_d1 <=  heap_bh6_w17_4;
            heap_bh6_w16_3_d1 <=  heap_bh6_w16_3;
            heap_bh6_w15_3_d1 <=  heap_bh6_w15_3;
            heap_bh6_w14_3_d1 <=  heap_bh6_w14_3;
            heap_bh6_w30_5_d1 <=  heap_bh6_w30_5;
            heap_bh6_w29_5_d1 <=  heap_bh6_w29_5;
            heap_bh6_w28_5_d1 <=  heap_bh6_w28_5;
            heap_bh6_w27_5_d1 <=  heap_bh6_w27_5;
            heap_bh6_w26_5_d1 <=  heap_bh6_w26_5;
            heap_bh6_w25_5_d1 <=  heap_bh6_w25_5;
            heap_bh6_w24_5_d1 <=  heap_bh6_w24_5;
            heap_bh6_w23_5_d1 <=  heap_bh6_w23_5;
            heap_bh6_w22_5_d1 <=  heap_bh6_w22_5;
            heap_bh6_w21_5_d1 <=  heap_bh6_w21_5;
            heap_bh6_w20_5_d1 <=  heap_bh6_w20_5;
            heap_bh6_w19_5_d1 <=  heap_bh6_w19_5;
            heap_bh6_w18_5_d1 <=  heap_bh6_w18_5;
            heap_bh6_w17_5_d1 <=  heap_bh6_w17_5;
            heap_bh6_w16_4_d1 <=  heap_bh6_w16_4;
            heap_bh6_w15_4_d1 <=  heap_bh6_w15_4;
            heap_bh6_w14_4_d1 <=  heap_bh6_w14_4;
            heap_bh6_w13_3_d1 <=  heap_bh6_w13_3;
            heap_bh6_w12_3_d1 <=  heap_bh6_w12_3;
            heap_bh6_w11_3_d1 <=  heap_bh6_w11_3;
            heap_bh6_w10_3_d1 <=  heap_bh6_w10_3;
            heap_bh6_w9_3_d1 <=  heap_bh6_w9_3;
            heap_bh6_w8_3_d1 <=  heap_bh6_w8_3;
            heap_bh6_w7_3_d1 <=  heap_bh6_w7_3;
            heap_bh6_w6_2_d1 <=  heap_bh6_w6_2;
            heap_bh6_w5_2_d1 <=  heap_bh6_w5_2;
            heap_bh6_w4_2_d1 <=  heap_bh6_w4_2;
            heap_bh6_w3_2_d1 <=  heap_bh6_w3_2;
            heap_bh6_w2_2_d1 <=  heap_bh6_w2_2;
            heap_bh6_w1_2_d1 <=  heap_bh6_w1_2;
            heap_bh6_w0_2_d1 <=  heap_bh6_w0_2;
            heap_bh6_w6_3_d1 <=  heap_bh6_w6_3;
            heap_bh6_w5_3_d1 <=  heap_bh6_w5_3;
            heap_bh6_w4_3_d1 <=  heap_bh6_w4_3;
            heap_bh6_w3_3_d1 <=  heap_bh6_w3_3;
            heap_bh6_w2_3_d1 <=  heap_bh6_w2_3;
            heap_bh6_w1_3_d1 <=  heap_bh6_w1_3;
            heap_bh6_w0_3_d1 <=  heap_bh6_w0_3;
            heap_bh6_w6_4_d1 <=  heap_bh6_w6_4;
            heap_bh6_w9_4_d1 <=  heap_bh6_w9_4;
            heap_bh6_w12_4_d1 <=  heap_bh6_w12_4;
            heap_bh6_w15_5_d1 <=  heap_bh6_w15_5;
            heap_bh6_w17_6_d1 <=  heap_bh6_w17_6;
            heap_bh6_w19_6_d1 <=  heap_bh6_w19_6;
            heap_bh6_w21_6_d1 <=  heap_bh6_w21_6;
            heap_bh6_w23_6_d1 <=  heap_bh6_w23_6;
            heap_bh6_w25_6_d1 <=  heap_bh6_w25_6;
            heap_bh6_w27_6_d1 <=  heap_bh6_w27_6;
            heap_bh6_w29_6_d1 <=  heap_bh6_w29_6;
            heap_bh6_w31_6_d1 <=  heap_bh6_w31_6;
            heap_bh6_w33_6_d1 <=  heap_bh6_w33_6;
            heap_bh6_w35_6_d1 <=  heap_bh6_w35_6;
            heap_bh6_w37_6_d1 <=  heap_bh6_w37_6;
            heap_bh6_w39_6_d1 <=  heap_bh6_w39_6;
            heap_bh6_w41_6_d1 <=  heap_bh6_w41_6;
            heap_bh6_w43_6_d1 <=  heap_bh6_w43_6;
            heap_bh6_w45_6_d1 <=  heap_bh6_w45_6;
            heap_bh6_w47_6_d1 <=  heap_bh6_w47_6;
            heap_bh6_w49_6_d1 <=  heap_bh6_w49_6;
            heap_bh6_w51_6_d1 <=  heap_bh6_w51_6;
            heap_bh6_w53_6_d1 <=  heap_bh6_w53_6;
            heap_bh6_w55_5_d1 <=  heap_bh6_w55_5;
            heap_bh6_w57_5_d1 <=  heap_bh6_w57_5;
            heap_bh6_w63_4_d1 <=  heap_bh6_w63_4;
            heap_bh6_w66_4_d1 <=  heap_bh6_w66_4;
            heap_bh6_w69_4_d1 <=  heap_bh6_w69_4;
            heap_bh6_w72_3_d1 <=  heap_bh6_w72_3;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            tempR_bh6_0_d2 <=  tempR_bh6_0_d1;
            heap_bh6_w5_6_d1 <=  heap_bh6_w5_6;
            heap_bh6_w6_6_d1 <=  heap_bh6_w6_6;
            heap_bh6_w8_6_d1 <=  heap_bh6_w8_6;
            heap_bh6_w9_6_d1 <=  heap_bh6_w9_6;
            heap_bh6_w11_6_d1 <=  heap_bh6_w11_6;
            heap_bh6_w12_6_d1 <=  heap_bh6_w12_6;
            heap_bh6_w14_8_d1 <=  heap_bh6_w14_8;
            heap_bh6_w15_8_d1 <=  heap_bh6_w15_8;
            heap_bh6_w16_8_d1 <=  heap_bh6_w16_8;
            heap_bh6_w16_9_d1 <=  heap_bh6_w16_9;
            heap_bh6_w17_9_d1 <=  heap_bh6_w17_9;
            heap_bh6_w18_9_d1 <=  heap_bh6_w18_9;
            heap_bh6_w18_10_d1 <=  heap_bh6_w18_10;
            heap_bh6_w19_9_d1 <=  heap_bh6_w19_9;
            heap_bh6_w20_9_d1 <=  heap_bh6_w20_9;
            heap_bh6_w20_10_d1 <=  heap_bh6_w20_10;
            heap_bh6_w21_9_d1 <=  heap_bh6_w21_9;
            heap_bh6_w22_9_d1 <=  heap_bh6_w22_9;
            heap_bh6_w22_10_d1 <=  heap_bh6_w22_10;
            heap_bh6_w23_9_d1 <=  heap_bh6_w23_9;
            heap_bh6_w24_9_d1 <=  heap_bh6_w24_9;
            heap_bh6_w24_10_d1 <=  heap_bh6_w24_10;
            heap_bh6_w25_9_d1 <=  heap_bh6_w25_9;
            heap_bh6_w26_9_d1 <=  heap_bh6_w26_9;
            heap_bh6_w26_10_d1 <=  heap_bh6_w26_10;
            heap_bh6_w27_9_d1 <=  heap_bh6_w27_9;
            heap_bh6_w28_9_d1 <=  heap_bh6_w28_9;
            heap_bh6_w28_10_d1 <=  heap_bh6_w28_10;
            heap_bh6_w29_9_d1 <=  heap_bh6_w29_9;
            heap_bh6_w30_9_d1 <=  heap_bh6_w30_9;
            heap_bh6_w30_10_d1 <=  heap_bh6_w30_10;
            heap_bh6_w31_9_d1 <=  heap_bh6_w31_9;
            heap_bh6_w32_9_d1 <=  heap_bh6_w32_9;
            heap_bh6_w32_10_d1 <=  heap_bh6_w32_10;
            heap_bh6_w33_9_d1 <=  heap_bh6_w33_9;
            heap_bh6_w34_9_d1 <=  heap_bh6_w34_9;
            heap_bh6_w34_10_d1 <=  heap_bh6_w34_10;
            heap_bh6_w35_9_d1 <=  heap_bh6_w35_9;
            heap_bh6_w36_9_d1 <=  heap_bh6_w36_9;
            heap_bh6_w36_10_d1 <=  heap_bh6_w36_10;
            heap_bh6_w37_9_d1 <=  heap_bh6_w37_9;
            heap_bh6_w38_9_d1 <=  heap_bh6_w38_9;
            heap_bh6_w38_10_d1 <=  heap_bh6_w38_10;
            heap_bh6_w39_9_d1 <=  heap_bh6_w39_9;
            heap_bh6_w40_9_d1 <=  heap_bh6_w40_9;
            heap_bh6_w40_10_d1 <=  heap_bh6_w40_10;
            heap_bh6_w41_9_d1 <=  heap_bh6_w41_9;
            heap_bh6_w42_9_d1 <=  heap_bh6_w42_9;
            heap_bh6_w42_10_d1 <=  heap_bh6_w42_10;
            heap_bh6_w43_9_d1 <=  heap_bh6_w43_9;
            heap_bh6_w44_9_d1 <=  heap_bh6_w44_9;
            heap_bh6_w44_10_d1 <=  heap_bh6_w44_10;
            heap_bh6_w45_9_d1 <=  heap_bh6_w45_9;
            heap_bh6_w46_9_d1 <=  heap_bh6_w46_9;
            heap_bh6_w46_10_d1 <=  heap_bh6_w46_10;
            heap_bh6_w47_9_d1 <=  heap_bh6_w47_9;
            heap_bh6_w48_9_d1 <=  heap_bh6_w48_9;
            heap_bh6_w48_10_d1 <=  heap_bh6_w48_10;
            heap_bh6_w49_9_d1 <=  heap_bh6_w49_9;
            heap_bh6_w50_9_d1 <=  heap_bh6_w50_9;
            heap_bh6_w50_10_d1 <=  heap_bh6_w50_10;
            heap_bh6_w51_9_d1 <=  heap_bh6_w51_9;
            heap_bh6_w52_9_d1 <=  heap_bh6_w52_9;
            heap_bh6_w52_10_d1 <=  heap_bh6_w52_10;
            heap_bh6_w53_9_d1 <=  heap_bh6_w53_9;
            heap_bh6_w54_9_d1 <=  heap_bh6_w54_9;
            heap_bh6_w54_10_d1 <=  heap_bh6_w54_10;
            heap_bh6_w55_8_d1 <=  heap_bh6_w55_8;
            heap_bh6_w56_8_d1 <=  heap_bh6_w56_8;
            heap_bh6_w56_9_d1 <=  heap_bh6_w56_9;
            heap_bh6_w57_8_d1 <=  heap_bh6_w57_8;
            heap_bh6_w58_7_d1 <=  heap_bh6_w58_7;
            heap_bh6_w58_8_d1 <=  heap_bh6_w58_8;
            heap_bh6_w62_6_d1 <=  heap_bh6_w62_6;
            heap_bh6_w63_6_d1 <=  heap_bh6_w63_6;
            heap_bh6_w65_6_d1 <=  heap_bh6_w65_6;
            heap_bh6_w66_6_d1 <=  heap_bh6_w66_6;
            heap_bh6_w68_6_d1 <=  heap_bh6_w68_6;
            heap_bh6_w69_6_d1 <=  heap_bh6_w69_6;
            heap_bh6_w71_6_d1 <=  heap_bh6_w71_6;
            heap_bh6_w72_5_d1 <=  heap_bh6_w72_5;
            heap_bh6_w82_3_d1 <=  heap_bh6_w82_3;
            heap_bh6_w83_2_d1 <=  heap_bh6_w83_2;
            heap_bh6_w4_7_d1 <=  heap_bh6_w4_7;
            tempR_bh6_1_d1 <=  tempR_bh6_1;
            tempR_bh6_1_d2 <=  tempR_bh6_1_d1;
            heap_bh6_w4_8_d1 <=  heap_bh6_w4_8;
            heap_bh6_w5_7_d1 <=  heap_bh6_w5_7;
            heap_bh6_w7_7_d1 <=  heap_bh6_w7_7;
            heap_bh6_w8_7_d1 <=  heap_bh6_w8_7;
            heap_bh6_w10_7_d1 <=  heap_bh6_w10_7;
            heap_bh6_w11_7_d1 <=  heap_bh6_w11_7;
            heap_bh6_w13_7_d1 <=  heap_bh6_w13_7;
            heap_bh6_w14_9_d1 <=  heap_bh6_w14_9;
            heap_bh6_w59_7_d1 <=  heap_bh6_w59_7;
            heap_bh6_w60_7_d1 <=  heap_bh6_w60_7;
            heap_bh6_w60_8_d1 <=  heap_bh6_w60_8;
            heap_bh6_w61_6_d1 <=  heap_bh6_w61_6;
            heap_bh6_w62_7_d1 <=  heap_bh6_w62_7;
            heap_bh6_w64_7_d1 <=  heap_bh6_w64_7;
            heap_bh6_w65_7_d1 <=  heap_bh6_w65_7;
            heap_bh6_w67_7_d1 <=  heap_bh6_w67_7;
            heap_bh6_w68_7_d1 <=  heap_bh6_w68_7;
            heap_bh6_w70_7_d1 <=  heap_bh6_w70_7;
            heap_bh6_w71_7_d1 <=  heap_bh6_w71_7;
            heap_bh6_w73_5_d1 <=  heap_bh6_w73_5;
            heap_bh6_w74_5_d1 <=  heap_bh6_w74_5;
            heap_bh6_w75_4_d1 <=  heap_bh6_w75_4;
            heap_bh6_w76_5_d1 <=  heap_bh6_w76_5;
            heap_bh6_w77_4_d1 <=  heap_bh6_w77_4;
            heap_bh6_w78_5_d1 <=  heap_bh6_w78_5;
            heap_bh6_w79_4_d1 <=  heap_bh6_w79_4;
            heap_bh6_w80_5_d1 <=  heap_bh6_w80_5;
            heap_bh6_w81_4_d1 <=  heap_bh6_w81_4;
            heap_bh6_w82_4_d1 <=  heap_bh6_w82_4;
            heap_bh6_w84_3_d1 <=  heap_bh6_w84_3;
            heap_bh6_w85_2_d1 <=  heap_bh6_w85_2;
            heap_bh6_w86_2_d1 <=  heap_bh6_w86_2;
            heap_bh6_w87_2_d1 <=  heap_bh6_w87_2;
            heap_bh6_w88_2_d1 <=  heap_bh6_w88_2;
            heap_bh6_w89_1_d1 <=  heap_bh6_w89_1;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= ("" & XX_m5(52 downto 29) & "") * ("" & YY_m5(52 downto 36) & "");
   heap_bh6_w105_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w104_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w103_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w102_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w101_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w100_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w99_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w98_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w97_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w96_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w95_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w94_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w93_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w92_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w91_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w90_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w89_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w88_0 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w87_0 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w86_0 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w85_0 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w84_0 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w83_0 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w82_0 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w81_0 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w80_0 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w79_0 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w78_0 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w77_0 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w76_0 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w75_0 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w74_0 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w73_0 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w72_0 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w71_0 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w70_0 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w69_0 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w68_0 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w67_0 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w66_0 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w65_0 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch1_0 <= ("" & XX_m5(28 downto 5) & "") * ("" & YY_m5(52 downto 36) & "");
   heap_bh6_w81_1 <= DSP_bh6_ch1_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w80_1 <= DSP_bh6_ch1_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w79_1 <= DSP_bh6_ch1_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w78_1 <= DSP_bh6_ch1_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w77_1 <= DSP_bh6_ch1_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w76_1 <= DSP_bh6_ch1_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w75_1 <= DSP_bh6_ch1_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w74_1 <= DSP_bh6_ch1_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w73_1 <= DSP_bh6_ch1_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w72_1 <= DSP_bh6_ch1_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w71_1 <= DSP_bh6_ch1_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w70_1 <= DSP_bh6_ch1_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w69_1 <= DSP_bh6_ch1_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w68_1 <= DSP_bh6_ch1_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w67_1 <= DSP_bh6_ch1_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w66_1 <= DSP_bh6_ch1_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w65_1 <= DSP_bh6_ch1_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w64_0 <= DSP_bh6_ch1_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w63_0 <= DSP_bh6_ch1_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w62_0 <= DSP_bh6_ch1_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w61_0 <= DSP_bh6_ch1_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w60_0 <= DSP_bh6_ch1_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w59_0 <= DSP_bh6_ch1_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w58_0 <= DSP_bh6_ch1_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w57_0 <= DSP_bh6_ch1_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w56_0 <= DSP_bh6_ch1_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w55_0 <= DSP_bh6_ch1_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w54_0 <= DSP_bh6_ch1_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_0 <= DSP_bh6_ch1_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_0 <= DSP_bh6_ch1_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_0 <= DSP_bh6_ch1_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_0 <= DSP_bh6_ch1_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_0 <= DSP_bh6_ch1_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_0 <= DSP_bh6_ch1_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w47_0 <= DSP_bh6_ch1_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_0 <= DSP_bh6_ch1_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_0 <= DSP_bh6_ch1_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_0 <= DSP_bh6_ch1_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_0 <= DSP_bh6_ch1_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_0 <= DSP_bh6_ch1_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_0 <= DSP_bh6_ch1_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch2_0 <= ("" & XX_m5(4 downto 0) & "0000000000000000000") * ("" & YY_m5(52 downto 36) & "");
   heap_bh6_w57_1 <= DSP_bh6_ch2_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w56_1 <= DSP_bh6_ch2_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w55_1 <= DSP_bh6_ch2_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w54_1 <= DSP_bh6_ch2_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_1 <= DSP_bh6_ch2_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_1 <= DSP_bh6_ch2_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_1 <= DSP_bh6_ch2_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_1 <= DSP_bh6_ch2_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_1 <= DSP_bh6_ch2_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_1 <= DSP_bh6_ch2_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w47_1 <= DSP_bh6_ch2_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_1 <= DSP_bh6_ch2_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_1 <= DSP_bh6_ch2_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_1 <= DSP_bh6_ch2_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_1 <= DSP_bh6_ch2_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_1 <= DSP_bh6_ch2_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_1 <= DSP_bh6_ch2_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_0 <= DSP_bh6_ch2_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_0 <= DSP_bh6_ch2_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_0 <= DSP_bh6_ch2_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_0 <= DSP_bh6_ch2_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_0 <= DSP_bh6_ch2_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_0 <= DSP_bh6_ch2_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_0 <= DSP_bh6_ch2_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_0 <= DSP_bh6_ch2_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_0 <= DSP_bh6_ch2_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_0 <= DSP_bh6_ch2_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_0 <= DSP_bh6_ch2_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_0 <= DSP_bh6_ch2_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_0 <= DSP_bh6_ch2_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_0 <= DSP_bh6_ch2_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_0 <= DSP_bh6_ch2_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_0 <= DSP_bh6_ch2_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_0 <= DSP_bh6_ch2_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_0 <= DSP_bh6_ch2_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_0 <= DSP_bh6_ch2_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_0 <= DSP_bh6_ch2_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_0 <= DSP_bh6_ch2_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_0 <= DSP_bh6_ch2_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_0 <= DSP_bh6_ch2_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_0 <= DSP_bh6_ch2_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch3_0 <= ("" & XX_m5(52 downto 29) & "") * ("" & YY_m5(35 downto 19) & "");
   heap_bh6_w88_1 <= DSP_bh6_ch3_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w87_1 <= DSP_bh6_ch3_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w86_1 <= DSP_bh6_ch3_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w85_1 <= DSP_bh6_ch3_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w84_1 <= DSP_bh6_ch3_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w83_1 <= DSP_bh6_ch3_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w82_1 <= DSP_bh6_ch3_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w81_2 <= DSP_bh6_ch3_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w80_2 <= DSP_bh6_ch3_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w79_2 <= DSP_bh6_ch3_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w78_2 <= DSP_bh6_ch3_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w77_2 <= DSP_bh6_ch3_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w76_2 <= DSP_bh6_ch3_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w75_2 <= DSP_bh6_ch3_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w74_2 <= DSP_bh6_ch3_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w73_2 <= DSP_bh6_ch3_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w72_2 <= DSP_bh6_ch3_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w71_2 <= DSP_bh6_ch3_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w70_2 <= DSP_bh6_ch3_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w69_2 <= DSP_bh6_ch3_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w68_2 <= DSP_bh6_ch3_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w67_2 <= DSP_bh6_ch3_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w66_2 <= DSP_bh6_ch3_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w65_2 <= DSP_bh6_ch3_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w64_1 <= DSP_bh6_ch3_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w63_1 <= DSP_bh6_ch3_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w62_1 <= DSP_bh6_ch3_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w61_1 <= DSP_bh6_ch3_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w60_1 <= DSP_bh6_ch3_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w59_1 <= DSP_bh6_ch3_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w58_1 <= DSP_bh6_ch3_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w57_2 <= DSP_bh6_ch3_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w56_2 <= DSP_bh6_ch3_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w55_2 <= DSP_bh6_ch3_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w54_2 <= DSP_bh6_ch3_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_2 <= DSP_bh6_ch3_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_2 <= DSP_bh6_ch3_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_2 <= DSP_bh6_ch3_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_2 <= DSP_bh6_ch3_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_2 <= DSP_bh6_ch3_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_2 <= DSP_bh6_ch3_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch4_0 <= ("" & XX_m5(28 downto 5) & "") * ("" & YY_m5(35 downto 19) & "");
   heap_bh6_w64_2 <= DSP_bh6_ch4_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w63_2 <= DSP_bh6_ch4_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w62_2 <= DSP_bh6_ch4_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w61_2 <= DSP_bh6_ch4_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w60_2 <= DSP_bh6_ch4_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w59_2 <= DSP_bh6_ch4_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w58_2 <= DSP_bh6_ch4_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w57_3 <= DSP_bh6_ch4_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w56_3 <= DSP_bh6_ch4_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w55_3 <= DSP_bh6_ch4_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w54_3 <= DSP_bh6_ch4_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_3 <= DSP_bh6_ch4_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_3 <= DSP_bh6_ch4_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_3 <= DSP_bh6_ch4_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_3 <= DSP_bh6_ch4_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_3 <= DSP_bh6_ch4_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_3 <= DSP_bh6_ch4_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w47_2 <= DSP_bh6_ch4_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_2 <= DSP_bh6_ch4_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_2 <= DSP_bh6_ch4_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_2 <= DSP_bh6_ch4_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_2 <= DSP_bh6_ch4_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_2 <= DSP_bh6_ch4_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_2 <= DSP_bh6_ch4_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_1 <= DSP_bh6_ch4_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_1 <= DSP_bh6_ch4_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_1 <= DSP_bh6_ch4_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_1 <= DSP_bh6_ch4_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_1 <= DSP_bh6_ch4_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_1 <= DSP_bh6_ch4_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_1 <= DSP_bh6_ch4_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_1 <= DSP_bh6_ch4_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_1 <= DSP_bh6_ch4_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_1 <= DSP_bh6_ch4_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_1 <= DSP_bh6_ch4_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_1 <= DSP_bh6_ch4_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_1 <= DSP_bh6_ch4_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_1 <= DSP_bh6_ch4_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_1 <= DSP_bh6_ch4_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_1 <= DSP_bh6_ch4_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_1 <= DSP_bh6_ch4_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch5_0 <= ("" & XX_m5(4 downto 0) & "0000000000000000000") * ("" & YY_m5(35 downto 19) & "");
   heap_bh6_w40_2 <= DSP_bh6_ch5_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_2 <= DSP_bh6_ch5_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_2 <= DSP_bh6_ch5_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_2 <= DSP_bh6_ch5_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_2 <= DSP_bh6_ch5_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_2 <= DSP_bh6_ch5_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_2 <= DSP_bh6_ch5_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_2 <= DSP_bh6_ch5_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_2 <= DSP_bh6_ch5_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_2 <= DSP_bh6_ch5_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_2 <= DSP_bh6_ch5_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_2 <= DSP_bh6_ch5_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_2 <= DSP_bh6_ch5_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_2 <= DSP_bh6_ch5_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_2 <= DSP_bh6_ch5_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_2 <= DSP_bh6_ch5_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_2 <= DSP_bh6_ch5_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_1 <= DSP_bh6_ch5_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_1 <= DSP_bh6_ch5_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_1 <= DSP_bh6_ch5_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_1 <= DSP_bh6_ch5_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_1 <= DSP_bh6_ch5_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_1 <= DSP_bh6_ch5_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_1 <= DSP_bh6_ch5_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_0 <= DSP_bh6_ch5_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_0 <= DSP_bh6_ch5_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_0 <= DSP_bh6_ch5_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_0 <= DSP_bh6_ch5_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_0 <= DSP_bh6_ch5_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_0 <= DSP_bh6_ch5_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_0 <= DSP_bh6_ch5_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_0 <= DSP_bh6_ch5_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_0 <= DSP_bh6_ch5_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_0 <= DSP_bh6_ch5_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_0 <= DSP_bh6_ch5_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_0 <= DSP_bh6_ch5_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_0 <= DSP_bh6_ch5_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_0 <= DSP_bh6_ch5_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_0 <= DSP_bh6_ch5_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_0 <= DSP_bh6_ch5_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_0 <= DSP_bh6_ch5_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch6_0 <= ("" & XX_m5(52 downto 29) & "") * ("" & YY_m5(18 downto 2) & "");
   heap_bh6_w71_3 <= DSP_bh6_ch6_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w70_3 <= DSP_bh6_ch6_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w69_3 <= DSP_bh6_ch6_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w68_3 <= DSP_bh6_ch6_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w67_3 <= DSP_bh6_ch6_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w66_3 <= DSP_bh6_ch6_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w65_3 <= DSP_bh6_ch6_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w64_3 <= DSP_bh6_ch6_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w63_3 <= DSP_bh6_ch6_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w62_3 <= DSP_bh6_ch6_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w61_3 <= DSP_bh6_ch6_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w60_3 <= DSP_bh6_ch6_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w59_3 <= DSP_bh6_ch6_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w58_3 <= DSP_bh6_ch6_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w57_4 <= DSP_bh6_ch6_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w56_4 <= DSP_bh6_ch6_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w55_4 <= DSP_bh6_ch6_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w54_4 <= DSP_bh6_ch6_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_4 <= DSP_bh6_ch6_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_4 <= DSP_bh6_ch6_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_4 <= DSP_bh6_ch6_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_4 <= DSP_bh6_ch6_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_4 <= DSP_bh6_ch6_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_4 <= DSP_bh6_ch6_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w47_3 <= DSP_bh6_ch6_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_3 <= DSP_bh6_ch6_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_3 <= DSP_bh6_ch6_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_3 <= DSP_bh6_ch6_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_3 <= DSP_bh6_ch6_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_3 <= DSP_bh6_ch6_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_3 <= DSP_bh6_ch6_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_3 <= DSP_bh6_ch6_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_3 <= DSP_bh6_ch6_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_3 <= DSP_bh6_ch6_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_3 <= DSP_bh6_ch6_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_3 <= DSP_bh6_ch6_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_3 <= DSP_bh6_ch6_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_3 <= DSP_bh6_ch6_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_3 <= DSP_bh6_ch6_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_3 <= DSP_bh6_ch6_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_3 <= DSP_bh6_ch6_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch7_0 <= ("" & XX_m5(28 downto 5) & "") * ("" & YY_m5(18 downto 2) & "");
   heap_bh6_w47_4 <= DSP_bh6_ch7_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_4 <= DSP_bh6_ch7_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_4 <= DSP_bh6_ch7_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_4 <= DSP_bh6_ch7_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_4 <= DSP_bh6_ch7_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_4 <= DSP_bh6_ch7_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_4 <= DSP_bh6_ch7_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_4 <= DSP_bh6_ch7_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_4 <= DSP_bh6_ch7_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_4 <= DSP_bh6_ch7_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_4 <= DSP_bh6_ch7_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_4 <= DSP_bh6_ch7_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_4 <= DSP_bh6_ch7_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_4 <= DSP_bh6_ch7_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_4 <= DSP_bh6_ch7_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_4 <= DSP_bh6_ch7_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_4 <= DSP_bh6_ch7_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_3 <= DSP_bh6_ch7_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_3 <= DSP_bh6_ch7_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_3 <= DSP_bh6_ch7_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_3 <= DSP_bh6_ch7_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_3 <= DSP_bh6_ch7_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_3 <= DSP_bh6_ch7_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_3 <= DSP_bh6_ch7_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_2 <= DSP_bh6_ch7_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_2 <= DSP_bh6_ch7_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_2 <= DSP_bh6_ch7_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_2 <= DSP_bh6_ch7_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_2 <= DSP_bh6_ch7_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_2 <= DSP_bh6_ch7_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_2 <= DSP_bh6_ch7_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_1 <= DSP_bh6_ch7_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_1 <= DSP_bh6_ch7_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_1 <= DSP_bh6_ch7_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_1 <= DSP_bh6_ch7_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_1 <= DSP_bh6_ch7_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_1 <= DSP_bh6_ch7_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_1 <= DSP_bh6_ch7_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_1 <= DSP_bh6_ch7_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_1 <= DSP_bh6_ch7_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_1 <= DSP_bh6_ch7_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch8_0 <= ("" & XX_m5(4 downto 0) & "0000000000000000000") * ("" & YY_m5(18 downto 2) & "");
   heap_bh6_w23_3 <= DSP_bh6_ch8_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_3 <= DSP_bh6_ch8_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_3 <= DSP_bh6_ch8_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_3 <= DSP_bh6_ch8_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_3 <= DSP_bh6_ch8_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_3 <= DSP_bh6_ch8_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_3 <= DSP_bh6_ch8_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_2 <= DSP_bh6_ch8_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_2 <= DSP_bh6_ch8_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_2 <= DSP_bh6_ch8_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_2 <= DSP_bh6_ch8_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_2 <= DSP_bh6_ch8_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_2 <= DSP_bh6_ch8_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_2 <= DSP_bh6_ch8_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_2 <= DSP_bh6_ch8_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_2 <= DSP_bh6_ch8_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_2 <= DSP_bh6_ch8_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_1 <= DSP_bh6_ch8_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_1 <= DSP_bh6_ch8_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_1 <= DSP_bh6_ch8_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_1 <= DSP_bh6_ch8_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_1 <= DSP_bh6_ch8_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_1 <= DSP_bh6_ch8_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_1 <= DSP_bh6_ch8_0(17); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch9_0 <= ("" & XX_m5(52 downto 29) & "") * ("" & YY_m5(1 downto 0) & "000000000000000");
   heap_bh6_w54_5 <= DSP_bh6_ch9_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w53_5 <= DSP_bh6_ch9_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w52_5 <= DSP_bh6_ch9_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w51_5 <= DSP_bh6_ch9_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w50_5 <= DSP_bh6_ch9_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w49_5 <= DSP_bh6_ch9_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w48_5 <= DSP_bh6_ch9_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w47_5 <= DSP_bh6_ch9_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_5 <= DSP_bh6_ch9_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_5 <= DSP_bh6_ch9_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_5 <= DSP_bh6_ch9_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_5 <= DSP_bh6_ch9_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_5 <= DSP_bh6_ch9_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_5 <= DSP_bh6_ch9_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_5 <= DSP_bh6_ch9_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_5 <= DSP_bh6_ch9_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_5 <= DSP_bh6_ch9_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_5 <= DSP_bh6_ch9_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_5 <= DSP_bh6_ch9_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_5 <= DSP_bh6_ch9_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_5 <= DSP_bh6_ch9_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_5 <= DSP_bh6_ch9_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_5 <= DSP_bh6_ch9_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_5 <= DSP_bh6_ch9_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_4 <= DSP_bh6_ch9_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_4 <= DSP_bh6_ch9_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_4 <= DSP_bh6_ch9_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_4 <= DSP_bh6_ch9_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_4 <= DSP_bh6_ch9_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_4 <= DSP_bh6_ch9_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_4 <= DSP_bh6_ch9_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_4 <= DSP_bh6_ch9_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_4 <= DSP_bh6_ch9_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_4 <= DSP_bh6_ch9_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_4 <= DSP_bh6_ch9_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_4 <= DSP_bh6_ch9_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_4 <= DSP_bh6_ch9_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_4 <= DSP_bh6_ch9_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_3 <= DSP_bh6_ch9_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_3 <= DSP_bh6_ch9_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_3 <= DSP_bh6_ch9_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch10_0 <= ("" & XX_m5(28 downto 5) & "") * ("" & YY_m5(1 downto 0) & "000000000000000");
   heap_bh6_w30_5 <= DSP_bh6_ch10_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_5 <= DSP_bh6_ch10_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_5 <= DSP_bh6_ch10_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_5 <= DSP_bh6_ch10_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_5 <= DSP_bh6_ch10_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_5 <= DSP_bh6_ch10_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_5 <= DSP_bh6_ch10_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_5 <= DSP_bh6_ch10_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_5 <= DSP_bh6_ch10_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_5 <= DSP_bh6_ch10_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_5 <= DSP_bh6_ch10_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_5 <= DSP_bh6_ch10_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_5 <= DSP_bh6_ch10_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_5 <= DSP_bh6_ch10_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_4 <= DSP_bh6_ch10_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_4 <= DSP_bh6_ch10_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_4 <= DSP_bh6_ch10_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_3 <= DSP_bh6_ch10_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_3 <= DSP_bh6_ch10_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_3 <= DSP_bh6_ch10_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_3 <= DSP_bh6_ch10_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_3 <= DSP_bh6_ch10_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_3 <= DSP_bh6_ch10_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_3 <= DSP_bh6_ch10_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_2 <= DSP_bh6_ch10_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_2 <= DSP_bh6_ch10_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_2 <= DSP_bh6_ch10_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_2 <= DSP_bh6_ch10_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_2 <= DSP_bh6_ch10_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_2 <= DSP_bh6_ch10_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_2 <= DSP_bh6_ch10_0(10); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch11_0 <= ("" & XX_m5(4 downto 0) & "0000000000000000000") * ("" & YY_m5(1 downto 0) & "000000000000000");
   heap_bh6_w6_3 <= DSP_bh6_ch11_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_3 <= DSP_bh6_ch11_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_3 <= DSP_bh6_ch11_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_3 <= DSP_bh6_ch11_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_3 <= DSP_bh6_ch11_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_3 <= DSP_bh6_ch11_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_3 <= DSP_bh6_ch11_0(34); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   ----------------Synchro barrier, entering cycle 0----------------

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w0_3_d1 & heap_bh6_w0_2_d1 & heap_bh6_w0_1_d1 & heap_bh6_w0_0_d1;
   CompressorIn_bh6_0_1(0) <= heap_bh6_w1_3_d1;
   Compressor_bh6_0: Compressor_14_3
      port map ( R => CompressorOut_bh6_0_0   ,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w0_4 <= CompressorOut_bh6_0_0(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w1_4 <= CompressorOut_bh6_0_0(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w2_4 <= CompressorOut_bh6_0_0(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w1_2_d1 & heap_bh6_w1_1_d1 & heap_bh6_w1_0_d1;
   CompressorIn_bh6_1_3 <= heap_bh6_w2_3_d1 & heap_bh6_w2_2_d1;
   Compressor_bh6_1: Compressor_23_3
      port map ( R => CompressorOut_bh6_1_1   ,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w1_5 <= CompressorOut_bh6_1_1(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w2_5 <= CompressorOut_bh6_1_1(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w3_4 <= CompressorOut_bh6_1_1(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w3_3_d1 & heap_bh6_w3_2_d1 & heap_bh6_w3_1_d1 & heap_bh6_w3_0_d1;
   CompressorIn_bh6_2_5(0) <= heap_bh6_w4_3_d1;
   Compressor_bh6_2: Compressor_14_3
      port map ( R => CompressorOut_bh6_2_2   ,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w3_5 <= CompressorOut_bh6_2_2(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w4_4 <= CompressorOut_bh6_2_2(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w5_4 <= CompressorOut_bh6_2_2(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_3_6 <= heap_bh6_w4_2_d1 & heap_bh6_w4_1_d1 & heap_bh6_w4_0_d1;
   CompressorIn_bh6_3_7 <= heap_bh6_w5_3_d1 & heap_bh6_w5_2_d1;
   Compressor_bh6_3: Compressor_23_3
      port map ( R => CompressorOut_bh6_3_3   ,
                 X0 => CompressorIn_bh6_3_6,
                 X1 => CompressorIn_bh6_3_7);
   heap_bh6_w4_5 <= CompressorOut_bh6_3_3(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w5_5 <= CompressorOut_bh6_3_3(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w6_4 <= CompressorOut_bh6_3_3(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_4_8 <= heap_bh6_w6_3_d1 & heap_bh6_w6_2_d1 & heap_bh6_w6_1_d1 & heap_bh6_w6_0_d1;
   CompressorIn_bh6_4_9(0) <= heap_bh6_w7_3_d1;
   Compressor_bh6_4: Compressor_14_3
      port map ( R => CompressorOut_bh6_4_4   ,
                 X0 => CompressorIn_bh6_4_8,
                 X1 => CompressorIn_bh6_4_9);
   heap_bh6_w6_5 <= CompressorOut_bh6_4_4(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w7_4 <= CompressorOut_bh6_4_4(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w8_4 <= CompressorOut_bh6_4_4(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_5_10 <= heap_bh6_w7_2_d1 & heap_bh6_w7_1_d1 & heap_bh6_w7_0_d1;
   CompressorIn_bh6_5_11 <= heap_bh6_w8_3_d1 & heap_bh6_w8_2_d1;
   Compressor_bh6_5: Compressor_23_3
      port map ( R => CompressorOut_bh6_5_5   ,
                 X0 => CompressorIn_bh6_5_10,
                 X1 => CompressorIn_bh6_5_11);
   heap_bh6_w7_5 <= CompressorOut_bh6_5_5(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w8_5 <= CompressorOut_bh6_5_5(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w9_4 <= CompressorOut_bh6_5_5(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_6_12 <= heap_bh6_w9_3_d1 & heap_bh6_w9_2_d1 & heap_bh6_w9_1_d1 & heap_bh6_w9_0_d1;
   CompressorIn_bh6_6_13(0) <= heap_bh6_w10_3_d1;
   Compressor_bh6_6: Compressor_14_3
      port map ( R => CompressorOut_bh6_6_6   ,
                 X0 => CompressorIn_bh6_6_12,
                 X1 => CompressorIn_bh6_6_13);
   heap_bh6_w9_5 <= CompressorOut_bh6_6_6(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w10_4 <= CompressorOut_bh6_6_6(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w11_4 <= CompressorOut_bh6_6_6(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_7_14 <= heap_bh6_w10_2_d1 & heap_bh6_w10_1_d1 & heap_bh6_w10_0_d1;
   CompressorIn_bh6_7_15 <= heap_bh6_w11_3_d1 & heap_bh6_w11_2_d1;
   Compressor_bh6_7: Compressor_23_3
      port map ( R => CompressorOut_bh6_7_7   ,
                 X0 => CompressorIn_bh6_7_14,
                 X1 => CompressorIn_bh6_7_15);
   heap_bh6_w10_5 <= CompressorOut_bh6_7_7(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w11_5 <= CompressorOut_bh6_7_7(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w12_4 <= CompressorOut_bh6_7_7(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_8_16 <= heap_bh6_w12_3_d1 & heap_bh6_w12_2_d1 & heap_bh6_w12_1_d1 & heap_bh6_w12_0_d1;
   CompressorIn_bh6_8_17(0) <= heap_bh6_w13_3_d1;
   Compressor_bh6_8: Compressor_14_3
      port map ( R => CompressorOut_bh6_8_8   ,
                 X0 => CompressorIn_bh6_8_16,
                 X1 => CompressorIn_bh6_8_17);
   heap_bh6_w12_5 <= CompressorOut_bh6_8_8(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w13_4 <= CompressorOut_bh6_8_8(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w14_5 <= CompressorOut_bh6_8_8(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_9_18 <= heap_bh6_w13_2_d1 & heap_bh6_w13_1_d1 & heap_bh6_w13_0_d1;
   CompressorIn_bh6_9_19 <= heap_bh6_w14_4_d1 & heap_bh6_w14_3_d1;
   Compressor_bh6_9: Compressor_23_3
      port map ( R => CompressorOut_bh6_9_9   ,
                 X0 => CompressorIn_bh6_9_18,
                 X1 => CompressorIn_bh6_9_19);
   heap_bh6_w13_5 <= CompressorOut_bh6_9_9(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w14_6 <= CompressorOut_bh6_9_9(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w15_5 <= CompressorOut_bh6_9_9(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_10_20 <= heap_bh6_w14_2_d1 & heap_bh6_w14_1_d1 & heap_bh6_w14_0_d1;
   CompressorIn_bh6_10_21 <= heap_bh6_w15_4_d1 & heap_bh6_w15_3_d1;
   Compressor_bh6_10: Compressor_23_3
      port map ( R => CompressorOut_bh6_10_10   ,
                 X0 => CompressorIn_bh6_10_20,
                 X1 => CompressorIn_bh6_10_21);
   heap_bh6_w14_7 <= CompressorOut_bh6_10_10(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w15_6 <= CompressorOut_bh6_10_10(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w16_5 <= CompressorOut_bh6_10_10(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_11_22 <= heap_bh6_w15_2_d1 & heap_bh6_w15_1_d1 & heap_bh6_w15_0_d1;
   CompressorIn_bh6_11_23 <= heap_bh6_w16_4_d1 & heap_bh6_w16_3_d1;
   Compressor_bh6_11: Compressor_23_3
      port map ( R => CompressorOut_bh6_11_11   ,
                 X0 => CompressorIn_bh6_11_22,
                 X1 => CompressorIn_bh6_11_23);
   heap_bh6_w15_7 <= CompressorOut_bh6_11_11(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w16_6 <= CompressorOut_bh6_11_11(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w17_6 <= CompressorOut_bh6_11_11(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_12_24 <= heap_bh6_w16_2_d1 & heap_bh6_w16_1_d1 & heap_bh6_w16_0_d1;
   CompressorIn_bh6_12_25 <= heap_bh6_w17_5_d1 & heap_bh6_w17_4_d1;
   Compressor_bh6_12: Compressor_23_3
      port map ( R => CompressorOut_bh6_12_12   ,
                 X0 => CompressorIn_bh6_12_24,
                 X1 => CompressorIn_bh6_12_25);
   heap_bh6_w16_7 <= CompressorOut_bh6_12_12(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w17_7 <= CompressorOut_bh6_12_12(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w18_6 <= CompressorOut_bh6_12_12(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_13_26 <= heap_bh6_w17_3_d1 & heap_bh6_w17_2_d1 & heap_bh6_w17_1_d1 & heap_bh6_w17_0_d1;
   CompressorIn_bh6_13_27(0) <= heap_bh6_w18_5_d1;
   Compressor_bh6_13: Compressor_14_3
      port map ( R => CompressorOut_bh6_13_13   ,
                 X0 => CompressorIn_bh6_13_26,
                 X1 => CompressorIn_bh6_13_27);
   heap_bh6_w17_8 <= CompressorOut_bh6_13_13(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w18_7 <= CompressorOut_bh6_13_13(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w19_6 <= CompressorOut_bh6_13_13(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_14_28 <= heap_bh6_w18_4_d1 & heap_bh6_w18_3_d1 & heap_bh6_w18_2_d1 & heap_bh6_w18_1_d1 & heap_bh6_w18_0_d1;
   CompressorIn_bh6_14_29(0) <= heap_bh6_w19_5_d1;
   Compressor_bh6_14: Compressor_15_3
      port map ( R => CompressorOut_bh6_14_14   ,
                 X0 => CompressorIn_bh6_14_28,
                 X1 => CompressorIn_bh6_14_29);
   heap_bh6_w18_8 <= CompressorOut_bh6_14_14(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w19_7 <= CompressorOut_bh6_14_14(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w20_6 <= CompressorOut_bh6_14_14(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_15_30 <= heap_bh6_w19_4_d1 & heap_bh6_w19_3_d1 & heap_bh6_w19_2_d1 & heap_bh6_w19_1_d1 & heap_bh6_w19_0_d1;
   CompressorIn_bh6_15_31(0) <= heap_bh6_w20_5_d1;
   Compressor_bh6_15: Compressor_15_3
      port map ( R => CompressorOut_bh6_15_15   ,
                 X0 => CompressorIn_bh6_15_30,
                 X1 => CompressorIn_bh6_15_31);
   heap_bh6_w19_8 <= CompressorOut_bh6_15_15(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w20_7 <= CompressorOut_bh6_15_15(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w21_6 <= CompressorOut_bh6_15_15(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_16_32 <= heap_bh6_w20_4_d1 & heap_bh6_w20_3_d1 & heap_bh6_w20_2_d1 & heap_bh6_w20_1_d1 & heap_bh6_w20_0_d1;
   CompressorIn_bh6_16_33(0) <= heap_bh6_w21_5_d1;
   Compressor_bh6_16: Compressor_15_3
      port map ( R => CompressorOut_bh6_16_16   ,
                 X0 => CompressorIn_bh6_16_32,
                 X1 => CompressorIn_bh6_16_33);
   heap_bh6_w20_8 <= CompressorOut_bh6_16_16(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w21_7 <= CompressorOut_bh6_16_16(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w22_6 <= CompressorOut_bh6_16_16(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_17_34 <= heap_bh6_w21_4_d1 & heap_bh6_w21_3_d1 & heap_bh6_w21_2_d1 & heap_bh6_w21_1_d1 & heap_bh6_w21_0_d1;
   CompressorIn_bh6_17_35(0) <= heap_bh6_w22_5_d1;
   Compressor_bh6_17: Compressor_15_3
      port map ( R => CompressorOut_bh6_17_17   ,
                 X0 => CompressorIn_bh6_17_34,
                 X1 => CompressorIn_bh6_17_35);
   heap_bh6_w21_8 <= CompressorOut_bh6_17_17(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w22_7 <= CompressorOut_bh6_17_17(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w23_6 <= CompressorOut_bh6_17_17(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_18_36 <= heap_bh6_w22_4_d1 & heap_bh6_w22_3_d1 & heap_bh6_w22_2_d1 & heap_bh6_w22_1_d1 & heap_bh6_w22_0_d1;
   CompressorIn_bh6_18_37(0) <= heap_bh6_w23_5_d1;
   Compressor_bh6_18: Compressor_15_3
      port map ( R => CompressorOut_bh6_18_18   ,
                 X0 => CompressorIn_bh6_18_36,
                 X1 => CompressorIn_bh6_18_37);
   heap_bh6_w22_8 <= CompressorOut_bh6_18_18(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w23_7 <= CompressorOut_bh6_18_18(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w24_6 <= CompressorOut_bh6_18_18(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_19_38 <= heap_bh6_w23_4_d1 & heap_bh6_w23_3_d1 & heap_bh6_w23_2_d1 & heap_bh6_w23_1_d1 & heap_bh6_w23_0_d1;
   CompressorIn_bh6_19_39(0) <= heap_bh6_w24_5_d1;
   Compressor_bh6_19: Compressor_15_3
      port map ( R => CompressorOut_bh6_19_19   ,
                 X0 => CompressorIn_bh6_19_38,
                 X1 => CompressorIn_bh6_19_39);
   heap_bh6_w23_8 <= CompressorOut_bh6_19_19(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w24_7 <= CompressorOut_bh6_19_19(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w25_6 <= CompressorOut_bh6_19_19(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_20_40 <= heap_bh6_w24_4_d1 & heap_bh6_w24_3_d1 & heap_bh6_w24_2_d1 & heap_bh6_w24_1_d1 & heap_bh6_w24_0_d1;
   CompressorIn_bh6_20_41(0) <= heap_bh6_w25_5_d1;
   Compressor_bh6_20: Compressor_15_3
      port map ( R => CompressorOut_bh6_20_20   ,
                 X0 => CompressorIn_bh6_20_40,
                 X1 => CompressorIn_bh6_20_41);
   heap_bh6_w24_8 <= CompressorOut_bh6_20_20(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w25_7 <= CompressorOut_bh6_20_20(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w26_6 <= CompressorOut_bh6_20_20(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_21_42 <= heap_bh6_w25_4_d1 & heap_bh6_w25_3_d1 & heap_bh6_w25_2_d1 & heap_bh6_w25_1_d1 & heap_bh6_w25_0_d1;
   CompressorIn_bh6_21_43(0) <= heap_bh6_w26_5_d1;
   Compressor_bh6_21: Compressor_15_3
      port map ( R => CompressorOut_bh6_21_21   ,
                 X0 => CompressorIn_bh6_21_42,
                 X1 => CompressorIn_bh6_21_43);
   heap_bh6_w25_8 <= CompressorOut_bh6_21_21(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w26_7 <= CompressorOut_bh6_21_21(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w27_6 <= CompressorOut_bh6_21_21(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_22_44 <= heap_bh6_w26_4_d1 & heap_bh6_w26_3_d1 & heap_bh6_w26_2_d1 & heap_bh6_w26_1_d1 & heap_bh6_w26_0_d1;
   CompressorIn_bh6_22_45(0) <= heap_bh6_w27_5_d1;
   Compressor_bh6_22: Compressor_15_3
      port map ( R => CompressorOut_bh6_22_22   ,
                 X0 => CompressorIn_bh6_22_44,
                 X1 => CompressorIn_bh6_22_45);
   heap_bh6_w26_8 <= CompressorOut_bh6_22_22(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w27_7 <= CompressorOut_bh6_22_22(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w28_6 <= CompressorOut_bh6_22_22(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_23_46 <= heap_bh6_w27_4_d1 & heap_bh6_w27_3_d1 & heap_bh6_w27_2_d1 & heap_bh6_w27_1_d1 & heap_bh6_w27_0_d1;
   CompressorIn_bh6_23_47(0) <= heap_bh6_w28_5_d1;
   Compressor_bh6_23: Compressor_15_3
      port map ( R => CompressorOut_bh6_23_23   ,
                 X0 => CompressorIn_bh6_23_46,
                 X1 => CompressorIn_bh6_23_47);
   heap_bh6_w27_8 <= CompressorOut_bh6_23_23(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w28_7 <= CompressorOut_bh6_23_23(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w29_6 <= CompressorOut_bh6_23_23(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_24_48 <= heap_bh6_w28_4_d1 & heap_bh6_w28_3_d1 & heap_bh6_w28_2_d1 & heap_bh6_w28_1_d1 & heap_bh6_w28_0_d1;
   CompressorIn_bh6_24_49(0) <= heap_bh6_w29_5_d1;
   Compressor_bh6_24: Compressor_15_3
      port map ( R => CompressorOut_bh6_24_24   ,
                 X0 => CompressorIn_bh6_24_48,
                 X1 => CompressorIn_bh6_24_49);
   heap_bh6_w28_8 <= CompressorOut_bh6_24_24(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w29_7 <= CompressorOut_bh6_24_24(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w30_6 <= CompressorOut_bh6_24_24(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_25_50 <= heap_bh6_w29_4_d1 & heap_bh6_w29_3_d1 & heap_bh6_w29_2_d1 & heap_bh6_w29_1_d1 & heap_bh6_w29_0_d1;
   CompressorIn_bh6_25_51(0) <= heap_bh6_w30_5_d1;
   Compressor_bh6_25: Compressor_15_3
      port map ( R => CompressorOut_bh6_25_25   ,
                 X0 => CompressorIn_bh6_25_50,
                 X1 => CompressorIn_bh6_25_51);
   heap_bh6_w29_8 <= CompressorOut_bh6_25_25(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w30_7 <= CompressorOut_bh6_25_25(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w31_6 <= CompressorOut_bh6_25_25(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_26_52 <= heap_bh6_w30_4_d1 & heap_bh6_w30_3_d1 & heap_bh6_w30_2_d1 & heap_bh6_w30_1_d1 & heap_bh6_w30_0_d1;
   CompressorIn_bh6_26_53(0) <= heap_bh6_w31_5_d1;
   Compressor_bh6_26: Compressor_15_3
      port map ( R => CompressorOut_bh6_26_26   ,
                 X0 => CompressorIn_bh6_26_52,
                 X1 => CompressorIn_bh6_26_53);
   heap_bh6_w30_8 <= CompressorOut_bh6_26_26(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w31_7 <= CompressorOut_bh6_26_26(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w32_6 <= CompressorOut_bh6_26_26(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_27_54 <= heap_bh6_w31_4_d1 & heap_bh6_w31_3_d1 & heap_bh6_w31_2_d1 & heap_bh6_w31_1_d1 & heap_bh6_w31_0_d1;
   CompressorIn_bh6_27_55(0) <= heap_bh6_w32_5_d1;
   Compressor_bh6_27: Compressor_15_3
      port map ( R => CompressorOut_bh6_27_27   ,
                 X0 => CompressorIn_bh6_27_54,
                 X1 => CompressorIn_bh6_27_55);
   heap_bh6_w31_8 <= CompressorOut_bh6_27_27(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w32_7 <= CompressorOut_bh6_27_27(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w33_6 <= CompressorOut_bh6_27_27(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_28_56 <= heap_bh6_w32_4_d1 & heap_bh6_w32_3_d1 & heap_bh6_w32_2_d1 & heap_bh6_w32_1_d1 & heap_bh6_w32_0_d1;
   CompressorIn_bh6_28_57(0) <= heap_bh6_w33_5_d1;
   Compressor_bh6_28: Compressor_15_3
      port map ( R => CompressorOut_bh6_28_28   ,
                 X0 => CompressorIn_bh6_28_56,
                 X1 => CompressorIn_bh6_28_57);
   heap_bh6_w32_8 <= CompressorOut_bh6_28_28(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w33_7 <= CompressorOut_bh6_28_28(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w34_6 <= CompressorOut_bh6_28_28(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_29_58 <= heap_bh6_w33_4_d1 & heap_bh6_w33_3_d1 & heap_bh6_w33_2_d1 & heap_bh6_w33_1_d1 & heap_bh6_w33_0_d1;
   CompressorIn_bh6_29_59(0) <= heap_bh6_w34_5_d1;
   Compressor_bh6_29: Compressor_15_3
      port map ( R => CompressorOut_bh6_29_29   ,
                 X0 => CompressorIn_bh6_29_58,
                 X1 => CompressorIn_bh6_29_59);
   heap_bh6_w33_8 <= CompressorOut_bh6_29_29(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w34_7 <= CompressorOut_bh6_29_29(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w35_6 <= CompressorOut_bh6_29_29(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_30_60 <= heap_bh6_w34_4_d1 & heap_bh6_w34_3_d1 & heap_bh6_w34_2_d1 & heap_bh6_w34_1_d1 & heap_bh6_w34_0_d1;
   CompressorIn_bh6_30_61(0) <= heap_bh6_w35_5_d1;
   Compressor_bh6_30: Compressor_15_3
      port map ( R => CompressorOut_bh6_30_30   ,
                 X0 => CompressorIn_bh6_30_60,
                 X1 => CompressorIn_bh6_30_61);
   heap_bh6_w34_8 <= CompressorOut_bh6_30_30(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w35_7 <= CompressorOut_bh6_30_30(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w36_6 <= CompressorOut_bh6_30_30(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_31_62 <= heap_bh6_w35_4_d1 & heap_bh6_w35_3_d1 & heap_bh6_w35_2_d1 & heap_bh6_w35_1_d1 & heap_bh6_w35_0_d1;
   CompressorIn_bh6_31_63(0) <= heap_bh6_w36_5_d1;
   Compressor_bh6_31: Compressor_15_3
      port map ( R => CompressorOut_bh6_31_31   ,
                 X0 => CompressorIn_bh6_31_62,
                 X1 => CompressorIn_bh6_31_63);
   heap_bh6_w35_8 <= CompressorOut_bh6_31_31(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w36_7 <= CompressorOut_bh6_31_31(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w37_6 <= CompressorOut_bh6_31_31(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_32_64 <= heap_bh6_w36_4_d1 & heap_bh6_w36_3_d1 & heap_bh6_w36_2_d1 & heap_bh6_w36_1_d1 & heap_bh6_w36_0_d1;
   CompressorIn_bh6_32_65(0) <= heap_bh6_w37_5_d1;
   Compressor_bh6_32: Compressor_15_3
      port map ( R => CompressorOut_bh6_32_32   ,
                 X0 => CompressorIn_bh6_32_64,
                 X1 => CompressorIn_bh6_32_65);
   heap_bh6_w36_8 <= CompressorOut_bh6_32_32(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w37_7 <= CompressorOut_bh6_32_32(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w38_6 <= CompressorOut_bh6_32_32(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_33_66 <= heap_bh6_w37_4_d1 & heap_bh6_w37_3_d1 & heap_bh6_w37_2_d1 & heap_bh6_w37_1_d1 & heap_bh6_w37_0_d1;
   CompressorIn_bh6_33_67(0) <= heap_bh6_w38_5_d1;
   Compressor_bh6_33: Compressor_15_3
      port map ( R => CompressorOut_bh6_33_33   ,
                 X0 => CompressorIn_bh6_33_66,
                 X1 => CompressorIn_bh6_33_67);
   heap_bh6_w37_8 <= CompressorOut_bh6_33_33(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w38_7 <= CompressorOut_bh6_33_33(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w39_6 <= CompressorOut_bh6_33_33(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_34_68 <= heap_bh6_w38_4_d1 & heap_bh6_w38_3_d1 & heap_bh6_w38_2_d1 & heap_bh6_w38_1_d1 & heap_bh6_w38_0_d1;
   CompressorIn_bh6_34_69(0) <= heap_bh6_w39_5_d1;
   Compressor_bh6_34: Compressor_15_3
      port map ( R => CompressorOut_bh6_34_34   ,
                 X0 => CompressorIn_bh6_34_68,
                 X1 => CompressorIn_bh6_34_69);
   heap_bh6_w38_8 <= CompressorOut_bh6_34_34(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w39_7 <= CompressorOut_bh6_34_34(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w40_6 <= CompressorOut_bh6_34_34(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_35_70 <= heap_bh6_w39_4_d1 & heap_bh6_w39_3_d1 & heap_bh6_w39_2_d1 & heap_bh6_w39_1_d1 & heap_bh6_w39_0_d1;
   CompressorIn_bh6_35_71(0) <= heap_bh6_w40_5_d1;
   Compressor_bh6_35: Compressor_15_3
      port map ( R => CompressorOut_bh6_35_35   ,
                 X0 => CompressorIn_bh6_35_70,
                 X1 => CompressorIn_bh6_35_71);
   heap_bh6_w39_8 <= CompressorOut_bh6_35_35(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w40_7 <= CompressorOut_bh6_35_35(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w41_6 <= CompressorOut_bh6_35_35(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_36_72 <= heap_bh6_w40_4_d1 & heap_bh6_w40_3_d1 & heap_bh6_w40_2_d1 & heap_bh6_w40_1_d1 & heap_bh6_w40_0_d1;
   CompressorIn_bh6_36_73(0) <= heap_bh6_w41_5_d1;
   Compressor_bh6_36: Compressor_15_3
      port map ( R => CompressorOut_bh6_36_36   ,
                 X0 => CompressorIn_bh6_36_72,
                 X1 => CompressorIn_bh6_36_73);
   heap_bh6_w40_8 <= CompressorOut_bh6_36_36(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w41_7 <= CompressorOut_bh6_36_36(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w42_6 <= CompressorOut_bh6_36_36(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_37_74 <= heap_bh6_w41_4_d1 & heap_bh6_w41_3_d1 & heap_bh6_w41_2_d1 & heap_bh6_w41_1_d1 & heap_bh6_w41_0_d1;
   CompressorIn_bh6_37_75(0) <= heap_bh6_w42_5_d1;
   Compressor_bh6_37: Compressor_15_3
      port map ( R => CompressorOut_bh6_37_37   ,
                 X0 => CompressorIn_bh6_37_74,
                 X1 => CompressorIn_bh6_37_75);
   heap_bh6_w41_8 <= CompressorOut_bh6_37_37(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w42_7 <= CompressorOut_bh6_37_37(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w43_6 <= CompressorOut_bh6_37_37(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_38_76 <= heap_bh6_w42_4_d1 & heap_bh6_w42_3_d1 & heap_bh6_w42_2_d1 & heap_bh6_w42_1_d1 & heap_bh6_w42_0_d1;
   CompressorIn_bh6_38_77(0) <= heap_bh6_w43_5_d1;
   Compressor_bh6_38: Compressor_15_3
      port map ( R => CompressorOut_bh6_38_38   ,
                 X0 => CompressorIn_bh6_38_76,
                 X1 => CompressorIn_bh6_38_77);
   heap_bh6_w42_8 <= CompressorOut_bh6_38_38(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w43_7 <= CompressorOut_bh6_38_38(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w44_6 <= CompressorOut_bh6_38_38(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_39_78 <= heap_bh6_w43_4_d1 & heap_bh6_w43_3_d1 & heap_bh6_w43_2_d1 & heap_bh6_w43_1_d1 & heap_bh6_w43_0_d1;
   CompressorIn_bh6_39_79(0) <= heap_bh6_w44_5_d1;
   Compressor_bh6_39: Compressor_15_3
      port map ( R => CompressorOut_bh6_39_39   ,
                 X0 => CompressorIn_bh6_39_78,
                 X1 => CompressorIn_bh6_39_79);
   heap_bh6_w43_8 <= CompressorOut_bh6_39_39(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w44_7 <= CompressorOut_bh6_39_39(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w45_6 <= CompressorOut_bh6_39_39(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_40_80 <= heap_bh6_w44_4_d1 & heap_bh6_w44_3_d1 & heap_bh6_w44_2_d1 & heap_bh6_w44_1_d1 & heap_bh6_w44_0_d1;
   CompressorIn_bh6_40_81(0) <= heap_bh6_w45_5_d1;
   Compressor_bh6_40: Compressor_15_3
      port map ( R => CompressorOut_bh6_40_40   ,
                 X0 => CompressorIn_bh6_40_80,
                 X1 => CompressorIn_bh6_40_81);
   heap_bh6_w44_8 <= CompressorOut_bh6_40_40(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w45_7 <= CompressorOut_bh6_40_40(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w46_6 <= CompressorOut_bh6_40_40(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_41_82 <= heap_bh6_w45_4_d1 & heap_bh6_w45_3_d1 & heap_bh6_w45_2_d1 & heap_bh6_w45_1_d1 & heap_bh6_w45_0_d1;
   CompressorIn_bh6_41_83(0) <= heap_bh6_w46_5_d1;
   Compressor_bh6_41: Compressor_15_3
      port map ( R => CompressorOut_bh6_41_41   ,
                 X0 => CompressorIn_bh6_41_82,
                 X1 => CompressorIn_bh6_41_83);
   heap_bh6_w45_8 <= CompressorOut_bh6_41_41(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w46_7 <= CompressorOut_bh6_41_41(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w47_6 <= CompressorOut_bh6_41_41(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_42_84 <= heap_bh6_w46_4_d1 & heap_bh6_w46_3_d1 & heap_bh6_w46_2_d1 & heap_bh6_w46_1_d1 & heap_bh6_w46_0_d1;
   CompressorIn_bh6_42_85(0) <= heap_bh6_w47_5_d1;
   Compressor_bh6_42: Compressor_15_3
      port map ( R => CompressorOut_bh6_42_42   ,
                 X0 => CompressorIn_bh6_42_84,
                 X1 => CompressorIn_bh6_42_85);
   heap_bh6_w46_8 <= CompressorOut_bh6_42_42(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w47_7 <= CompressorOut_bh6_42_42(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w48_6 <= CompressorOut_bh6_42_42(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_43_86 <= heap_bh6_w47_4_d1 & heap_bh6_w47_3_d1 & heap_bh6_w47_2_d1 & heap_bh6_w47_1_d1 & heap_bh6_w47_0_d1;
   CompressorIn_bh6_43_87(0) <= heap_bh6_w48_5_d1;
   Compressor_bh6_43: Compressor_15_3
      port map ( R => CompressorOut_bh6_43_43   ,
                 X0 => CompressorIn_bh6_43_86,
                 X1 => CompressorIn_bh6_43_87);
   heap_bh6_w47_8 <= CompressorOut_bh6_43_43(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w48_7 <= CompressorOut_bh6_43_43(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w49_6 <= CompressorOut_bh6_43_43(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_44_88 <= heap_bh6_w48_4_d1 & heap_bh6_w48_3_d1 & heap_bh6_w48_2_d1 & heap_bh6_w48_1_d1 & heap_bh6_w48_0_d1;
   CompressorIn_bh6_44_89(0) <= heap_bh6_w49_5_d1;
   Compressor_bh6_44: Compressor_15_3
      port map ( R => CompressorOut_bh6_44_44   ,
                 X0 => CompressorIn_bh6_44_88,
                 X1 => CompressorIn_bh6_44_89);
   heap_bh6_w48_8 <= CompressorOut_bh6_44_44(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w49_7 <= CompressorOut_bh6_44_44(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w50_6 <= CompressorOut_bh6_44_44(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_45_90 <= heap_bh6_w49_4_d1 & heap_bh6_w49_3_d1 & heap_bh6_w49_2_d1 & heap_bh6_w49_1_d1 & heap_bh6_w49_0_d1;
   CompressorIn_bh6_45_91(0) <= heap_bh6_w50_5_d1;
   Compressor_bh6_45: Compressor_15_3
      port map ( R => CompressorOut_bh6_45_45   ,
                 X0 => CompressorIn_bh6_45_90,
                 X1 => CompressorIn_bh6_45_91);
   heap_bh6_w49_8 <= CompressorOut_bh6_45_45(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w50_7 <= CompressorOut_bh6_45_45(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w51_6 <= CompressorOut_bh6_45_45(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_46_92 <= heap_bh6_w50_4_d1 & heap_bh6_w50_3_d1 & heap_bh6_w50_2_d1 & heap_bh6_w50_1_d1 & heap_bh6_w50_0_d1;
   CompressorIn_bh6_46_93(0) <= heap_bh6_w51_5_d1;
   Compressor_bh6_46: Compressor_15_3
      port map ( R => CompressorOut_bh6_46_46   ,
                 X0 => CompressorIn_bh6_46_92,
                 X1 => CompressorIn_bh6_46_93);
   heap_bh6_w50_8 <= CompressorOut_bh6_46_46(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w51_7 <= CompressorOut_bh6_46_46(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w52_6 <= CompressorOut_bh6_46_46(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_47_94 <= heap_bh6_w51_4_d1 & heap_bh6_w51_3_d1 & heap_bh6_w51_2_d1 & heap_bh6_w51_1_d1 & heap_bh6_w51_0_d1;
   CompressorIn_bh6_47_95(0) <= heap_bh6_w52_5_d1;
   Compressor_bh6_47: Compressor_15_3
      port map ( R => CompressorOut_bh6_47_47   ,
                 X0 => CompressorIn_bh6_47_94,
                 X1 => CompressorIn_bh6_47_95);
   heap_bh6_w51_8 <= CompressorOut_bh6_47_47(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w52_7 <= CompressorOut_bh6_47_47(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w53_6 <= CompressorOut_bh6_47_47(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_48_96 <= heap_bh6_w52_4_d1 & heap_bh6_w52_3_d1 & heap_bh6_w52_2_d1 & heap_bh6_w52_1_d1 & heap_bh6_w52_0_d1;
   CompressorIn_bh6_48_97(0) <= heap_bh6_w53_5_d1;
   Compressor_bh6_48: Compressor_15_3
      port map ( R => CompressorOut_bh6_48_48   ,
                 X0 => CompressorIn_bh6_48_96,
                 X1 => CompressorIn_bh6_48_97);
   heap_bh6_w52_8 <= CompressorOut_bh6_48_48(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w53_7 <= CompressorOut_bh6_48_48(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w54_6 <= CompressorOut_bh6_48_48(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_49_98 <= heap_bh6_w53_4_d1 & heap_bh6_w53_3_d1 & heap_bh6_w53_2_d1 & heap_bh6_w53_1_d1 & heap_bh6_w53_0_d1;
   CompressorIn_bh6_49_99(0) <= heap_bh6_w54_5_d1;
   Compressor_bh6_49: Compressor_15_3
      port map ( R => CompressorOut_bh6_49_49   ,
                 X0 => CompressorIn_bh6_49_98,
                 X1 => CompressorIn_bh6_49_99);
   heap_bh6_w53_8 <= CompressorOut_bh6_49_49(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w54_7 <= CompressorOut_bh6_49_49(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w55_5 <= CompressorOut_bh6_49_49(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_50_100 <= heap_bh6_w54_4_d1 & heap_bh6_w54_3_d1 & heap_bh6_w54_2_d1 & heap_bh6_w54_1_d1 & heap_bh6_w54_0_d1;
   CompressorIn_bh6_50_101(0) <= heap_bh6_w55_4_d1;
   Compressor_bh6_50: Compressor_15_3
      port map ( R => CompressorOut_bh6_50_50   ,
                 X0 => CompressorIn_bh6_50_100,
                 X1 => CompressorIn_bh6_50_101);
   heap_bh6_w54_8 <= CompressorOut_bh6_50_50(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w55_6 <= CompressorOut_bh6_50_50(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w56_5 <= CompressorOut_bh6_50_50(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_51_102 <= heap_bh6_w55_3_d1 & heap_bh6_w55_2_d1 & heap_bh6_w55_1_d1 & heap_bh6_w55_0_d1;
   CompressorIn_bh6_51_103(0) <= heap_bh6_w56_4_d1;
   Compressor_bh6_51: Compressor_14_3
      port map ( R => CompressorOut_bh6_51_51   ,
                 X0 => CompressorIn_bh6_51_102,
                 X1 => CompressorIn_bh6_51_103);
   heap_bh6_w55_7 <= CompressorOut_bh6_51_51(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w56_6 <= CompressorOut_bh6_51_51(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w57_5 <= CompressorOut_bh6_51_51(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_52_104 <= heap_bh6_w56_3_d1 & heap_bh6_w56_2_d1 & heap_bh6_w56_1_d1 & heap_bh6_w56_0_d1;
   CompressorIn_bh6_52_105(0) <= heap_bh6_w57_4_d1;
   Compressor_bh6_52: Compressor_14_3
      port map ( R => CompressorOut_bh6_52_52   ,
                 X0 => CompressorIn_bh6_52_104,
                 X1 => CompressorIn_bh6_52_105);
   heap_bh6_w56_7 <= CompressorOut_bh6_52_52(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w57_6 <= CompressorOut_bh6_52_52(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w58_4 <= CompressorOut_bh6_52_52(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_53_106 <= heap_bh6_w57_3_d1 & heap_bh6_w57_2_d1 & heap_bh6_w57_1_d1 & heap_bh6_w57_0_d1;
   CompressorIn_bh6_53_107(0) <= heap_bh6_w58_3_d1;
   Compressor_bh6_53: Compressor_14_3
      port map ( R => CompressorOut_bh6_53_53   ,
                 X0 => CompressorIn_bh6_53_106,
                 X1 => CompressorIn_bh6_53_107);
   heap_bh6_w57_7 <= CompressorOut_bh6_53_53(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w58_5 <= CompressorOut_bh6_53_53(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w59_4 <= CompressorOut_bh6_53_53(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_54_108 <= heap_bh6_w58_2_d1 & heap_bh6_w58_1_d1 & heap_bh6_w58_0_d1;
   CompressorIn_bh6_54_109 <= heap_bh6_w59_3_d1 & heap_bh6_w59_2_d1;
   Compressor_bh6_54: Compressor_23_3
      port map ( R => CompressorOut_bh6_54_54   ,
                 X0 => CompressorIn_bh6_54_108,
                 X1 => CompressorIn_bh6_54_109);
   heap_bh6_w58_6 <= CompressorOut_bh6_54_54(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w59_5 <= CompressorOut_bh6_54_54(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w60_4 <= CompressorOut_bh6_54_54(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_55_110 <= heap_bh6_w60_3_d1 & heap_bh6_w60_2_d1 & heap_bh6_w60_1_d1 & heap_bh6_w60_0_d1;
   CompressorIn_bh6_55_111(0) <= heap_bh6_w61_3_d1;
   Compressor_bh6_55: Compressor_14_3
      port map ( R => CompressorOut_bh6_55_55   ,
                 X0 => CompressorIn_bh6_55_110,
                 X1 => CompressorIn_bh6_55_111);
   heap_bh6_w60_5 <= CompressorOut_bh6_55_55(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w61_4 <= CompressorOut_bh6_55_55(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w62_4 <= CompressorOut_bh6_55_55(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_56_112 <= heap_bh6_w61_2_d1 & heap_bh6_w61_1_d1 & heap_bh6_w61_0_d1;
   CompressorIn_bh6_56_113 <= heap_bh6_w62_3_d1 & heap_bh6_w62_2_d1;
   Compressor_bh6_56: Compressor_23_3
      port map ( R => CompressorOut_bh6_56_56   ,
                 X0 => CompressorIn_bh6_56_112,
                 X1 => CompressorIn_bh6_56_113);
   heap_bh6_w61_5 <= CompressorOut_bh6_56_56(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w62_5 <= CompressorOut_bh6_56_56(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w63_4 <= CompressorOut_bh6_56_56(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_57_114 <= heap_bh6_w63_3_d1 & heap_bh6_w63_2_d1 & heap_bh6_w63_1_d1 & heap_bh6_w63_0_d1;
   CompressorIn_bh6_57_115(0) <= heap_bh6_w64_3_d1;
   Compressor_bh6_57: Compressor_14_3
      port map ( R => CompressorOut_bh6_57_57   ,
                 X0 => CompressorIn_bh6_57_114,
                 X1 => CompressorIn_bh6_57_115);
   heap_bh6_w63_5 <= CompressorOut_bh6_57_57(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w64_4 <= CompressorOut_bh6_57_57(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w65_4 <= CompressorOut_bh6_57_57(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_58_116 <= heap_bh6_w64_2_d1 & heap_bh6_w64_1_d1 & heap_bh6_w64_0_d1;
   CompressorIn_bh6_58_117 <= heap_bh6_w65_3_d1 & heap_bh6_w65_2_d1;
   Compressor_bh6_58: Compressor_23_3
      port map ( R => CompressorOut_bh6_58_58   ,
                 X0 => CompressorIn_bh6_58_116,
                 X1 => CompressorIn_bh6_58_117);
   heap_bh6_w64_5 <= CompressorOut_bh6_58_58(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w65_5 <= CompressorOut_bh6_58_58(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w66_4 <= CompressorOut_bh6_58_58(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_59_118 <= heap_bh6_w66_3_d1 & heap_bh6_w66_2_d1 & heap_bh6_w66_1_d1 & heap_bh6_w66_0_d1;
   CompressorIn_bh6_59_119(0) <= heap_bh6_w67_3_d1;
   Compressor_bh6_59: Compressor_14_3
      port map ( R => CompressorOut_bh6_59_59   ,
                 X0 => CompressorIn_bh6_59_118,
                 X1 => CompressorIn_bh6_59_119);
   heap_bh6_w66_5 <= CompressorOut_bh6_59_59(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w67_4 <= CompressorOut_bh6_59_59(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w68_4 <= CompressorOut_bh6_59_59(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_60_120 <= heap_bh6_w67_2_d1 & heap_bh6_w67_1_d1 & heap_bh6_w67_0_d1;
   CompressorIn_bh6_60_121 <= heap_bh6_w68_3_d1 & heap_bh6_w68_2_d1;
   Compressor_bh6_60: Compressor_23_3
      port map ( R => CompressorOut_bh6_60_60   ,
                 X0 => CompressorIn_bh6_60_120,
                 X1 => CompressorIn_bh6_60_121);
   heap_bh6_w67_5 <= CompressorOut_bh6_60_60(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w68_5 <= CompressorOut_bh6_60_60(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w69_4 <= CompressorOut_bh6_60_60(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_61_122 <= heap_bh6_w69_3_d1 & heap_bh6_w69_2_d1 & heap_bh6_w69_1_d1 & heap_bh6_w69_0_d1;
   CompressorIn_bh6_61_123(0) <= heap_bh6_w70_3_d1;
   Compressor_bh6_61: Compressor_14_3
      port map ( R => CompressorOut_bh6_61_61   ,
                 X0 => CompressorIn_bh6_61_122,
                 X1 => CompressorIn_bh6_61_123);
   heap_bh6_w69_5 <= CompressorOut_bh6_61_61(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w70_4 <= CompressorOut_bh6_61_61(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w71_4 <= CompressorOut_bh6_61_61(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_62_124 <= heap_bh6_w70_2_d1 & heap_bh6_w70_1_d1 & heap_bh6_w70_0_d1;
   CompressorIn_bh6_62_125 <= heap_bh6_w71_3_d1 & heap_bh6_w71_2_d1;
   Compressor_bh6_62: Compressor_23_3
      port map ( R => CompressorOut_bh6_62_62   ,
                 X0 => CompressorIn_bh6_62_124,
                 X1 => CompressorIn_bh6_62_125);
   heap_bh6_w70_5 <= CompressorOut_bh6_62_62(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w71_5 <= CompressorOut_bh6_62_62(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w72_3 <= CompressorOut_bh6_62_62(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_63_126 <= heap_bh6_w72_2_d1 & heap_bh6_w72_1_d1 & heap_bh6_w72_0_d1;
   CompressorIn_bh6_63_127 <= heap_bh6_w73_2_d1 & heap_bh6_w73_1_d1;
   Compressor_bh6_63: Compressor_23_3
      port map ( R => CompressorOut_bh6_63_63   ,
                 X0 => CompressorIn_bh6_63_126,
                 X1 => CompressorIn_bh6_63_127);
   heap_bh6_w72_4 <= CompressorOut_bh6_63_63(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w73_3 <= CompressorOut_bh6_63_63(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w74_3 <= CompressorOut_bh6_63_63(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_64_128 <= heap_bh6_w74_2_d1 & heap_bh6_w74_1_d1 & heap_bh6_w74_0_d1;
   CompressorIn_bh6_64_129 <= heap_bh6_w75_2_d1 & heap_bh6_w75_1_d1;
   Compressor_bh6_64: Compressor_23_3
      port map ( R => CompressorOut_bh6_64_64   ,
                 X0 => CompressorIn_bh6_64_128,
                 X1 => CompressorIn_bh6_64_129);
   heap_bh6_w74_4 <= CompressorOut_bh6_64_64(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w75_3 <= CompressorOut_bh6_64_64(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w76_3 <= CompressorOut_bh6_64_64(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_65_130 <= heap_bh6_w76_2_d1 & heap_bh6_w76_1_d1 & heap_bh6_w76_0_d1;
   CompressorIn_bh6_65_131 <= heap_bh6_w77_2_d1 & heap_bh6_w77_1_d1;
   Compressor_bh6_65: Compressor_23_3
      port map ( R => CompressorOut_bh6_65_65   ,
                 X0 => CompressorIn_bh6_65_130,
                 X1 => CompressorIn_bh6_65_131);
   heap_bh6_w76_4 <= CompressorOut_bh6_65_65(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w77_3 <= CompressorOut_bh6_65_65(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w78_3 <= CompressorOut_bh6_65_65(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_66_132 <= heap_bh6_w78_2_d1 & heap_bh6_w78_1_d1 & heap_bh6_w78_0_d1;
   CompressorIn_bh6_66_133 <= heap_bh6_w79_2_d1 & heap_bh6_w79_1_d1;
   Compressor_bh6_66: Compressor_23_3
      port map ( R => CompressorOut_bh6_66_66   ,
                 X0 => CompressorIn_bh6_66_132,
                 X1 => CompressorIn_bh6_66_133);
   heap_bh6_w78_4 <= CompressorOut_bh6_66_66(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w79_3 <= CompressorOut_bh6_66_66(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w80_3 <= CompressorOut_bh6_66_66(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_67_134 <= heap_bh6_w80_2_d1 & heap_bh6_w80_1_d1 & heap_bh6_w80_0_d1;
   CompressorIn_bh6_67_135 <= heap_bh6_w81_2_d1 & heap_bh6_w81_1_d1;
   Compressor_bh6_67: Compressor_23_3
      port map ( R => CompressorOut_bh6_67_67   ,
                 X0 => CompressorIn_bh6_67_134,
                 X1 => CompressorIn_bh6_67_135);
   heap_bh6_w80_4 <= CompressorOut_bh6_67_67(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w81_3 <= CompressorOut_bh6_67_67(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w82_2 <= CompressorOut_bh6_67_67(2); -- cycle= 1 cp= 5.3072e-10
   ----------------Synchro barrier, entering cycle 1----------------
   tempR_bh6_0 <= heap_bh6_w0_4; -- already compressed

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_68_136 <= heap_bh6_w2_1_d1 & heap_bh6_w2_0_d1 & heap_bh6_w2_5 & heap_bh6_w2_4;
   CompressorIn_bh6_68_137(0) <= heap_bh6_w3_5;
   Compressor_bh6_68: Compressor_14_3
      port map ( R => CompressorOut_bh6_68_68   ,
                 X0 => CompressorIn_bh6_68_136,
                 X1 => CompressorIn_bh6_68_137);
   heap_bh6_w2_6 <= CompressorOut_bh6_68_68(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w3_6 <= CompressorOut_bh6_68_68(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w4_6 <= CompressorOut_bh6_68_68(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_69_138 <= heap_bh6_w5_1_d1 & heap_bh6_w5_0_d1 & heap_bh6_w5_5 & heap_bh6_w5_4;
   CompressorIn_bh6_69_139(0) <= heap_bh6_w6_5;
   Compressor_bh6_69: Compressor_14_3
      port map ( R => CompressorOut_bh6_69_69   ,
                 X0 => CompressorIn_bh6_69_138,
                 X1 => CompressorIn_bh6_69_139);
   heap_bh6_w5_6 <= CompressorOut_bh6_69_69(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w6_6 <= CompressorOut_bh6_69_69(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w7_6 <= CompressorOut_bh6_69_69(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_70_140 <= heap_bh6_w8_1_d1 & heap_bh6_w8_0_d1 & heap_bh6_w8_5 & heap_bh6_w8_4;
   CompressorIn_bh6_70_141(0) <= heap_bh6_w9_5;
   Compressor_bh6_70: Compressor_14_3
      port map ( R => CompressorOut_bh6_70_70   ,
                 X0 => CompressorIn_bh6_70_140,
                 X1 => CompressorIn_bh6_70_141);
   heap_bh6_w8_6 <= CompressorOut_bh6_70_70(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w9_6 <= CompressorOut_bh6_70_70(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w10_6 <= CompressorOut_bh6_70_70(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_71_142 <= heap_bh6_w11_1_d1 & heap_bh6_w11_0_d1 & heap_bh6_w11_5 & heap_bh6_w11_4;
   CompressorIn_bh6_71_143(0) <= heap_bh6_w12_5;
   Compressor_bh6_71: Compressor_14_3
      port map ( R => CompressorOut_bh6_71_71   ,
                 X0 => CompressorIn_bh6_71_142,
                 X1 => CompressorIn_bh6_71_143);
   heap_bh6_w11_6 <= CompressorOut_bh6_71_71(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w12_6 <= CompressorOut_bh6_71_71(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w13_6 <= CompressorOut_bh6_71_71(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_72_144 <= heap_bh6_w14_7 & heap_bh6_w14_6 & heap_bh6_w14_5;
   CompressorIn_bh6_72_145 <= heap_bh6_w15_7 & heap_bh6_w15_6;
   Compressor_bh6_72: Compressor_23_3
      port map ( R => CompressorOut_bh6_72_72   ,
                 X0 => CompressorIn_bh6_72_144,
                 X1 => CompressorIn_bh6_72_145);
   heap_bh6_w14_8 <= CompressorOut_bh6_72_72(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w15_8 <= CompressorOut_bh6_72_72(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w16_8 <= CompressorOut_bh6_72_72(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_73_146 <= heap_bh6_w16_7 & heap_bh6_w16_6 & heap_bh6_w16_5;
   CompressorIn_bh6_73_147 <= heap_bh6_w17_8 & heap_bh6_w17_7;
   Compressor_bh6_73: Compressor_23_3
      port map ( R => CompressorOut_bh6_73_73   ,
                 X0 => CompressorIn_bh6_73_146,
                 X1 => CompressorIn_bh6_73_147);
   heap_bh6_w16_9 <= CompressorOut_bh6_73_73(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w17_9 <= CompressorOut_bh6_73_73(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w18_9 <= CompressorOut_bh6_73_73(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_74_148 <= heap_bh6_w18_8 & heap_bh6_w18_7 & heap_bh6_w18_6;
   CompressorIn_bh6_74_149 <= heap_bh6_w19_8 & heap_bh6_w19_7;
   Compressor_bh6_74: Compressor_23_3
      port map ( R => CompressorOut_bh6_74_74   ,
                 X0 => CompressorIn_bh6_74_148,
                 X1 => CompressorIn_bh6_74_149);
   heap_bh6_w18_10 <= CompressorOut_bh6_74_74(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w19_9 <= CompressorOut_bh6_74_74(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w20_9 <= CompressorOut_bh6_74_74(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_75_150 <= heap_bh6_w20_8 & heap_bh6_w20_7 & heap_bh6_w20_6;
   CompressorIn_bh6_75_151 <= heap_bh6_w21_8 & heap_bh6_w21_7;
   Compressor_bh6_75: Compressor_23_3
      port map ( R => CompressorOut_bh6_75_75   ,
                 X0 => CompressorIn_bh6_75_150,
                 X1 => CompressorIn_bh6_75_151);
   heap_bh6_w20_10 <= CompressorOut_bh6_75_75(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w21_9 <= CompressorOut_bh6_75_75(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w22_9 <= CompressorOut_bh6_75_75(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_76_152 <= heap_bh6_w22_8 & heap_bh6_w22_7 & heap_bh6_w22_6;
   CompressorIn_bh6_76_153 <= heap_bh6_w23_8 & heap_bh6_w23_7;
   Compressor_bh6_76: Compressor_23_3
      port map ( R => CompressorOut_bh6_76_76   ,
                 X0 => CompressorIn_bh6_76_152,
                 X1 => CompressorIn_bh6_76_153);
   heap_bh6_w22_10 <= CompressorOut_bh6_76_76(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w23_9 <= CompressorOut_bh6_76_76(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w24_9 <= CompressorOut_bh6_76_76(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_77_154 <= heap_bh6_w24_8 & heap_bh6_w24_7 & heap_bh6_w24_6;
   CompressorIn_bh6_77_155 <= heap_bh6_w25_8 & heap_bh6_w25_7;
   Compressor_bh6_77: Compressor_23_3
      port map ( R => CompressorOut_bh6_77_77   ,
                 X0 => CompressorIn_bh6_77_154,
                 X1 => CompressorIn_bh6_77_155);
   heap_bh6_w24_10 <= CompressorOut_bh6_77_77(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w25_9 <= CompressorOut_bh6_77_77(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w26_9 <= CompressorOut_bh6_77_77(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_78_156 <= heap_bh6_w26_8 & heap_bh6_w26_7 & heap_bh6_w26_6;
   CompressorIn_bh6_78_157 <= heap_bh6_w27_8 & heap_bh6_w27_7;
   Compressor_bh6_78: Compressor_23_3
      port map ( R => CompressorOut_bh6_78_78   ,
                 X0 => CompressorIn_bh6_78_156,
                 X1 => CompressorIn_bh6_78_157);
   heap_bh6_w26_10 <= CompressorOut_bh6_78_78(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w27_9 <= CompressorOut_bh6_78_78(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w28_9 <= CompressorOut_bh6_78_78(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_79_158 <= heap_bh6_w28_8 & heap_bh6_w28_7 & heap_bh6_w28_6;
   CompressorIn_bh6_79_159 <= heap_bh6_w29_8 & heap_bh6_w29_7;
   Compressor_bh6_79: Compressor_23_3
      port map ( R => CompressorOut_bh6_79_79   ,
                 X0 => CompressorIn_bh6_79_158,
                 X1 => CompressorIn_bh6_79_159);
   heap_bh6_w28_10 <= CompressorOut_bh6_79_79(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w29_9 <= CompressorOut_bh6_79_79(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w30_9 <= CompressorOut_bh6_79_79(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_80_160 <= heap_bh6_w30_8 & heap_bh6_w30_7 & heap_bh6_w30_6;
   CompressorIn_bh6_80_161 <= heap_bh6_w31_8 & heap_bh6_w31_7;
   Compressor_bh6_80: Compressor_23_3
      port map ( R => CompressorOut_bh6_80_80   ,
                 X0 => CompressorIn_bh6_80_160,
                 X1 => CompressorIn_bh6_80_161);
   heap_bh6_w30_10 <= CompressorOut_bh6_80_80(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w31_9 <= CompressorOut_bh6_80_80(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w32_9 <= CompressorOut_bh6_80_80(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_81_162 <= heap_bh6_w32_8 & heap_bh6_w32_7 & heap_bh6_w32_6;
   CompressorIn_bh6_81_163 <= heap_bh6_w33_8 & heap_bh6_w33_7;
   Compressor_bh6_81: Compressor_23_3
      port map ( R => CompressorOut_bh6_81_81   ,
                 X0 => CompressorIn_bh6_81_162,
                 X1 => CompressorIn_bh6_81_163);
   heap_bh6_w32_10 <= CompressorOut_bh6_81_81(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w33_9 <= CompressorOut_bh6_81_81(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w34_9 <= CompressorOut_bh6_81_81(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_82_164 <= heap_bh6_w34_8 & heap_bh6_w34_7 & heap_bh6_w34_6;
   CompressorIn_bh6_82_165 <= heap_bh6_w35_8 & heap_bh6_w35_7;
   Compressor_bh6_82: Compressor_23_3
      port map ( R => CompressorOut_bh6_82_82   ,
                 X0 => CompressorIn_bh6_82_164,
                 X1 => CompressorIn_bh6_82_165);
   heap_bh6_w34_10 <= CompressorOut_bh6_82_82(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w35_9 <= CompressorOut_bh6_82_82(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w36_9 <= CompressorOut_bh6_82_82(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_83_166 <= heap_bh6_w36_8 & heap_bh6_w36_7 & heap_bh6_w36_6;
   CompressorIn_bh6_83_167 <= heap_bh6_w37_8 & heap_bh6_w37_7;
   Compressor_bh6_83: Compressor_23_3
      port map ( R => CompressorOut_bh6_83_83   ,
                 X0 => CompressorIn_bh6_83_166,
                 X1 => CompressorIn_bh6_83_167);
   heap_bh6_w36_10 <= CompressorOut_bh6_83_83(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w37_9 <= CompressorOut_bh6_83_83(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w38_9 <= CompressorOut_bh6_83_83(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_84_168 <= heap_bh6_w38_8 & heap_bh6_w38_7 & heap_bh6_w38_6;
   CompressorIn_bh6_84_169 <= heap_bh6_w39_8 & heap_bh6_w39_7;
   Compressor_bh6_84: Compressor_23_3
      port map ( R => CompressorOut_bh6_84_84   ,
                 X0 => CompressorIn_bh6_84_168,
                 X1 => CompressorIn_bh6_84_169);
   heap_bh6_w38_10 <= CompressorOut_bh6_84_84(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w39_9 <= CompressorOut_bh6_84_84(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w40_9 <= CompressorOut_bh6_84_84(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_85_170 <= heap_bh6_w40_8 & heap_bh6_w40_7 & heap_bh6_w40_6;
   CompressorIn_bh6_85_171 <= heap_bh6_w41_8 & heap_bh6_w41_7;
   Compressor_bh6_85: Compressor_23_3
      port map ( R => CompressorOut_bh6_85_85   ,
                 X0 => CompressorIn_bh6_85_170,
                 X1 => CompressorIn_bh6_85_171);
   heap_bh6_w40_10 <= CompressorOut_bh6_85_85(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w41_9 <= CompressorOut_bh6_85_85(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w42_9 <= CompressorOut_bh6_85_85(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_86_172 <= heap_bh6_w42_8 & heap_bh6_w42_7 & heap_bh6_w42_6;
   CompressorIn_bh6_86_173 <= heap_bh6_w43_8 & heap_bh6_w43_7;
   Compressor_bh6_86: Compressor_23_3
      port map ( R => CompressorOut_bh6_86_86   ,
                 X0 => CompressorIn_bh6_86_172,
                 X1 => CompressorIn_bh6_86_173);
   heap_bh6_w42_10 <= CompressorOut_bh6_86_86(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w43_9 <= CompressorOut_bh6_86_86(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w44_9 <= CompressorOut_bh6_86_86(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_87_174 <= heap_bh6_w44_8 & heap_bh6_w44_7 & heap_bh6_w44_6;
   CompressorIn_bh6_87_175 <= heap_bh6_w45_8 & heap_bh6_w45_7;
   Compressor_bh6_87: Compressor_23_3
      port map ( R => CompressorOut_bh6_87_87   ,
                 X0 => CompressorIn_bh6_87_174,
                 X1 => CompressorIn_bh6_87_175);
   heap_bh6_w44_10 <= CompressorOut_bh6_87_87(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w45_9 <= CompressorOut_bh6_87_87(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w46_9 <= CompressorOut_bh6_87_87(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_88_176 <= heap_bh6_w46_8 & heap_bh6_w46_7 & heap_bh6_w46_6;
   CompressorIn_bh6_88_177 <= heap_bh6_w47_8 & heap_bh6_w47_7;
   Compressor_bh6_88: Compressor_23_3
      port map ( R => CompressorOut_bh6_88_88   ,
                 X0 => CompressorIn_bh6_88_176,
                 X1 => CompressorIn_bh6_88_177);
   heap_bh6_w46_10 <= CompressorOut_bh6_88_88(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w47_9 <= CompressorOut_bh6_88_88(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w48_9 <= CompressorOut_bh6_88_88(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_89_178 <= heap_bh6_w48_8 & heap_bh6_w48_7 & heap_bh6_w48_6;
   CompressorIn_bh6_89_179 <= heap_bh6_w49_8 & heap_bh6_w49_7;
   Compressor_bh6_89: Compressor_23_3
      port map ( R => CompressorOut_bh6_89_89   ,
                 X0 => CompressorIn_bh6_89_178,
                 X1 => CompressorIn_bh6_89_179);
   heap_bh6_w48_10 <= CompressorOut_bh6_89_89(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w49_9 <= CompressorOut_bh6_89_89(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w50_9 <= CompressorOut_bh6_89_89(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_90_180 <= heap_bh6_w50_8 & heap_bh6_w50_7 & heap_bh6_w50_6;
   CompressorIn_bh6_90_181 <= heap_bh6_w51_8 & heap_bh6_w51_7;
   Compressor_bh6_90: Compressor_23_3
      port map ( R => CompressorOut_bh6_90_90   ,
                 X0 => CompressorIn_bh6_90_180,
                 X1 => CompressorIn_bh6_90_181);
   heap_bh6_w50_10 <= CompressorOut_bh6_90_90(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w51_9 <= CompressorOut_bh6_90_90(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w52_9 <= CompressorOut_bh6_90_90(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_91_182 <= heap_bh6_w52_8 & heap_bh6_w52_7 & heap_bh6_w52_6;
   CompressorIn_bh6_91_183 <= heap_bh6_w53_8 & heap_bh6_w53_7;
   Compressor_bh6_91: Compressor_23_3
      port map ( R => CompressorOut_bh6_91_91   ,
                 X0 => CompressorIn_bh6_91_182,
                 X1 => CompressorIn_bh6_91_183);
   heap_bh6_w52_10 <= CompressorOut_bh6_91_91(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w53_9 <= CompressorOut_bh6_91_91(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w54_9 <= CompressorOut_bh6_91_91(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_92_184 <= heap_bh6_w54_8 & heap_bh6_w54_7 & heap_bh6_w54_6;
   CompressorIn_bh6_92_185 <= heap_bh6_w55_7 & heap_bh6_w55_6;
   Compressor_bh6_92: Compressor_23_3
      port map ( R => CompressorOut_bh6_92_92   ,
                 X0 => CompressorIn_bh6_92_184,
                 X1 => CompressorIn_bh6_92_185);
   heap_bh6_w54_10 <= CompressorOut_bh6_92_92(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w55_8 <= CompressorOut_bh6_92_92(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w56_8 <= CompressorOut_bh6_92_92(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_93_186 <= heap_bh6_w56_7 & heap_bh6_w56_6 & heap_bh6_w56_5;
   CompressorIn_bh6_93_187 <= heap_bh6_w57_7 & heap_bh6_w57_6;
   Compressor_bh6_93: Compressor_23_3
      port map ( R => CompressorOut_bh6_93_93   ,
                 X0 => CompressorIn_bh6_93_186,
                 X1 => CompressorIn_bh6_93_187);
   heap_bh6_w56_9 <= CompressorOut_bh6_93_93(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w57_8 <= CompressorOut_bh6_93_93(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w58_7 <= CompressorOut_bh6_93_93(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_94_188 <= heap_bh6_w58_6 & heap_bh6_w58_5 & heap_bh6_w58_4;
   CompressorIn_bh6_94_189 <= heap_bh6_w59_1_d1 & heap_bh6_w59_0_d1;
   Compressor_bh6_94: Compressor_23_3
      port map ( R => CompressorOut_bh6_94_94   ,
                 X0 => CompressorIn_bh6_94_188,
                 X1 => CompressorIn_bh6_94_189);
   heap_bh6_w58_8 <= CompressorOut_bh6_94_94(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w59_6 <= CompressorOut_bh6_94_94(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w60_6 <= CompressorOut_bh6_94_94(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_95_190 <= heap_bh6_w62_1_d1 & heap_bh6_w62_0_d1 & heap_bh6_w62_5 & heap_bh6_w62_4;
   CompressorIn_bh6_95_191(0) <= heap_bh6_w63_5;
   Compressor_bh6_95: Compressor_14_3
      port map ( R => CompressorOut_bh6_95_95   ,
                 X0 => CompressorIn_bh6_95_190,
                 X1 => CompressorIn_bh6_95_191);
   heap_bh6_w62_6 <= CompressorOut_bh6_95_95(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w63_6 <= CompressorOut_bh6_95_95(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w64_6 <= CompressorOut_bh6_95_95(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_96_192 <= heap_bh6_w65_1_d1 & heap_bh6_w65_0_d1 & heap_bh6_w65_5 & heap_bh6_w65_4;
   CompressorIn_bh6_96_193(0) <= heap_bh6_w66_5;
   Compressor_bh6_96: Compressor_14_3
      port map ( R => CompressorOut_bh6_96_96   ,
                 X0 => CompressorIn_bh6_96_192,
                 X1 => CompressorIn_bh6_96_193);
   heap_bh6_w65_6 <= CompressorOut_bh6_96_96(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w66_6 <= CompressorOut_bh6_96_96(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w67_6 <= CompressorOut_bh6_96_96(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_97_194 <= heap_bh6_w68_1_d1 & heap_bh6_w68_0_d1 & heap_bh6_w68_5 & heap_bh6_w68_4;
   CompressorIn_bh6_97_195(0) <= heap_bh6_w69_5;
   Compressor_bh6_97: Compressor_14_3
      port map ( R => CompressorOut_bh6_97_97   ,
                 X0 => CompressorIn_bh6_97_194,
                 X1 => CompressorIn_bh6_97_195);
   heap_bh6_w68_6 <= CompressorOut_bh6_97_97(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w69_6 <= CompressorOut_bh6_97_97(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w70_6 <= CompressorOut_bh6_97_97(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_98_196 <= heap_bh6_w71_1_d1 & heap_bh6_w71_0_d1 & heap_bh6_w71_5 & heap_bh6_w71_4;
   CompressorIn_bh6_98_197(0) <= heap_bh6_w72_4;
   Compressor_bh6_98: Compressor_14_3
      port map ( R => CompressorOut_bh6_98_98   ,
                 X0 => CompressorIn_bh6_98_196,
                 X1 => CompressorIn_bh6_98_197);
   heap_bh6_w71_6 <= CompressorOut_bh6_98_98(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w72_5 <= CompressorOut_bh6_98_98(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w73_4 <= CompressorOut_bh6_98_98(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_99_198 <= heap_bh6_w82_1_d1 & heap_bh6_w82_0_d1 & heap_bh6_w82_2;
   CompressorIn_bh6_99_199 <= heap_bh6_w83_1_d1 & heap_bh6_w83_0_d1;
   Compressor_bh6_99: Compressor_23_3
      port map ( R => CompressorOut_bh6_99_99   ,
                 X0 => CompressorIn_bh6_99_198,
                 X1 => CompressorIn_bh6_99_199);
   heap_bh6_w82_3 <= CompressorOut_bh6_99_99(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w83_2 <= CompressorOut_bh6_99_99(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w84_2 <= CompressorOut_bh6_99_99(2); -- cycle= 1 cp= 1.06144e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh6_0 <= '0' & heap_bh6_w3_4 & heap_bh6_w2_6 & heap_bh6_w1_5;
   inAdder1_bh6_0 <= '0' & heap_bh6_w3_6 & '0' & heap_bh6_w1_4;
   cin_bh6_0 <= '0';
   outAdder_bh6_0 <= inAdder0_bh6_0 + inAdder1_bh6_0 + cin_bh6_0;
   heap_bh6_w1_6 <= outAdder_bh6_0(0); -- cycle= 1 cp= 2.26616e-09
   heap_bh6_w2_7 <= outAdder_bh6_0(1); -- cycle= 1 cp= 2.26616e-09
   heap_bh6_w3_7 <= outAdder_bh6_0(2); -- cycle= 1 cp= 2.26616e-09
   heap_bh6_w4_7 <= outAdder_bh6_0(3); -- cycle= 1 cp= 2.26616e-09
   ----------------Synchro barrier, entering cycle 1----------------
   tempR_bh6_1 <= heap_bh6_w3_7 & heap_bh6_w2_7 & heap_bh6_w1_6; -- already compressed

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_100_200 <= heap_bh6_w4_5 & heap_bh6_w4_4 & heap_bh6_w4_6;
   Compressor_bh6_100: Compressor_3_2
      port map ( R => CompressorOut_bh6_100_100   ,
                 X0 => CompressorIn_bh6_100_200);
   heap_bh6_w4_8 <= CompressorOut_bh6_100_100(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w5_7 <= CompressorOut_bh6_100_100(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_101_201 <= heap_bh6_w7_5 & heap_bh6_w7_4 & heap_bh6_w7_6;
   Compressor_bh6_101: Compressor_3_2
      port map ( R => CompressorOut_bh6_101_101   ,
                 X0 => CompressorIn_bh6_101_201);
   heap_bh6_w7_7 <= CompressorOut_bh6_101_101(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w8_7 <= CompressorOut_bh6_101_101(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_102_202 <= heap_bh6_w10_5 & heap_bh6_w10_4 & heap_bh6_w10_6;
   Compressor_bh6_102: Compressor_3_2
      port map ( R => CompressorOut_bh6_102_102   ,
                 X0 => CompressorIn_bh6_102_202);
   heap_bh6_w10_7 <= CompressorOut_bh6_102_102(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w11_7 <= CompressorOut_bh6_102_102(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_103_203 <= heap_bh6_w13_5 & heap_bh6_w13_4 & heap_bh6_w13_6;
   Compressor_bh6_103: Compressor_3_2
      port map ( R => CompressorOut_bh6_103_103   ,
                 X0 => CompressorIn_bh6_103_203);
   heap_bh6_w13_7 <= CompressorOut_bh6_103_103(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w14_9 <= CompressorOut_bh6_103_103(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_104_204 <= heap_bh6_w59_5 & heap_bh6_w59_4 & heap_bh6_w59_6;
   Compressor_bh6_104: Compressor_3_2
      port map ( R => CompressorOut_bh6_104_104   ,
                 X0 => CompressorIn_bh6_104_204);
   heap_bh6_w59_7 <= CompressorOut_bh6_104_104(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w60_7 <= CompressorOut_bh6_104_104(1); -- cycle= 1 cp= 1.59216e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh6_1 <= '0' & heap_bh6_w61_5 & heap_bh6_w60_5;
   inAdder1_bh6_1 <= '0' & heap_bh6_w61_4 & heap_bh6_w60_4;
   cin_bh6_1 <= heap_bh6_w60_6;
   outAdder_bh6_1 <= inAdder0_bh6_1 + inAdder1_bh6_1 + cin_bh6_1;
   heap_bh6_w60_8 <= outAdder_bh6_1(0); -- cycle= 1 cp= 2.24316e-09
   heap_bh6_w61_6 <= outAdder_bh6_1(1); -- cycle= 1 cp= 2.24316e-09
   heap_bh6_w62_7 <= outAdder_bh6_1(2); -- cycle= 1 cp= 2.24316e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_105_205 <= heap_bh6_w64_5 & heap_bh6_w64_4 & heap_bh6_w64_6;
   Compressor_bh6_105: Compressor_3_2
      port map ( R => CompressorOut_bh6_105_105   ,
                 X0 => CompressorIn_bh6_105_205);
   heap_bh6_w64_7 <= CompressorOut_bh6_105_105(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w65_7 <= CompressorOut_bh6_105_105(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_106_206 <= heap_bh6_w67_5 & heap_bh6_w67_4 & heap_bh6_w67_6;
   Compressor_bh6_106: Compressor_3_2
      port map ( R => CompressorOut_bh6_106_106   ,
                 X0 => CompressorIn_bh6_106_206);
   heap_bh6_w67_7 <= CompressorOut_bh6_106_106(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w68_7 <= CompressorOut_bh6_106_106(1); -- cycle= 1 cp= 1.59216e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_107_207 <= heap_bh6_w70_5 & heap_bh6_w70_4 & heap_bh6_w70_6;
   Compressor_bh6_107: Compressor_3_2
      port map ( R => CompressorOut_bh6_107_107   ,
                 X0 => CompressorIn_bh6_107_207);
   heap_bh6_w70_7 <= CompressorOut_bh6_107_107(0); -- cycle= 1 cp= 1.59216e-09
   heap_bh6_w71_7 <= CompressorOut_bh6_107_107(1); -- cycle= 1 cp= 1.59216e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh6_2 <= '0' & heap_bh6_w81_0_d1 & heap_bh6_w80_4 & heap_bh6_w79_0_d1 & heap_bh6_w78_4 & heap_bh6_w77_0_d1 & heap_bh6_w76_4 & heap_bh6_w75_0_d1 & heap_bh6_w74_4 & heap_bh6_w73_0_d1;
   inAdder1_bh6_2 <= '0' & heap_bh6_w81_3 & heap_bh6_w80_3 & heap_bh6_w79_3 & heap_bh6_w78_3 & heap_bh6_w77_3 & heap_bh6_w76_3 & heap_bh6_w75_3 & heap_bh6_w74_3 & heap_bh6_w73_3;
   cin_bh6_2 <= heap_bh6_w73_4;
   outAdder_bh6_2 <= inAdder0_bh6_2 + inAdder1_bh6_2 + cin_bh6_2;
   heap_bh6_w73_5 <= outAdder_bh6_2(0); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w74_5 <= outAdder_bh6_2(1); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w75_4 <= outAdder_bh6_2(2); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w76_5 <= outAdder_bh6_2(3); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w77_4 <= outAdder_bh6_2(4); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w78_5 <= outAdder_bh6_2(5); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w79_4 <= outAdder_bh6_2(6); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w80_5 <= outAdder_bh6_2(7); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w81_4 <= outAdder_bh6_2(8); -- cycle= 1 cp= 2.40416e-09
   heap_bh6_w82_4 <= outAdder_bh6_2(9); -- cycle= 1 cp= 2.40416e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh6_3 <= '0' & heap_bh6_w88_1_d1 & heap_bh6_w87_1_d1 & heap_bh6_w86_1_d1 & heap_bh6_w85_1_d1 & heap_bh6_w84_1_d1;
   inAdder1_bh6_3 <= '0' & heap_bh6_w88_0_d1 & heap_bh6_w87_0_d1 & heap_bh6_w86_0_d1 & heap_bh6_w85_0_d1 & heap_bh6_w84_0_d1;
   cin_bh6_3 <= heap_bh6_w84_2;
   outAdder_bh6_3 <= inAdder0_bh6_3 + inAdder1_bh6_3 + cin_bh6_3;
   heap_bh6_w84_3 <= outAdder_bh6_3(0); -- cycle= 1 cp= 2.31216e-09
   heap_bh6_w85_2 <= outAdder_bh6_3(1); -- cycle= 1 cp= 2.31216e-09
   heap_bh6_w86_2 <= outAdder_bh6_3(2); -- cycle= 1 cp= 2.31216e-09
   heap_bh6_w87_2 <= outAdder_bh6_3(3); -- cycle= 1 cp= 2.31216e-09
   heap_bh6_w88_2 <= outAdder_bh6_3(4); -- cycle= 1 cp= 2.31216e-09
   heap_bh6_w89_1 <= outAdder_bh6_3(5); -- cycle= 1 cp= 2.31216e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w105_0_d2 & heap_bh6_w104_0_d2 & heap_bh6_w103_0_d2 & heap_bh6_w102_0_d2 & heap_bh6_w101_0_d2 & heap_bh6_w100_0_d2 & heap_bh6_w99_0_d2 & heap_bh6_w98_0_d2 & heap_bh6_w97_0_d2 & heap_bh6_w96_0_d2 & heap_bh6_w95_0_d2 & heap_bh6_w94_0_d2 & heap_bh6_w93_0_d2 & heap_bh6_w92_0_d2 & heap_bh6_w91_0_d2 & heap_bh6_w90_0_d2 & heap_bh6_w89_0_d2 & heap_bh6_w88_2_d1 & heap_bh6_w87_2_d1 & heap_bh6_w86_2_d1 & heap_bh6_w85_2_d1 & heap_bh6_w84_3_d1 & heap_bh6_w83_2_d1 & heap_bh6_w82_3_d1 & heap_bh6_w81_4_d1 & heap_bh6_w80_5_d1 & heap_bh6_w79_4_d1 & heap_bh6_w78_5_d1 & heap_bh6_w77_4_d1 & heap_bh6_w76_5_d1 & heap_bh6_w75_4_d1 & heap_bh6_w74_5_d1 & heap_bh6_w73_5_d1 & heap_bh6_w72_3_d1 & heap_bh6_w71_6_d1 & heap_bh6_w70_7_d1 & heap_bh6_w69_4_d1 & heap_bh6_w68_6_d1 & heap_bh6_w67_7_d1 & heap_bh6_w66_4_d1 & heap_bh6_w65_6_d1 & heap_bh6_w64_7_d1 & heap_bh6_w63_4_d1 & heap_bh6_w62_6_d1 & heap_bh6_w61_6_d1 & heap_bh6_w60_7_d1 & heap_bh6_w59_7_d1 & heap_bh6_w58_8_d1 & heap_bh6_w57_5_d1 & heap_bh6_w56_9_d1 & heap_bh6_w55_5_d1 & heap_bh6_w54_10_d1 & heap_bh6_w53_6_d1 & heap_bh6_w52_10_d1 & heap_bh6_w51_6_d1 & heap_bh6_w50_10_d1 & heap_bh6_w49_6_d1 & heap_bh6_w48_10_d1 & heap_bh6_w47_6_d1 & heap_bh6_w46_10_d1 & heap_bh6_w45_6_d1 & heap_bh6_w44_10_d1 & heap_bh6_w43_6_d1 & heap_bh6_w42_10_d1 & heap_bh6_w41_6_d1 & heap_bh6_w40_10_d1 & heap_bh6_w39_6_d1 & heap_bh6_w38_10_d1 & heap_bh6_w37_6_d1 & heap_bh6_w36_10_d1 & heap_bh6_w35_6_d1 & heap_bh6_w34_10_d1 & heap_bh6_w33_6_d1 & heap_bh6_w32_10_d1 & heap_bh6_w31_6_d1 & heap_bh6_w30_10_d1 & heap_bh6_w29_6_d1 & heap_bh6_w28_10_d1 & heap_bh6_w27_6_d1 & heap_bh6_w26_10_d1 & heap_bh6_w25_6_d1 & heap_bh6_w24_10_d1 & heap_bh6_w23_6_d1 & heap_bh6_w22_10_d1 & heap_bh6_w21_6_d1 & heap_bh6_w20_10_d1 & heap_bh6_w19_6_d1 & heap_bh6_w18_10_d1 & heap_bh6_w17_6_d1 & heap_bh6_w16_9_d1 & heap_bh6_w15_5_d1 & heap_bh6_w14_8_d1 & heap_bh6_w13_7_d1 & heap_bh6_w12_4_d1 & heap_bh6_w11_6_d1 & heap_bh6_w10_7_d1 & heap_bh6_w9_4_d1 & heap_bh6_w8_6_d1 & heap_bh6_w7_7_d1 & heap_bh6_w6_4_d1 & heap_bh6_w5_6_d1 & heap_bh6_w4_8_d1;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w89_1_d1 & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w82_4_d1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w72_5_d1 & heap_bh6_w71_7_d1 & '0' & heap_bh6_w69_6_d1 & heap_bh6_w68_7_d1 & '0' & heap_bh6_w66_6_d1 & heap_bh6_w65_7_d1 & '0' & heap_bh6_w63_6_d1 & heap_bh6_w62_7_d1 & '0' & heap_bh6_w60_8_d1 & '0' & heap_bh6_w58_7_d1 & heap_bh6_w57_8_d1 & heap_bh6_w56_8_d1 & heap_bh6_w55_8_d1 & heap_bh6_w54_9_d1 & heap_bh6_w53_9_d1 & heap_bh6_w52_9_d1 & heap_bh6_w51_9_d1 & heap_bh6_w50_9_d1 & heap_bh6_w49_9_d1 & heap_bh6_w48_9_d1 & heap_bh6_w47_9_d1 & heap_bh6_w46_9_d1 & heap_bh6_w45_9_d1 & heap_bh6_w44_9_d1 & heap_bh6_w43_9_d1 & heap_bh6_w42_9_d1 & heap_bh6_w41_9_d1 & heap_bh6_w40_9_d1 & heap_bh6_w39_9_d1 & heap_bh6_w38_9_d1 & heap_bh6_w37_9_d1 & heap_bh6_w36_9_d1 & heap_bh6_w35_9_d1 & heap_bh6_w34_9_d1 & heap_bh6_w33_9_d1 & heap_bh6_w32_9_d1 & heap_bh6_w31_9_d1 & heap_bh6_w30_9_d1 & heap_bh6_w29_9_d1 & heap_bh6_w28_9_d1 & heap_bh6_w27_9_d1 & heap_bh6_w26_9_d1 & heap_bh6_w25_9_d1 & heap_bh6_w24_9_d1 & heap_bh6_w23_9_d1 & heap_bh6_w22_9_d1 & heap_bh6_w21_9_d1 & heap_bh6_w20_9_d1 & heap_bh6_w19_9_d1 & heap_bh6_w18_9_d1 & heap_bh6_w17_9_d1 & heap_bh6_w16_8_d1 & heap_bh6_w15_8_d1 & heap_bh6_w14_9_d1 & '0' & heap_bh6_w12_6_d1 & heap_bh6_w11_7_d1 & '0' & heap_bh6_w9_6_d1 & heap_bh6_w8_7_d1 & '0' & heap_bh6_w6_6_d1 & heap_bh6_w5_7_d1 & heap_bh6_w4_7_d1;
   finalAdderCin_bh6 <= '0';
   Adder_final6_4: IntAdder_103_f300_uid125  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   ----------------Synchro barrier, entering cycle 3----------------
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_1_d2 & tempR_bh6_0_d2;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(105 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_65_f300_uid133
--                    (IntAdderAlternative_65_f300_uid137)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_65_f300_uid133 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(64 downto 0);
          Y : in  std_logic_vector(64 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(64 downto 0)   );
end entity;

architecture arch of IntAdder_65_f300_uid133 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                               float_multiply
--                   (FPMultiplier_11_52_11_52_11_52_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity float_multiply is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of float_multiply is
   component IntAdder_65_f300_uid133 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(64 downto 0);
             Y : in  std_logic_vector(64 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(64 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_53_53_106_unsigned_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             Y : in  std_logic_vector(52 downto 0);
             R : out  std_logic_vector(105 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2, sign_d3, sign_d4 : std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub :  std_logic_vector(12 downto 0);
signal bias :  std_logic_vector(12 downto 0);
signal expSum, expSum_d1, expSum_d2, expSum_d3 :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(52 downto 0);
signal sigY :  std_logic_vector(52 downto 0);
signal sigProd :  std_logic_vector(105 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2, exc_d3, exc_d4 :  std_logic_vector(1 downto 0);
signal norm : std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(105 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(64 downto 0);
signal sticky, sticky_d1 : std_logic;
signal guard, guard_d1 : std_logic;
signal round : std_logic;
signal expSigPostRound :  std_logic_vector(64 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            sign_d3 <=  sign_d2;
            sign_d4 <=  sign_d3;
            expSum_d1 <=  expSum;
            expSum_d2 <=  expSum_d1;
            expSum_d3 <=  expSum_d2;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            exc_d3 <=  exc_d2;
            exc_d4 <=  exc_d3;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
            guard_d1 <=  guard;
         end if;
      end process;
   sign <= X(63) xor Y(63);
   expX <= X(62 downto 52);
   expY <= Y(62 downto 52);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   expSum <= expSumPreSub - bias;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(51 downto 0);
   sigY <= "1" & Y(51 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_53_53_106_unsigned_uid4  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 3----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(65 downto 64) & Y(65 downto 64);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 3----------------
   norm <= sigProd(105);
   -- exponent update
   expPostNorm <= expSum_d3 + ("000000000000" & norm);
   ----------------Synchro barrier, entering cycle 3----------------
   -- significand normalization shift
   sigProdExt <= sigProd(104 downto 0) & "0" when norm='1' else
                         sigProd(103 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(105 downto 54);
   sticky <= sigProdExt(53);
   guard <= '0' when sigProdExt(52 downto 0)="00000000000000000000000000000000000000000000000000000" else '1';
   ----------------Synchro barrier, entering cycle 4----------------
   round <= sticky_d1 and ( (guard_d1 and not(sigProdExt_d1(54))) or (sigProdExt_d1(54) ))  ;
   RoundingAdder: IntAdder_65_f300_uid133  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "00000000000000000000000000000000000000000000000000000000000000000");
   with expSigPostRound(64 downto 63) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d4 select 
   finalExc <= exc_d4 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d4 & expSigPostRound(62 downto 0);
end architecture;

