--------------------------------------------------------------------------------
--                      FPAddSub_8_23_uid2_RightShifter
--                      (RightShifter_24_by_max_26_uid4)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPAddSub_8_23_uid2_RightShifter is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of FPAddSub_8_23_uid2_RightShifter is
signal level0 :  std_logic_vector(23 downto 0);
signal ps :  std_logic_vector(4 downto 0);
signal level1 :  std_logic_vector(24 downto 0);
signal level2 :  std_logic_vector(26 downto 0);
signal level3 :  std_logic_vector(30 downto 0);
signal level4 :  std_logic_vector(38 downto 0);
signal level5 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps(3) = '1' else    level3 & (7 downto 0 => '0');
   level5<=  (15 downto 0 => '0') & level4 when ps(4) = '1' else    level4 & (15 downto 0 => '0');
   R <= level5(54 downto 5);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f300_uid7
--                    (IntAdderAlternative_27_f300_uid11)
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

entity IntAdder_27_f300_uid7 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f300_uid7 is
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
--                   LZCShifter_28_to_28_counting_32_uid15
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_28_to_28_counting_32_uid15 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of LZCShifter_28_to_28_counting_32_uid15 is
signal level5, level5_d1 :  std_logic_vector(27 downto 0);
signal count4, count4_d1, count4_d2 : std_logic;
signal level4 :  std_logic_vector(27 downto 0);
signal count3, count3_d1, count3_d2 : std_logic;
signal level3, level3_d1 :  std_logic_vector(27 downto 0);
signal count2, count2_d1 : std_logic;
signal level2 :  std_logic_vector(27 downto 0);
signal count1, count1_d1 : std_logic;
signal level1, level1_d1 :  std_logic_vector(27 downto 0);
signal count0 : std_logic;
signal level0 :  std_logic_vector(27 downto 0);
signal sCount :  std_logic_vector(4 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level5_d1 <=  level5;
            count4_d1 <=  count4;
            count4_d2 <=  count4_d1;
            count3_d1 <=  count3;
            count3_d2 <=  count3_d1;
            level3_d1 <=  level3;
            count2_d1 <=  count2;
            count1_d1 <=  count1;
            level1_d1 <=  level1;
         end if;
      end process;
   level5 <= I ;
   ----------------Synchro barrier, entering cycle 1----------------
   count4<= '1' when level5_d1(27 downto 12) = (27 downto 12=>'0') else '0';
   level4<= level5_d1(27 downto 0) when count4='0' else level5_d1(11 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(27 downto 20) = (27 downto 20=>'0') else '0';
   level3<= level4(27 downto 0) when count3='0' else level4(19 downto 0) & (7 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 2----------------
   count2<= '1' when level3_d1(27 downto 24) = (27 downto 24=>'0') else '0';
   level2<= level3_d1(27 downto 0) when count2='0' else level3_d1(23 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(27 downto 26) = (27 downto 26=>'0') else '0';
   level1<= level2(27 downto 0) when count1='0' else level2(25 downto 0) & (1 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 3----------------
   count0<= '1' when level1_d1(27 downto 27) = (27 downto 27=>'0') else '0';
   level0<= level1_d1(27 downto 0) when count0='0' else level1_d1(26 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count4_d2 & count3_d2 & count2_d1 & count1_d1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_34_f300_uid18
--                    (IntAdderAlternative_34_f300_uid22)
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

entity IntAdder_34_f300_uid18 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f300_uid18 is
signal s_sum_l0_idx0 :  std_logic_vector(24 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(10 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(23 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(9 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(10 downto 0);
signal sum_l1_idx1 :  std_logic_vector(9 downto 0);
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
   s_sum_l0_idx0 <= ( "0" & X(23 downto 0)) + ( "0" & Y(23 downto 0)) + Cin;
   s_sum_l0_idx1 <= ( "0" & X(33 downto 24)) + ( "0" & Y(33 downto 24));
   sum_l0_idx0 <= s_sum_l0_idx0(23 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(24 downto 24);
   sum_l0_idx1 <= s_sum_l0_idx1(9 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(10 downto 10);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(9 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(10 downto 10);
   R <= sum_l1_idx1(9 downto 0) & sum_l0_idx0_d1(23 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                                float_addsub
--                            (FPAddSub_8_23_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Matei Istoan, Florent de Dinechin (2012)
--------------------------------------------------------------------------------
-- Pipeline depth: 8 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity float_addsub is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          Radd : out  std_logic_vector(8+23+2 downto 0);
          Rsub : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of float_addsub is
   component FPAddSub_8_23_uid2_RightShifter is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f300_uid7 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_34_f300_uid18 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

   component LZCShifter_28_to_28_counting_32_uid15 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(27 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(32 downto 0);
signal excExpFracY :  std_logic_vector(32 downto 0);
signal eXmeY :  std_logic_vector(8 downto 0);
signal eYmeX :  std_logic_vector(8 downto 0);
signal swap, swap_d1 : std_logic;
signal newX, newX_d1, newX_d2 :  std_logic_vector(33 downto 0);
signal newY, newY_d1 :  std_logic_vector(33 downto 0);
signal expX, expX_d1, expX_d2, expX_d3 :  std_logic_vector(7 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY, excY_d1 :  std_logic_vector(1 downto 0);
signal signX, signX_d1 : std_logic;
signal signY : std_logic;
signal diffSigns, diffSigns_d1, diffSigns_d2, diffSigns_d3, diffSigns_d4, diffSigns_d5, diffSigns_d6, diffSigns_d7, diffSigns_d8 : std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal fracY :  std_logic_vector(23 downto 0);
signal excRtRAdd, excRtRAdd_d1, excRtRAdd_d2, excRtRAdd_d3, excRtRAdd_d4, excRtRAdd_d5, excRtRAdd_d6 :  std_logic_vector(1 downto 0);
signal excRtRSub, excRtRSub_d1, excRtRSub_d2, excRtRSub_d3, excRtRSub_d4, excRtRSub_d5, excRtRSub_d6 :  std_logic_vector(1 downto 0);
signal signRAdd, signRAdd_d1, signRAdd_d2, signRAdd_d3, signRAdd_d4 : std_logic;
signal signRSub, signRSub_d1, signRSub_d2, signRSub_d3, signRSub_d4, signRSub_d5, signRSub_d6, signRSub_d7 : std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(8 downto 0);
signal shiftedOut : std_logic;
signal shiftVal :  std_logic_vector(4 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(49 downto 0);
signal sticky, sticky_d1 : std_logic;
signal shiftedFracYext :  std_logic_vector(26 downto 0);
signal fracYAdd :  std_logic_vector(26 downto 0);
signal fracYSub :  std_logic_vector(26 downto 0);
signal fracX :  std_logic_vector(26 downto 0);
signal cInFracAdderSub : std_logic;
signal fracAdderResultAdd, fracAdderResultAdd_d1 :  std_logic_vector(26 downto 0);
signal fracAdderResultSub, fracAdderResultSub_d1 :  std_logic_vector(26 downto 0);
signal extendedExp :  std_logic_vector(9 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2, extendedExpInc_d3, extendedExpInc_d4 :  std_logic_vector(9 downto 0);
signal fracGRSSub :  std_logic_vector(27 downto 0);
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(4 downto 0);
signal shiftedFracSub :  std_logic_vector(27 downto 0);
signal updatedExpSub :  std_logic_vector(9 downto 0);
signal eqdiffsign : std_logic;
signal expFracSub :  std_logic_vector(33 downto 0);
signal stkSub : std_logic;
signal rndSub : std_logic;
signal grdSub : std_logic;
signal lsbSub : std_logic;
signal addToRoundBitSub : std_logic;
signal RoundedExpFracSub :  std_logic_vector(33 downto 0);
signal upExcSub :  std_logic_vector(1 downto 0);
signal fracRSub, fracRSub_d1 :  std_logic_vector(22 downto 0);
signal expRSub, expRSub_d1 :  std_logic_vector(7 downto 0);
signal excRtEffSub :  std_logic_vector(1 downto 0);
signal exExpExcSub :  std_logic_vector(3 downto 0);
signal excRt2Sub :  std_logic_vector(1 downto 0);
signal excRSub, excRSub_d1 :  std_logic_vector(1 downto 0);
signal computedRSub :  std_logic_vector(30 downto 0);
signal fracGRSAdd :  std_logic_vector(27 downto 0);
signal updatedFracAdd :  std_logic_vector(23 downto 0);
signal updatedExpAdd :  std_logic_vector(9 downto 0);
signal expFracAdd :  std_logic_vector(33 downto 0);
signal stkAdd : std_logic;
signal rndAdd : std_logic;
signal grdAdd : std_logic;
signal lsbAdd : std_logic;
signal addToRoundBitAdd : std_logic;
signal RoundedExpFracAdd :  std_logic_vector(33 downto 0);
signal upExcAdd :  std_logic_vector(1 downto 0);
signal fracRAdd, fracRAdd_d1 :  std_logic_vector(22 downto 0);
signal expRAdd, expRAdd_d1 :  std_logic_vector(7 downto 0);
signal excRtEffAdd :  std_logic_vector(1 downto 0);
signal exExpExcAdd :  std_logic_vector(3 downto 0);
signal excRt2Add, excRt2Add_d1 :  std_logic_vector(1 downto 0);
signal excRAdd, excRAdd_d1, excRAdd_d2, excRAdd_d3 :  std_logic_vector(1 downto 0);
signal computedRAdd, computedRAdd_d1, computedRAdd_d2, computedRAdd_d3 :  std_logic_vector(30 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            swap_d1 <=  swap;
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newY_d1 <=  newY;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            expX_d3 <=  expX_d2;
            excY_d1 <=  excY;
            signX_d1 <=  signX;
            diffSigns_d1 <=  diffSigns;
            diffSigns_d2 <=  diffSigns_d1;
            diffSigns_d3 <=  diffSigns_d2;
            diffSigns_d4 <=  diffSigns_d3;
            diffSigns_d5 <=  diffSigns_d4;
            diffSigns_d6 <=  diffSigns_d5;
            diffSigns_d7 <=  diffSigns_d6;
            diffSigns_d8 <=  diffSigns_d7;
            sXsYExnXY_d1 <=  sXsYExnXY;
            excRtRAdd_d1 <=  excRtRAdd;
            excRtRAdd_d2 <=  excRtRAdd_d1;
            excRtRAdd_d3 <=  excRtRAdd_d2;
            excRtRAdd_d4 <=  excRtRAdd_d3;
            excRtRAdd_d5 <=  excRtRAdd_d4;
            excRtRAdd_d6 <=  excRtRAdd_d5;
            excRtRSub_d1 <=  excRtRSub;
            excRtRSub_d2 <=  excRtRSub_d1;
            excRtRSub_d3 <=  excRtRSub_d2;
            excRtRSub_d4 <=  excRtRSub_d3;
            excRtRSub_d5 <=  excRtRSub_d4;
            excRtRSub_d6 <=  excRtRSub_d5;
            signRAdd_d1 <=  signRAdd;
            signRAdd_d2 <=  signRAdd_d1;
            signRAdd_d3 <=  signRAdd_d2;
            signRAdd_d4 <=  signRAdd_d3;
            signRSub_d1 <=  signRSub;
            signRSub_d2 <=  signRSub_d1;
            signRSub_d3 <=  signRSub_d2;
            signRSub_d4 <=  signRSub_d3;
            signRSub_d5 <=  signRSub_d4;
            signRSub_d6 <=  signRSub_d5;
            signRSub_d7 <=  signRSub_d6;
            expDiff_d1 <=  expDiff;
            shiftedFracY_d1 <=  shiftedFracY;
            sticky_d1 <=  sticky;
            fracAdderResultAdd_d1 <=  fracAdderResultAdd;
            fracAdderResultSub_d1 <=  fracAdderResultSub;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            extendedExpInc_d3 <=  extendedExpInc_d2;
            extendedExpInc_d4 <=  extendedExpInc_d3;
            nZerosNew_d1 <=  nZerosNew;
            fracRSub_d1 <=  fracRSub;
            expRSub_d1 <=  expRSub;
            excRSub_d1 <=  excRSub;
            fracRAdd_d1 <=  fracRAdd;
            expRAdd_d1 <=  expRAdd;
            excRt2Add_d1 <=  excRt2Add;
            excRAdd_d1 <=  excRAdd;
            excRAdd_d2 <=  excRAdd_d1;
            excRAdd_d3 <=  excRAdd_d2;
            computedRAdd_d1 <=  computedRAdd;
            computedRAdd_d2 <=  computedRAdd_d1;
            computedRAdd_d3 <=  computedRAdd_d2;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(33 downto 32) & X(30 downto 0);
   excExpFracY <= Y(33 downto 32) & Y(30 downto 0);
   eXmeY <= ("0" & X(30 downto 23)) - ("0" & Y(30 downto 23));
   eYmeX <= ("0" & Y(30 downto 23)) - ("0" & X(30 downto 23));
   swap <= '0' when excExpFracX >= excExpFracY else '1';
   newX <= X     when swap = '0' else Y;
   newY <= Y     when swap = '0' else X;
   expX<= newX(30 downto 23);
   excX<= newX(33 downto 32);
   excY<= newY(33 downto 32);
   signX<= newX(31);
   signY<= newY(31);
   diffSigns <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   ----------------Synchro barrier, entering cycle 1----------------
   fracY <= "000000000000000000000000" when excY_d1="00" else ('1' & newY_d1(22 downto 0));
   with sXsYExnXY_d1 select 
   excRtRAdd <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   with sXsYExnXY_d1 select 
   excRtRSub <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110"|"101010"|"011010", 
      "11" when others;
   signRAdd<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   signRSub<= '0' when (sXsYExnXY_d1="000000" or sXsYExnXY_d1="110000") else (signX_d1 and (not swap_d1)) or ((not signX_d1) and swap_d1);
   ---------------- cycle 0----------------
   expDiff <= eXmeY when (swap = '0') else eYmeX;
   ----------------Synchro barrier, entering cycle 1----------------
   shiftedOut <= '1' when (expDiff_d1 >= 25) else '0';
   shiftVal <= expDiff_d1(4 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(26,5);
   RightShifterComponent: FPAddSub_8_23_uid2_RightShifter  -- pipelineDepth=0 maxInDelay=1.44732e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY);
   ----------------Synchro barrier, entering cycle 2----------------
   sticky <= '0' when (shiftedFracY_d1(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,23)) else '1';
   ---------------- cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   shiftedFracYext <= "0" & shiftedFracY_d1(49 downto 24);
   fracYAdd <= shiftedFracYext;
   fracYSub <= shiftedFracYext xor ( 26 downto 0 => '1');
   fracX <= "01" & (newX_d2(22 downto 0)) & "00";
   cInFracAdderSub <= not sticky;
   fracAdderAdd: IntAdder_27_f300_uid7  -- pipelineDepth=0 maxInDelay=1.69388e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => fracAdderResultAdd,
                 X => fracX,
                 Y => fracYAdd);
   fracAdderSub: IntAdder_27_f300_uid7  -- pipelineDepth=0 maxInDelay=1.69388e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInFracAdderSub,
                 R => fracAdderResultSub,
                 X => fracX,
                 Y => fracYSub);
   ---------------- cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   extendedExp<= "00" & expX_d3;
   extendedExpInc<= ("00" & expX_d3) + '1';
   fracGRSSub<= fracAdderResultSub_d1 & sticky_d1; 
   LZC_component: LZCShifter_28_to_28_counting_32_uid15  -- pipelineDepth=3 maxInDelay=2.31816e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRSSub,
                 O => shiftedFracSub);
   ----------------Synchro barrier, entering cycle 6----------------
   ----------------Synchro barrier, entering cycle 7----------------
   updatedExpSub <= extendedExpInc_d4 - ("00000" & nZerosNew_d1);
   eqdiffsign <= '1' when nZerosNew_d1="11111" else '0';
   ---------------- cycle 6----------------
   expFracSub<= updatedExpSub & shiftedFracSub(26 downto 3);
   ---------------- cycle 6----------------
   stkSub<= shiftedFracSub(1) or shiftedFracSub(0);
   rndSub<= shiftedFracSub(2);
   grdSub<= shiftedFracSub(3);
   lsbSub<= shiftedFracSub(4);
   ---------------- cycle 6----------------
   addToRoundBitSub<= '0' when (lsbSub='0' and grdSub='1' and rndSub='0' and stkSub='0')  else '1';
   roundingAdderSub: IntAdder_34_f300_uid18  -- pipelineDepth=1 maxInDelay=2.09216e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBitSub,
                 R => RoundedExpFracSub,
                 X => expFracSub,
                 Y => "0000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 7----------------
   upExcSub <= RoundedExpFracSub(33 downto 32);
   fracRSub <= RoundedExpFracSub(23 downto 1);
   expRSub <= RoundedExpFracSub(31 downto 24);
   excRtEffSub <= excRtRAdd_d6 when (diffSigns_d7='1') else excRtRSub_d6;
   exExpExcSub <= upExcSub & excRtEffSub;
   with (exExpExcSub) select 
   excRt2Sub<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"0101",
      "11" when others;
   excRSub <= "00" when (eqdiffsign='1') else excRt2Sub;
   ----------------Synchro barrier, entering cycle 8----------------
   computedRSub <= expRSub_d1 & fracRSub_d1;
   Rsub <= excRSub_d1 & signRSub_d7 & computedRSub when (diffSigns_d8='0') else excRAdd_d3 & signRSub_d7 & computedRAdd_d3;
   ---------------- cycle 3----------------
   fracGRSAdd<= fracAdderResultAdd_d1 & sticky_d1; 
   updatedFracAdd <= fracGRSAdd(26 downto 3) when (fracAdderResultAdd_d1(26)='1') else fracGRSAdd(25 downto 2);
   updatedExpAdd <= extendedExpInc when (fracAdderResultAdd_d1(26)='1') else extendedExp;
   expFracAdd<= updatedExpAdd & updatedFracAdd;
   ---------------- cycle 3----------------
   stkAdd<= fracGRSAdd(1) or fracGRSAdd(0);
   rndAdd<= fracGRSAdd(2);
   grdAdd<= fracGRSAdd(3);
   lsbAdd<= fracGRSAdd(4);
   addToRoundBitAdd<= (grdAdd and rndAdd) or (grdAdd and (not rndAdd) and lsbAdd) or ((not grdAdd) and rndAdd and stkAdd) or (grdAdd and (not rndAdd) and stkAdd);
   roundingAdderAdd: IntAdder_34_f300_uid18  -- pipelineDepth=1 maxInDelay=2.09216e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBitAdd,
                 R => RoundedExpFracAdd,
                 X => expFracAdd,
                 Y => "0000000000000000000000000000000000");
   ---------------- cycle 4----------------
   upExcAdd <= RoundedExpFracAdd(33 downto 32);
   fracRAdd <= RoundedExpFracAdd(23 downto 1);
   expRAdd <= RoundedExpFracAdd(31 downto 24);
   excRtEffAdd <= excRtRAdd_d3 when (diffSigns_d4='0') else excRtRSub_d3;
   exExpExcAdd <= upExcAdd & excRtEffAdd;
   with (exExpExcAdd) select 
   excRt2Add<= "00" when "0000"|"0100"|"1000"|"1100"|"1001",
      "01" when "0001",
      "10" when "0010"|"0110"|"0101",
      "11" when others;
   ----------------Synchro barrier, entering cycle 5----------------
   excRAdd <=  excRt2Add_d1;
   computedRAdd <= expRAdd_d1 & fracRAdd_d1;
   Radd <= excRAdd & signRAdd_d4 & computedRAdd when (diffSigns_d5='0') else excRSub & signRAdd_d4 & computedRSub;
   ----------------Synchro barrier, entering cycle 8----------------
end architecture;

