--------------------------------------------------------------------------------
--                               float_division
--                               (FPDiv_11_52)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 32 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity float_division is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of float_division is
signal fX :  std_logic_vector(52 downto 0);
signal fY, fY_d1, fY_d2, fY_d3, fY_d4, fY_d5, fY_d6, fY_d7, fY_d8, fY_d9, fY_d10, fY_d11, fY_d12, fY_d13, fY_d14, fY_d15, fY_d16, fY_d17, fY_d18, fY_d19, fY_d20, fY_d21, fY_d22, fY_d23, fY_d24, fY_d25, fY_d26, fY_d27, fY_d28, fY_d29 :  std_logic_vector(52 downto 0);
signal expR0, expR0_d1, expR0_d2, expR0_d3, expR0_d4, expR0_d5, expR0_d6, expR0_d7, expR0_d8, expR0_d9, expR0_d10, expR0_d11, expR0_d12, expR0_d13, expR0_d14, expR0_d15, expR0_d16, expR0_d17, expR0_d18, expR0_d19, expR0_d20, expR0_d21, expR0_d22, expR0_d23, expR0_d24, expR0_d25, expR0_d26, expR0_d27, expR0_d28, expR0_d29, expR0_d30, expR0_d31 :  std_logic_vector(12 downto 0);
signal sR, sR_d1, sR_d2, sR_d3, sR_d4, sR_d5, sR_d6, sR_d7, sR_d8, sR_d9, sR_d10, sR_d11, sR_d12, sR_d13, sR_d14, sR_d15, sR_d16, sR_d17, sR_d18, sR_d19, sR_d20, sR_d21, sR_d22, sR_d23, sR_d24, sR_d25, sR_d26, sR_d27, sR_d28, sR_d29, sR_d30, sR_d31, sR_d32 : std_logic;
signal exnXY :  std_logic_vector(3 downto 0);
signal exnR0, exnR0_d1, exnR0_d2, exnR0_d3, exnR0_d4, exnR0_d5, exnR0_d6, exnR0_d7, exnR0_d8, exnR0_d9, exnR0_d10, exnR0_d11, exnR0_d12, exnR0_d13, exnR0_d14, exnR0_d15, exnR0_d16, exnR0_d17, exnR0_d18, exnR0_d19, exnR0_d20, exnR0_d21, exnR0_d22, exnR0_d23, exnR0_d24, exnR0_d25, exnR0_d26, exnR0_d27, exnR0_d28, exnR0_d29, exnR0_d30, exnR0_d31, exnR0_d32 :  std_logic_vector(1 downto 0);
signal fYTimes3, fYTimes3_d1, fYTimes3_d2, fYTimes3_d3, fYTimes3_d4, fYTimes3_d5, fYTimes3_d6, fYTimes3_d7, fYTimes3_d8, fYTimes3_d9, fYTimes3_d10, fYTimes3_d11, fYTimes3_d12, fYTimes3_d13, fYTimes3_d14, fYTimes3_d15, fYTimes3_d16, fYTimes3_d17, fYTimes3_d18, fYTimes3_d19, fYTimes3_d20, fYTimes3_d21, fYTimes3_d22, fYTimes3_d23, fYTimes3_d24, fYTimes3_d25, fYTimes3_d26, fYTimes3_d27, fYTimes3_d28, fYTimes3_d29 :  std_logic_vector(54 downto 0);
signal w28, w28_d1, w28_d2 :  std_logic_vector(54 downto 0);
signal sel28 :  std_logic_vector(4 downto 0);
signal q28, q28_d1, q28_d2, q28_d3, q28_d4, q28_d5, q28_d6, q28_d7, q28_d8, q28_d9, q28_d10, q28_d11, q28_d12, q28_d13, q28_d14, q28_d15, q28_d16, q28_d17, q28_d18, q28_d19, q28_d20, q28_d21, q28_d22, q28_d23, q28_d24, q28_d25, q28_d26, q28_d27, q28_d28 :  std_logic_vector(2 downto 0);
signal q28D :  std_logic_vector(55 downto 0);
signal w28pad :  std_logic_vector(55 downto 0);
signal w27full :  std_logic_vector(55 downto 0);
signal w27, w27_d1 :  std_logic_vector(54 downto 0);
signal sel27 :  std_logic_vector(4 downto 0);
signal q27, q27_d1, q27_d2, q27_d3, q27_d4, q27_d5, q27_d6, q27_d7, q27_d8, q27_d9, q27_d10, q27_d11, q27_d12, q27_d13, q27_d14, q27_d15, q27_d16, q27_d17, q27_d18, q27_d19, q27_d20, q27_d21, q27_d22, q27_d23, q27_d24, q27_d25, q27_d26, q27_d27 :  std_logic_vector(2 downto 0);
signal q27D :  std_logic_vector(55 downto 0);
signal w27pad :  std_logic_vector(55 downto 0);
signal w26full :  std_logic_vector(55 downto 0);
signal w26, w26_d1 :  std_logic_vector(54 downto 0);
signal sel26 :  std_logic_vector(4 downto 0);
signal q26, q26_d1, q26_d2, q26_d3, q26_d4, q26_d5, q26_d6, q26_d7, q26_d8, q26_d9, q26_d10, q26_d11, q26_d12, q26_d13, q26_d14, q26_d15, q26_d16, q26_d17, q26_d18, q26_d19, q26_d20, q26_d21, q26_d22, q26_d23, q26_d24, q26_d25, q26_d26 :  std_logic_vector(2 downto 0);
signal q26D :  std_logic_vector(55 downto 0);
signal w26pad :  std_logic_vector(55 downto 0);
signal w25full :  std_logic_vector(55 downto 0);
signal w25, w25_d1 :  std_logic_vector(54 downto 0);
signal sel25 :  std_logic_vector(4 downto 0);
signal q25, q25_d1, q25_d2, q25_d3, q25_d4, q25_d5, q25_d6, q25_d7, q25_d8, q25_d9, q25_d10, q25_d11, q25_d12, q25_d13, q25_d14, q25_d15, q25_d16, q25_d17, q25_d18, q25_d19, q25_d20, q25_d21, q25_d22, q25_d23, q25_d24, q25_d25 :  std_logic_vector(2 downto 0);
signal q25D :  std_logic_vector(55 downto 0);
signal w25pad :  std_logic_vector(55 downto 0);
signal w24full :  std_logic_vector(55 downto 0);
signal w24, w24_d1 :  std_logic_vector(54 downto 0);
signal sel24 :  std_logic_vector(4 downto 0);
signal q24, q24_d1, q24_d2, q24_d3, q24_d4, q24_d5, q24_d6, q24_d7, q24_d8, q24_d9, q24_d10, q24_d11, q24_d12, q24_d13, q24_d14, q24_d15, q24_d16, q24_d17, q24_d18, q24_d19, q24_d20, q24_d21, q24_d22, q24_d23, q24_d24 :  std_logic_vector(2 downto 0);
signal q24D :  std_logic_vector(55 downto 0);
signal w24pad :  std_logic_vector(55 downto 0);
signal w23full :  std_logic_vector(55 downto 0);
signal w23, w23_d1 :  std_logic_vector(54 downto 0);
signal sel23 :  std_logic_vector(4 downto 0);
signal q23, q23_d1, q23_d2, q23_d3, q23_d4, q23_d5, q23_d6, q23_d7, q23_d8, q23_d9, q23_d10, q23_d11, q23_d12, q23_d13, q23_d14, q23_d15, q23_d16, q23_d17, q23_d18, q23_d19, q23_d20, q23_d21, q23_d22, q23_d23 :  std_logic_vector(2 downto 0);
signal q23D :  std_logic_vector(55 downto 0);
signal w23pad :  std_logic_vector(55 downto 0);
signal w22full :  std_logic_vector(55 downto 0);
signal w22, w22_d1 :  std_logic_vector(54 downto 0);
signal sel22 :  std_logic_vector(4 downto 0);
signal q22, q22_d1, q22_d2, q22_d3, q22_d4, q22_d5, q22_d6, q22_d7, q22_d8, q22_d9, q22_d10, q22_d11, q22_d12, q22_d13, q22_d14, q22_d15, q22_d16, q22_d17, q22_d18, q22_d19, q22_d20, q22_d21, q22_d22 :  std_logic_vector(2 downto 0);
signal q22D :  std_logic_vector(55 downto 0);
signal w22pad :  std_logic_vector(55 downto 0);
signal w21full :  std_logic_vector(55 downto 0);
signal w21, w21_d1 :  std_logic_vector(54 downto 0);
signal sel21 :  std_logic_vector(4 downto 0);
signal q21, q21_d1, q21_d2, q21_d3, q21_d4, q21_d5, q21_d6, q21_d7, q21_d8, q21_d9, q21_d10, q21_d11, q21_d12, q21_d13, q21_d14, q21_d15, q21_d16, q21_d17, q21_d18, q21_d19, q21_d20, q21_d21 :  std_logic_vector(2 downto 0);
signal q21D :  std_logic_vector(55 downto 0);
signal w21pad :  std_logic_vector(55 downto 0);
signal w20full :  std_logic_vector(55 downto 0);
signal w20, w20_d1 :  std_logic_vector(54 downto 0);
signal sel20 :  std_logic_vector(4 downto 0);
signal q20, q20_d1, q20_d2, q20_d3, q20_d4, q20_d5, q20_d6, q20_d7, q20_d8, q20_d9, q20_d10, q20_d11, q20_d12, q20_d13, q20_d14, q20_d15, q20_d16, q20_d17, q20_d18, q20_d19, q20_d20 :  std_logic_vector(2 downto 0);
signal q20D :  std_logic_vector(55 downto 0);
signal w20pad :  std_logic_vector(55 downto 0);
signal w19full :  std_logic_vector(55 downto 0);
signal w19, w19_d1 :  std_logic_vector(54 downto 0);
signal sel19 :  std_logic_vector(4 downto 0);
signal q19, q19_d1, q19_d2, q19_d3, q19_d4, q19_d5, q19_d6, q19_d7, q19_d8, q19_d9, q19_d10, q19_d11, q19_d12, q19_d13, q19_d14, q19_d15, q19_d16, q19_d17, q19_d18, q19_d19 :  std_logic_vector(2 downto 0);
signal q19D :  std_logic_vector(55 downto 0);
signal w19pad :  std_logic_vector(55 downto 0);
signal w18full :  std_logic_vector(55 downto 0);
signal w18, w18_d1 :  std_logic_vector(54 downto 0);
signal sel18 :  std_logic_vector(4 downto 0);
signal q18, q18_d1, q18_d2, q18_d3, q18_d4, q18_d5, q18_d6, q18_d7, q18_d8, q18_d9, q18_d10, q18_d11, q18_d12, q18_d13, q18_d14, q18_d15, q18_d16, q18_d17, q18_d18 :  std_logic_vector(2 downto 0);
signal q18D :  std_logic_vector(55 downto 0);
signal w18pad :  std_logic_vector(55 downto 0);
signal w17full :  std_logic_vector(55 downto 0);
signal w17, w17_d1 :  std_logic_vector(54 downto 0);
signal sel17 :  std_logic_vector(4 downto 0);
signal q17, q17_d1, q17_d2, q17_d3, q17_d4, q17_d5, q17_d6, q17_d7, q17_d8, q17_d9, q17_d10, q17_d11, q17_d12, q17_d13, q17_d14, q17_d15, q17_d16, q17_d17 :  std_logic_vector(2 downto 0);
signal q17D :  std_logic_vector(55 downto 0);
signal w17pad :  std_logic_vector(55 downto 0);
signal w16full :  std_logic_vector(55 downto 0);
signal w16, w16_d1 :  std_logic_vector(54 downto 0);
signal sel16 :  std_logic_vector(4 downto 0);
signal q16, q16_d1, q16_d2, q16_d3, q16_d4, q16_d5, q16_d6, q16_d7, q16_d8, q16_d9, q16_d10, q16_d11, q16_d12, q16_d13, q16_d14, q16_d15, q16_d16 :  std_logic_vector(2 downto 0);
signal q16D :  std_logic_vector(55 downto 0);
signal w16pad :  std_logic_vector(55 downto 0);
signal w15full :  std_logic_vector(55 downto 0);
signal w15, w15_d1 :  std_logic_vector(54 downto 0);
signal sel15 :  std_logic_vector(4 downto 0);
signal q15, q15_d1, q15_d2, q15_d3, q15_d4, q15_d5, q15_d6, q15_d7, q15_d8, q15_d9, q15_d10, q15_d11, q15_d12, q15_d13, q15_d14, q15_d15 :  std_logic_vector(2 downto 0);
signal q15D :  std_logic_vector(55 downto 0);
signal w15pad :  std_logic_vector(55 downto 0);
signal w14full :  std_logic_vector(55 downto 0);
signal w14, w14_d1 :  std_logic_vector(54 downto 0);
signal sel14 :  std_logic_vector(4 downto 0);
signal q14, q14_d1, q14_d2, q14_d3, q14_d4, q14_d5, q14_d6, q14_d7, q14_d8, q14_d9, q14_d10, q14_d11, q14_d12, q14_d13, q14_d14 :  std_logic_vector(2 downto 0);
signal q14D :  std_logic_vector(55 downto 0);
signal w14pad :  std_logic_vector(55 downto 0);
signal w13full :  std_logic_vector(55 downto 0);
signal w13, w13_d1 :  std_logic_vector(54 downto 0);
signal sel13 :  std_logic_vector(4 downto 0);
signal q13, q13_d1, q13_d2, q13_d3, q13_d4, q13_d5, q13_d6, q13_d7, q13_d8, q13_d9, q13_d10, q13_d11, q13_d12, q13_d13 :  std_logic_vector(2 downto 0);
signal q13D :  std_logic_vector(55 downto 0);
signal w13pad :  std_logic_vector(55 downto 0);
signal w12full :  std_logic_vector(55 downto 0);
signal w12, w12_d1 :  std_logic_vector(54 downto 0);
signal sel12 :  std_logic_vector(4 downto 0);
signal q12, q12_d1, q12_d2, q12_d3, q12_d4, q12_d5, q12_d6, q12_d7, q12_d8, q12_d9, q12_d10, q12_d11, q12_d12 :  std_logic_vector(2 downto 0);
signal q12D :  std_logic_vector(55 downto 0);
signal w12pad :  std_logic_vector(55 downto 0);
signal w11full :  std_logic_vector(55 downto 0);
signal w11, w11_d1 :  std_logic_vector(54 downto 0);
signal sel11 :  std_logic_vector(4 downto 0);
signal q11, q11_d1, q11_d2, q11_d3, q11_d4, q11_d5, q11_d6, q11_d7, q11_d8, q11_d9, q11_d10, q11_d11 :  std_logic_vector(2 downto 0);
signal q11D :  std_logic_vector(55 downto 0);
signal w11pad :  std_logic_vector(55 downto 0);
signal w10full :  std_logic_vector(55 downto 0);
signal w10, w10_d1 :  std_logic_vector(54 downto 0);
signal sel10 :  std_logic_vector(4 downto 0);
signal q10, q10_d1, q10_d2, q10_d3, q10_d4, q10_d5, q10_d6, q10_d7, q10_d8, q10_d9, q10_d10 :  std_logic_vector(2 downto 0);
signal q10D :  std_logic_vector(55 downto 0);
signal w10pad :  std_logic_vector(55 downto 0);
signal w9full :  std_logic_vector(55 downto 0);
signal w9, w9_d1 :  std_logic_vector(54 downto 0);
signal sel9 :  std_logic_vector(4 downto 0);
signal q9, q9_d1, q9_d2, q9_d3, q9_d4, q9_d5, q9_d6, q9_d7, q9_d8, q9_d9 :  std_logic_vector(2 downto 0);
signal q9D :  std_logic_vector(55 downto 0);
signal w9pad :  std_logic_vector(55 downto 0);
signal w8full :  std_logic_vector(55 downto 0);
signal w8, w8_d1 :  std_logic_vector(54 downto 0);
signal sel8 :  std_logic_vector(4 downto 0);
signal q8, q8_d1, q8_d2, q8_d3, q8_d4, q8_d5, q8_d6, q8_d7, q8_d8 :  std_logic_vector(2 downto 0);
signal q8D :  std_logic_vector(55 downto 0);
signal w8pad :  std_logic_vector(55 downto 0);
signal w7full :  std_logic_vector(55 downto 0);
signal w7, w7_d1 :  std_logic_vector(54 downto 0);
signal sel7 :  std_logic_vector(4 downto 0);
signal q7, q7_d1, q7_d2, q7_d3, q7_d4, q7_d5, q7_d6, q7_d7 :  std_logic_vector(2 downto 0);
signal q7D :  std_logic_vector(55 downto 0);
signal w7pad :  std_logic_vector(55 downto 0);
signal w6full :  std_logic_vector(55 downto 0);
signal w6, w6_d1 :  std_logic_vector(54 downto 0);
signal sel6 :  std_logic_vector(4 downto 0);
signal q6, q6_d1, q6_d2, q6_d3, q6_d4, q6_d5, q6_d6 :  std_logic_vector(2 downto 0);
signal q6D :  std_logic_vector(55 downto 0);
signal w6pad :  std_logic_vector(55 downto 0);
signal w5full :  std_logic_vector(55 downto 0);
signal w5, w5_d1 :  std_logic_vector(54 downto 0);
signal sel5 :  std_logic_vector(4 downto 0);
signal q5, q5_d1, q5_d2, q5_d3, q5_d4, q5_d5 :  std_logic_vector(2 downto 0);
signal q5D :  std_logic_vector(55 downto 0);
signal w5pad :  std_logic_vector(55 downto 0);
signal w4full :  std_logic_vector(55 downto 0);
signal w4, w4_d1 :  std_logic_vector(54 downto 0);
signal sel4 :  std_logic_vector(4 downto 0);
signal q4, q4_d1, q4_d2, q4_d3, q4_d4 :  std_logic_vector(2 downto 0);
signal q4D :  std_logic_vector(55 downto 0);
signal w4pad :  std_logic_vector(55 downto 0);
signal w3full :  std_logic_vector(55 downto 0);
signal w3, w3_d1 :  std_logic_vector(54 downto 0);
signal sel3 :  std_logic_vector(4 downto 0);
signal q3, q3_d1, q3_d2, q3_d3 :  std_logic_vector(2 downto 0);
signal q3D :  std_logic_vector(55 downto 0);
signal w3pad :  std_logic_vector(55 downto 0);
signal w2full :  std_logic_vector(55 downto 0);
signal w2, w2_d1 :  std_logic_vector(54 downto 0);
signal sel2 :  std_logic_vector(4 downto 0);
signal q2, q2_d1, q2_d2 :  std_logic_vector(2 downto 0);
signal q2D :  std_logic_vector(55 downto 0);
signal w2pad :  std_logic_vector(55 downto 0);
signal w1full :  std_logic_vector(55 downto 0);
signal w1, w1_d1 :  std_logic_vector(54 downto 0);
signal sel1 :  std_logic_vector(4 downto 0);
signal q1, q1_d1 :  std_logic_vector(2 downto 0);
signal q1D :  std_logic_vector(55 downto 0);
signal w1pad :  std_logic_vector(55 downto 0);
signal w0full :  std_logic_vector(55 downto 0);
signal w0, w0_d1 :  std_logic_vector(54 downto 0);
signal q0 :  std_logic_vector(2 downto 0);
signal qP28 :  std_logic_vector(1 downto 0);
signal qM28 :  std_logic_vector(1 downto 0);
signal qP27 :  std_logic_vector(1 downto 0);
signal qM27 :  std_logic_vector(1 downto 0);
signal qP26 :  std_logic_vector(1 downto 0);
signal qM26 :  std_logic_vector(1 downto 0);
signal qP25 :  std_logic_vector(1 downto 0);
signal qM25 :  std_logic_vector(1 downto 0);
signal qP24 :  std_logic_vector(1 downto 0);
signal qM24 :  std_logic_vector(1 downto 0);
signal qP23 :  std_logic_vector(1 downto 0);
signal qM23 :  std_logic_vector(1 downto 0);
signal qP22 :  std_logic_vector(1 downto 0);
signal qM22 :  std_logic_vector(1 downto 0);
signal qP21 :  std_logic_vector(1 downto 0);
signal qM21 :  std_logic_vector(1 downto 0);
signal qP20 :  std_logic_vector(1 downto 0);
signal qM20 :  std_logic_vector(1 downto 0);
signal qP19 :  std_logic_vector(1 downto 0);
signal qM19 :  std_logic_vector(1 downto 0);
signal qP18 :  std_logic_vector(1 downto 0);
signal qM18 :  std_logic_vector(1 downto 0);
signal qP17 :  std_logic_vector(1 downto 0);
signal qM17 :  std_logic_vector(1 downto 0);
signal qP16 :  std_logic_vector(1 downto 0);
signal qM16 :  std_logic_vector(1 downto 0);
signal qP15 :  std_logic_vector(1 downto 0);
signal qM15 :  std_logic_vector(1 downto 0);
signal qP14 :  std_logic_vector(1 downto 0);
signal qM14 :  std_logic_vector(1 downto 0);
signal qP13 :  std_logic_vector(1 downto 0);
signal qM13 :  std_logic_vector(1 downto 0);
signal qP12 :  std_logic_vector(1 downto 0);
signal qM12 :  std_logic_vector(1 downto 0);
signal qP11 :  std_logic_vector(1 downto 0);
signal qM11 :  std_logic_vector(1 downto 0);
signal qP10 :  std_logic_vector(1 downto 0);
signal qM10 :  std_logic_vector(1 downto 0);
signal qP9 :  std_logic_vector(1 downto 0);
signal qM9 :  std_logic_vector(1 downto 0);
signal qP8 :  std_logic_vector(1 downto 0);
signal qM8 :  std_logic_vector(1 downto 0);
signal qP7 :  std_logic_vector(1 downto 0);
signal qM7 :  std_logic_vector(1 downto 0);
signal qP6 :  std_logic_vector(1 downto 0);
signal qM6 :  std_logic_vector(1 downto 0);
signal qP5 :  std_logic_vector(1 downto 0);
signal qM5 :  std_logic_vector(1 downto 0);
signal qP4 :  std_logic_vector(1 downto 0);
signal qM4 :  std_logic_vector(1 downto 0);
signal qP3 :  std_logic_vector(1 downto 0);
signal qM3 :  std_logic_vector(1 downto 0);
signal qP2 :  std_logic_vector(1 downto 0);
signal qM2 :  std_logic_vector(1 downto 0);
signal qP1 :  std_logic_vector(1 downto 0);
signal qM1 :  std_logic_vector(1 downto 0);
signal qP0 :  std_logic_vector(1 downto 0);
signal qM0 :  std_logic_vector(1 downto 0);
signal qP :  std_logic_vector(57 downto 0);
signal qM :  std_logic_vector(57 downto 0);
signal fR0, fR0_d1 :  std_logic_vector(57 downto 0);
signal fR :  std_logic_vector(55 downto 0);
signal fRn1, fRn1_d1 :  std_logic_vector(53 downto 0);
signal expR1, expR1_d1 :  std_logic_vector(12 downto 0);
signal round, round_d1 : std_logic;
signal expfrac :  std_logic_vector(64 downto 0);
signal expfracR :  std_logic_vector(64 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal exnRfinal :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            fY_d1 <=  fY;
            fY_d2 <=  fY_d1;
            fY_d3 <=  fY_d2;
            fY_d4 <=  fY_d3;
            fY_d5 <=  fY_d4;
            fY_d6 <=  fY_d5;
            fY_d7 <=  fY_d6;
            fY_d8 <=  fY_d7;
            fY_d9 <=  fY_d8;
            fY_d10 <=  fY_d9;
            fY_d11 <=  fY_d10;
            fY_d12 <=  fY_d11;
            fY_d13 <=  fY_d12;
            fY_d14 <=  fY_d13;
            fY_d15 <=  fY_d14;
            fY_d16 <=  fY_d15;
            fY_d17 <=  fY_d16;
            fY_d18 <=  fY_d17;
            fY_d19 <=  fY_d18;
            fY_d20 <=  fY_d19;
            fY_d21 <=  fY_d20;
            fY_d22 <=  fY_d21;
            fY_d23 <=  fY_d22;
            fY_d24 <=  fY_d23;
            fY_d25 <=  fY_d24;
            fY_d26 <=  fY_d25;
            fY_d27 <=  fY_d26;
            fY_d28 <=  fY_d27;
            fY_d29 <=  fY_d28;
            expR0_d1 <=  expR0;
            expR0_d2 <=  expR0_d1;
            expR0_d3 <=  expR0_d2;
            expR0_d4 <=  expR0_d3;
            expR0_d5 <=  expR0_d4;
            expR0_d6 <=  expR0_d5;
            expR0_d7 <=  expR0_d6;
            expR0_d8 <=  expR0_d7;
            expR0_d9 <=  expR0_d8;
            expR0_d10 <=  expR0_d9;
            expR0_d11 <=  expR0_d10;
            expR0_d12 <=  expR0_d11;
            expR0_d13 <=  expR0_d12;
            expR0_d14 <=  expR0_d13;
            expR0_d15 <=  expR0_d14;
            expR0_d16 <=  expR0_d15;
            expR0_d17 <=  expR0_d16;
            expR0_d18 <=  expR0_d17;
            expR0_d19 <=  expR0_d18;
            expR0_d20 <=  expR0_d19;
            expR0_d21 <=  expR0_d20;
            expR0_d22 <=  expR0_d21;
            expR0_d23 <=  expR0_d22;
            expR0_d24 <=  expR0_d23;
            expR0_d25 <=  expR0_d24;
            expR0_d26 <=  expR0_d25;
            expR0_d27 <=  expR0_d26;
            expR0_d28 <=  expR0_d27;
            expR0_d29 <=  expR0_d28;
            expR0_d30 <=  expR0_d29;
            expR0_d31 <=  expR0_d30;
            sR_d1 <=  sR;
            sR_d2 <=  sR_d1;
            sR_d3 <=  sR_d2;
            sR_d4 <=  sR_d3;
            sR_d5 <=  sR_d4;
            sR_d6 <=  sR_d5;
            sR_d7 <=  sR_d6;
            sR_d8 <=  sR_d7;
            sR_d9 <=  sR_d8;
            sR_d10 <=  sR_d9;
            sR_d11 <=  sR_d10;
            sR_d12 <=  sR_d11;
            sR_d13 <=  sR_d12;
            sR_d14 <=  sR_d13;
            sR_d15 <=  sR_d14;
            sR_d16 <=  sR_d15;
            sR_d17 <=  sR_d16;
            sR_d18 <=  sR_d17;
            sR_d19 <=  sR_d18;
            sR_d20 <=  sR_d19;
            sR_d21 <=  sR_d20;
            sR_d22 <=  sR_d21;
            sR_d23 <=  sR_d22;
            sR_d24 <=  sR_d23;
            sR_d25 <=  sR_d24;
            sR_d26 <=  sR_d25;
            sR_d27 <=  sR_d26;
            sR_d28 <=  sR_d27;
            sR_d29 <=  sR_d28;
            sR_d30 <=  sR_d29;
            sR_d31 <=  sR_d30;
            sR_d32 <=  sR_d31;
            exnR0_d1 <=  exnR0;
            exnR0_d2 <=  exnR0_d1;
            exnR0_d3 <=  exnR0_d2;
            exnR0_d4 <=  exnR0_d3;
            exnR0_d5 <=  exnR0_d4;
            exnR0_d6 <=  exnR0_d5;
            exnR0_d7 <=  exnR0_d6;
            exnR0_d8 <=  exnR0_d7;
            exnR0_d9 <=  exnR0_d8;
            exnR0_d10 <=  exnR0_d9;
            exnR0_d11 <=  exnR0_d10;
            exnR0_d12 <=  exnR0_d11;
            exnR0_d13 <=  exnR0_d12;
            exnR0_d14 <=  exnR0_d13;
            exnR0_d15 <=  exnR0_d14;
            exnR0_d16 <=  exnR0_d15;
            exnR0_d17 <=  exnR0_d16;
            exnR0_d18 <=  exnR0_d17;
            exnR0_d19 <=  exnR0_d18;
            exnR0_d20 <=  exnR0_d19;
            exnR0_d21 <=  exnR0_d20;
            exnR0_d22 <=  exnR0_d21;
            exnR0_d23 <=  exnR0_d22;
            exnR0_d24 <=  exnR0_d23;
            exnR0_d25 <=  exnR0_d24;
            exnR0_d26 <=  exnR0_d25;
            exnR0_d27 <=  exnR0_d26;
            exnR0_d28 <=  exnR0_d27;
            exnR0_d29 <=  exnR0_d28;
            exnR0_d30 <=  exnR0_d29;
            exnR0_d31 <=  exnR0_d30;
            exnR0_d32 <=  exnR0_d31;
            fYTimes3_d1 <=  fYTimes3;
            fYTimes3_d2 <=  fYTimes3_d1;
            fYTimes3_d3 <=  fYTimes3_d2;
            fYTimes3_d4 <=  fYTimes3_d3;
            fYTimes3_d5 <=  fYTimes3_d4;
            fYTimes3_d6 <=  fYTimes3_d5;
            fYTimes3_d7 <=  fYTimes3_d6;
            fYTimes3_d8 <=  fYTimes3_d7;
            fYTimes3_d9 <=  fYTimes3_d8;
            fYTimes3_d10 <=  fYTimes3_d9;
            fYTimes3_d11 <=  fYTimes3_d10;
            fYTimes3_d12 <=  fYTimes3_d11;
            fYTimes3_d13 <=  fYTimes3_d12;
            fYTimes3_d14 <=  fYTimes3_d13;
            fYTimes3_d15 <=  fYTimes3_d14;
            fYTimes3_d16 <=  fYTimes3_d15;
            fYTimes3_d17 <=  fYTimes3_d16;
            fYTimes3_d18 <=  fYTimes3_d17;
            fYTimes3_d19 <=  fYTimes3_d18;
            fYTimes3_d20 <=  fYTimes3_d19;
            fYTimes3_d21 <=  fYTimes3_d20;
            fYTimes3_d22 <=  fYTimes3_d21;
            fYTimes3_d23 <=  fYTimes3_d22;
            fYTimes3_d24 <=  fYTimes3_d23;
            fYTimes3_d25 <=  fYTimes3_d24;
            fYTimes3_d26 <=  fYTimes3_d25;
            fYTimes3_d27 <=  fYTimes3_d26;
            fYTimes3_d28 <=  fYTimes3_d27;
            fYTimes3_d29 <=  fYTimes3_d28;
            w28_d1 <=  w28;
            w28_d2 <=  w28_d1;
            q28_d1 <=  q28;
            q28_d2 <=  q28_d1;
            q28_d3 <=  q28_d2;
            q28_d4 <=  q28_d3;
            q28_d5 <=  q28_d4;
            q28_d6 <=  q28_d5;
            q28_d7 <=  q28_d6;
            q28_d8 <=  q28_d7;
            q28_d9 <=  q28_d8;
            q28_d10 <=  q28_d9;
            q28_d11 <=  q28_d10;
            q28_d12 <=  q28_d11;
            q28_d13 <=  q28_d12;
            q28_d14 <=  q28_d13;
            q28_d15 <=  q28_d14;
            q28_d16 <=  q28_d15;
            q28_d17 <=  q28_d16;
            q28_d18 <=  q28_d17;
            q28_d19 <=  q28_d18;
            q28_d20 <=  q28_d19;
            q28_d21 <=  q28_d20;
            q28_d22 <=  q28_d21;
            q28_d23 <=  q28_d22;
            q28_d24 <=  q28_d23;
            q28_d25 <=  q28_d24;
            q28_d26 <=  q28_d25;
            q28_d27 <=  q28_d26;
            q28_d28 <=  q28_d27;
            w27_d1 <=  w27;
            q27_d1 <=  q27;
            q27_d2 <=  q27_d1;
            q27_d3 <=  q27_d2;
            q27_d4 <=  q27_d3;
            q27_d5 <=  q27_d4;
            q27_d6 <=  q27_d5;
            q27_d7 <=  q27_d6;
            q27_d8 <=  q27_d7;
            q27_d9 <=  q27_d8;
            q27_d10 <=  q27_d9;
            q27_d11 <=  q27_d10;
            q27_d12 <=  q27_d11;
            q27_d13 <=  q27_d12;
            q27_d14 <=  q27_d13;
            q27_d15 <=  q27_d14;
            q27_d16 <=  q27_d15;
            q27_d17 <=  q27_d16;
            q27_d18 <=  q27_d17;
            q27_d19 <=  q27_d18;
            q27_d20 <=  q27_d19;
            q27_d21 <=  q27_d20;
            q27_d22 <=  q27_d21;
            q27_d23 <=  q27_d22;
            q27_d24 <=  q27_d23;
            q27_d25 <=  q27_d24;
            q27_d26 <=  q27_d25;
            q27_d27 <=  q27_d26;
            w26_d1 <=  w26;
            q26_d1 <=  q26;
            q26_d2 <=  q26_d1;
            q26_d3 <=  q26_d2;
            q26_d4 <=  q26_d3;
            q26_d5 <=  q26_d4;
            q26_d6 <=  q26_d5;
            q26_d7 <=  q26_d6;
            q26_d8 <=  q26_d7;
            q26_d9 <=  q26_d8;
            q26_d10 <=  q26_d9;
            q26_d11 <=  q26_d10;
            q26_d12 <=  q26_d11;
            q26_d13 <=  q26_d12;
            q26_d14 <=  q26_d13;
            q26_d15 <=  q26_d14;
            q26_d16 <=  q26_d15;
            q26_d17 <=  q26_d16;
            q26_d18 <=  q26_d17;
            q26_d19 <=  q26_d18;
            q26_d20 <=  q26_d19;
            q26_d21 <=  q26_d20;
            q26_d22 <=  q26_d21;
            q26_d23 <=  q26_d22;
            q26_d24 <=  q26_d23;
            q26_d25 <=  q26_d24;
            q26_d26 <=  q26_d25;
            w25_d1 <=  w25;
            q25_d1 <=  q25;
            q25_d2 <=  q25_d1;
            q25_d3 <=  q25_d2;
            q25_d4 <=  q25_d3;
            q25_d5 <=  q25_d4;
            q25_d6 <=  q25_d5;
            q25_d7 <=  q25_d6;
            q25_d8 <=  q25_d7;
            q25_d9 <=  q25_d8;
            q25_d10 <=  q25_d9;
            q25_d11 <=  q25_d10;
            q25_d12 <=  q25_d11;
            q25_d13 <=  q25_d12;
            q25_d14 <=  q25_d13;
            q25_d15 <=  q25_d14;
            q25_d16 <=  q25_d15;
            q25_d17 <=  q25_d16;
            q25_d18 <=  q25_d17;
            q25_d19 <=  q25_d18;
            q25_d20 <=  q25_d19;
            q25_d21 <=  q25_d20;
            q25_d22 <=  q25_d21;
            q25_d23 <=  q25_d22;
            q25_d24 <=  q25_d23;
            q25_d25 <=  q25_d24;
            w24_d1 <=  w24;
            q24_d1 <=  q24;
            q24_d2 <=  q24_d1;
            q24_d3 <=  q24_d2;
            q24_d4 <=  q24_d3;
            q24_d5 <=  q24_d4;
            q24_d6 <=  q24_d5;
            q24_d7 <=  q24_d6;
            q24_d8 <=  q24_d7;
            q24_d9 <=  q24_d8;
            q24_d10 <=  q24_d9;
            q24_d11 <=  q24_d10;
            q24_d12 <=  q24_d11;
            q24_d13 <=  q24_d12;
            q24_d14 <=  q24_d13;
            q24_d15 <=  q24_d14;
            q24_d16 <=  q24_d15;
            q24_d17 <=  q24_d16;
            q24_d18 <=  q24_d17;
            q24_d19 <=  q24_d18;
            q24_d20 <=  q24_d19;
            q24_d21 <=  q24_d20;
            q24_d22 <=  q24_d21;
            q24_d23 <=  q24_d22;
            q24_d24 <=  q24_d23;
            w23_d1 <=  w23;
            q23_d1 <=  q23;
            q23_d2 <=  q23_d1;
            q23_d3 <=  q23_d2;
            q23_d4 <=  q23_d3;
            q23_d5 <=  q23_d4;
            q23_d6 <=  q23_d5;
            q23_d7 <=  q23_d6;
            q23_d8 <=  q23_d7;
            q23_d9 <=  q23_d8;
            q23_d10 <=  q23_d9;
            q23_d11 <=  q23_d10;
            q23_d12 <=  q23_d11;
            q23_d13 <=  q23_d12;
            q23_d14 <=  q23_d13;
            q23_d15 <=  q23_d14;
            q23_d16 <=  q23_d15;
            q23_d17 <=  q23_d16;
            q23_d18 <=  q23_d17;
            q23_d19 <=  q23_d18;
            q23_d20 <=  q23_d19;
            q23_d21 <=  q23_d20;
            q23_d22 <=  q23_d21;
            q23_d23 <=  q23_d22;
            w22_d1 <=  w22;
            q22_d1 <=  q22;
            q22_d2 <=  q22_d1;
            q22_d3 <=  q22_d2;
            q22_d4 <=  q22_d3;
            q22_d5 <=  q22_d4;
            q22_d6 <=  q22_d5;
            q22_d7 <=  q22_d6;
            q22_d8 <=  q22_d7;
            q22_d9 <=  q22_d8;
            q22_d10 <=  q22_d9;
            q22_d11 <=  q22_d10;
            q22_d12 <=  q22_d11;
            q22_d13 <=  q22_d12;
            q22_d14 <=  q22_d13;
            q22_d15 <=  q22_d14;
            q22_d16 <=  q22_d15;
            q22_d17 <=  q22_d16;
            q22_d18 <=  q22_d17;
            q22_d19 <=  q22_d18;
            q22_d20 <=  q22_d19;
            q22_d21 <=  q22_d20;
            q22_d22 <=  q22_d21;
            w21_d1 <=  w21;
            q21_d1 <=  q21;
            q21_d2 <=  q21_d1;
            q21_d3 <=  q21_d2;
            q21_d4 <=  q21_d3;
            q21_d5 <=  q21_d4;
            q21_d6 <=  q21_d5;
            q21_d7 <=  q21_d6;
            q21_d8 <=  q21_d7;
            q21_d9 <=  q21_d8;
            q21_d10 <=  q21_d9;
            q21_d11 <=  q21_d10;
            q21_d12 <=  q21_d11;
            q21_d13 <=  q21_d12;
            q21_d14 <=  q21_d13;
            q21_d15 <=  q21_d14;
            q21_d16 <=  q21_d15;
            q21_d17 <=  q21_d16;
            q21_d18 <=  q21_d17;
            q21_d19 <=  q21_d18;
            q21_d20 <=  q21_d19;
            q21_d21 <=  q21_d20;
            w20_d1 <=  w20;
            q20_d1 <=  q20;
            q20_d2 <=  q20_d1;
            q20_d3 <=  q20_d2;
            q20_d4 <=  q20_d3;
            q20_d5 <=  q20_d4;
            q20_d6 <=  q20_d5;
            q20_d7 <=  q20_d6;
            q20_d8 <=  q20_d7;
            q20_d9 <=  q20_d8;
            q20_d10 <=  q20_d9;
            q20_d11 <=  q20_d10;
            q20_d12 <=  q20_d11;
            q20_d13 <=  q20_d12;
            q20_d14 <=  q20_d13;
            q20_d15 <=  q20_d14;
            q20_d16 <=  q20_d15;
            q20_d17 <=  q20_d16;
            q20_d18 <=  q20_d17;
            q20_d19 <=  q20_d18;
            q20_d20 <=  q20_d19;
            w19_d1 <=  w19;
            q19_d1 <=  q19;
            q19_d2 <=  q19_d1;
            q19_d3 <=  q19_d2;
            q19_d4 <=  q19_d3;
            q19_d5 <=  q19_d4;
            q19_d6 <=  q19_d5;
            q19_d7 <=  q19_d6;
            q19_d8 <=  q19_d7;
            q19_d9 <=  q19_d8;
            q19_d10 <=  q19_d9;
            q19_d11 <=  q19_d10;
            q19_d12 <=  q19_d11;
            q19_d13 <=  q19_d12;
            q19_d14 <=  q19_d13;
            q19_d15 <=  q19_d14;
            q19_d16 <=  q19_d15;
            q19_d17 <=  q19_d16;
            q19_d18 <=  q19_d17;
            q19_d19 <=  q19_d18;
            w18_d1 <=  w18;
            q18_d1 <=  q18;
            q18_d2 <=  q18_d1;
            q18_d3 <=  q18_d2;
            q18_d4 <=  q18_d3;
            q18_d5 <=  q18_d4;
            q18_d6 <=  q18_d5;
            q18_d7 <=  q18_d6;
            q18_d8 <=  q18_d7;
            q18_d9 <=  q18_d8;
            q18_d10 <=  q18_d9;
            q18_d11 <=  q18_d10;
            q18_d12 <=  q18_d11;
            q18_d13 <=  q18_d12;
            q18_d14 <=  q18_d13;
            q18_d15 <=  q18_d14;
            q18_d16 <=  q18_d15;
            q18_d17 <=  q18_d16;
            q18_d18 <=  q18_d17;
            w17_d1 <=  w17;
            q17_d1 <=  q17;
            q17_d2 <=  q17_d1;
            q17_d3 <=  q17_d2;
            q17_d4 <=  q17_d3;
            q17_d5 <=  q17_d4;
            q17_d6 <=  q17_d5;
            q17_d7 <=  q17_d6;
            q17_d8 <=  q17_d7;
            q17_d9 <=  q17_d8;
            q17_d10 <=  q17_d9;
            q17_d11 <=  q17_d10;
            q17_d12 <=  q17_d11;
            q17_d13 <=  q17_d12;
            q17_d14 <=  q17_d13;
            q17_d15 <=  q17_d14;
            q17_d16 <=  q17_d15;
            q17_d17 <=  q17_d16;
            w16_d1 <=  w16;
            q16_d1 <=  q16;
            q16_d2 <=  q16_d1;
            q16_d3 <=  q16_d2;
            q16_d4 <=  q16_d3;
            q16_d5 <=  q16_d4;
            q16_d6 <=  q16_d5;
            q16_d7 <=  q16_d6;
            q16_d8 <=  q16_d7;
            q16_d9 <=  q16_d8;
            q16_d10 <=  q16_d9;
            q16_d11 <=  q16_d10;
            q16_d12 <=  q16_d11;
            q16_d13 <=  q16_d12;
            q16_d14 <=  q16_d13;
            q16_d15 <=  q16_d14;
            q16_d16 <=  q16_d15;
            w15_d1 <=  w15;
            q15_d1 <=  q15;
            q15_d2 <=  q15_d1;
            q15_d3 <=  q15_d2;
            q15_d4 <=  q15_d3;
            q15_d5 <=  q15_d4;
            q15_d6 <=  q15_d5;
            q15_d7 <=  q15_d6;
            q15_d8 <=  q15_d7;
            q15_d9 <=  q15_d8;
            q15_d10 <=  q15_d9;
            q15_d11 <=  q15_d10;
            q15_d12 <=  q15_d11;
            q15_d13 <=  q15_d12;
            q15_d14 <=  q15_d13;
            q15_d15 <=  q15_d14;
            w14_d1 <=  w14;
            q14_d1 <=  q14;
            q14_d2 <=  q14_d1;
            q14_d3 <=  q14_d2;
            q14_d4 <=  q14_d3;
            q14_d5 <=  q14_d4;
            q14_d6 <=  q14_d5;
            q14_d7 <=  q14_d6;
            q14_d8 <=  q14_d7;
            q14_d9 <=  q14_d8;
            q14_d10 <=  q14_d9;
            q14_d11 <=  q14_d10;
            q14_d12 <=  q14_d11;
            q14_d13 <=  q14_d12;
            q14_d14 <=  q14_d13;
            w13_d1 <=  w13;
            q13_d1 <=  q13;
            q13_d2 <=  q13_d1;
            q13_d3 <=  q13_d2;
            q13_d4 <=  q13_d3;
            q13_d5 <=  q13_d4;
            q13_d6 <=  q13_d5;
            q13_d7 <=  q13_d6;
            q13_d8 <=  q13_d7;
            q13_d9 <=  q13_d8;
            q13_d10 <=  q13_d9;
            q13_d11 <=  q13_d10;
            q13_d12 <=  q13_d11;
            q13_d13 <=  q13_d12;
            w12_d1 <=  w12;
            q12_d1 <=  q12;
            q12_d2 <=  q12_d1;
            q12_d3 <=  q12_d2;
            q12_d4 <=  q12_d3;
            q12_d5 <=  q12_d4;
            q12_d6 <=  q12_d5;
            q12_d7 <=  q12_d6;
            q12_d8 <=  q12_d7;
            q12_d9 <=  q12_d8;
            q12_d10 <=  q12_d9;
            q12_d11 <=  q12_d10;
            q12_d12 <=  q12_d11;
            w11_d1 <=  w11;
            q11_d1 <=  q11;
            q11_d2 <=  q11_d1;
            q11_d3 <=  q11_d2;
            q11_d4 <=  q11_d3;
            q11_d5 <=  q11_d4;
            q11_d6 <=  q11_d5;
            q11_d7 <=  q11_d6;
            q11_d8 <=  q11_d7;
            q11_d9 <=  q11_d8;
            q11_d10 <=  q11_d9;
            q11_d11 <=  q11_d10;
            w10_d1 <=  w10;
            q10_d1 <=  q10;
            q10_d2 <=  q10_d1;
            q10_d3 <=  q10_d2;
            q10_d4 <=  q10_d3;
            q10_d5 <=  q10_d4;
            q10_d6 <=  q10_d5;
            q10_d7 <=  q10_d6;
            q10_d8 <=  q10_d7;
            q10_d9 <=  q10_d8;
            q10_d10 <=  q10_d9;
            w9_d1 <=  w9;
            q9_d1 <=  q9;
            q9_d2 <=  q9_d1;
            q9_d3 <=  q9_d2;
            q9_d4 <=  q9_d3;
            q9_d5 <=  q9_d4;
            q9_d6 <=  q9_d5;
            q9_d7 <=  q9_d6;
            q9_d8 <=  q9_d7;
            q9_d9 <=  q9_d8;
            w8_d1 <=  w8;
            q8_d1 <=  q8;
            q8_d2 <=  q8_d1;
            q8_d3 <=  q8_d2;
            q8_d4 <=  q8_d3;
            q8_d5 <=  q8_d4;
            q8_d6 <=  q8_d5;
            q8_d7 <=  q8_d6;
            q8_d8 <=  q8_d7;
            w7_d1 <=  w7;
            q7_d1 <=  q7;
            q7_d2 <=  q7_d1;
            q7_d3 <=  q7_d2;
            q7_d4 <=  q7_d3;
            q7_d5 <=  q7_d4;
            q7_d6 <=  q7_d5;
            q7_d7 <=  q7_d6;
            w6_d1 <=  w6;
            q6_d1 <=  q6;
            q6_d2 <=  q6_d1;
            q6_d3 <=  q6_d2;
            q6_d4 <=  q6_d3;
            q6_d5 <=  q6_d4;
            q6_d6 <=  q6_d5;
            w5_d1 <=  w5;
            q5_d1 <=  q5;
            q5_d2 <=  q5_d1;
            q5_d3 <=  q5_d2;
            q5_d4 <=  q5_d3;
            q5_d5 <=  q5_d4;
            w4_d1 <=  w4;
            q4_d1 <=  q4;
            q4_d2 <=  q4_d1;
            q4_d3 <=  q4_d2;
            q4_d4 <=  q4_d3;
            w3_d1 <=  w3;
            q3_d1 <=  q3;
            q3_d2 <=  q3_d1;
            q3_d3 <=  q3_d2;
            w2_d1 <=  w2;
            q2_d1 <=  q2;
            q2_d2 <=  q2_d1;
            w1_d1 <=  w1;
            q1_d1 <=  q1;
            w0_d1 <=  w0;
            fR0_d1 <=  fR0;
            fRn1_d1 <=  fRn1;
            expR1_d1 <=  expR1;
            round_d1 <=  round;
         end if;
      end process;
   fX <= "1" & X(51 downto 0);
   fY <= "1" & Y(51 downto 0);
   -- exponent difference, sign and exception combination computed early, to have less bits to pipeline
   expR0 <= ("00" & X(62 downto 52)) - ("00" & Y(62 downto 52));
   sR <= X(63) xor Y(63);
   -- early exception handling 
   exnXY <= X(65 downto 64) & Y(65 downto 64);
   with exnXY select
      exnR0 <= 
         "01"  when "0101",                   -- normal
         "00"  when "0001" | "0010" | "0110", -- zero
         "10"  when "0100" | "1000" | "1001", -- overflow
         "11"  when others;                   -- NaN
    -- compute 3Y
   fYTimes3 <= ("00" & fY) + ("0" & fY & "0");
   w28 <=  "00" & fX;
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   sel28 <= w28_d2(54 downto 51) & fY_d2(51);
   with sel28 select
   q28 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q28 select
      q28D <= 
         "000" & fY_d2            when "001" | "111",
         "00" & fY_d2 & "0"     when "010" | "110",
         "0" & fYTimes3_d2             when "011" | "101",
         (55 downto 0 => '0') when others;

   w28pad <= w28_d2 & "0";
   with q28(2) select
   w27full<= w28pad - q28D when '0',
         w28pad + q28D when others;

   w27 <= w27full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 3----------------
   sel27 <= w27_d1(54 downto 51) & fY_d3(51);
   with sel27 select
   q27 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q27 select
      q27D <= 
         "000" & fY_d3            when "001" | "111",
         "00" & fY_d3 & "0"     when "010" | "110",
         "0" & fYTimes3_d3             when "011" | "101",
         (55 downto 0 => '0') when others;

   w27pad <= w27_d1 & "0";
   with q27(2) select
   w26full<= w27pad - q27D when '0',
         w27pad + q27D when others;

   w26 <= w26full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 4----------------
   sel26 <= w26_d1(54 downto 51) & fY_d4(51);
   with sel26 select
   q26 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q26 select
      q26D <= 
         "000" & fY_d4            when "001" | "111",
         "00" & fY_d4 & "0"     when "010" | "110",
         "0" & fYTimes3_d4             when "011" | "101",
         (55 downto 0 => '0') when others;

   w26pad <= w26_d1 & "0";
   with q26(2) select
   w25full<= w26pad - q26D when '0',
         w26pad + q26D when others;

   w25 <= w25full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 5----------------
   sel25 <= w25_d1(54 downto 51) & fY_d5(51);
   with sel25 select
   q25 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q25 select
      q25D <= 
         "000" & fY_d5            when "001" | "111",
         "00" & fY_d5 & "0"     when "010" | "110",
         "0" & fYTimes3_d5             when "011" | "101",
         (55 downto 0 => '0') when others;

   w25pad <= w25_d1 & "0";
   with q25(2) select
   w24full<= w25pad - q25D when '0',
         w25pad + q25D when others;

   w24 <= w24full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 6----------------
   sel24 <= w24_d1(54 downto 51) & fY_d6(51);
   with sel24 select
   q24 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q24 select
      q24D <= 
         "000" & fY_d6            when "001" | "111",
         "00" & fY_d6 & "0"     when "010" | "110",
         "0" & fYTimes3_d6             when "011" | "101",
         (55 downto 0 => '0') when others;

   w24pad <= w24_d1 & "0";
   with q24(2) select
   w23full<= w24pad - q24D when '0',
         w24pad + q24D when others;

   w23 <= w23full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 7----------------
   sel23 <= w23_d1(54 downto 51) & fY_d7(51);
   with sel23 select
   q23 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q23 select
      q23D <= 
         "000" & fY_d7            when "001" | "111",
         "00" & fY_d7 & "0"     when "010" | "110",
         "0" & fYTimes3_d7             when "011" | "101",
         (55 downto 0 => '0') when others;

   w23pad <= w23_d1 & "0";
   with q23(2) select
   w22full<= w23pad - q23D when '0',
         w23pad + q23D when others;

   w22 <= w22full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 8----------------
   sel22 <= w22_d1(54 downto 51) & fY_d8(51);
   with sel22 select
   q22 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q22 select
      q22D <= 
         "000" & fY_d8            when "001" | "111",
         "00" & fY_d8 & "0"     when "010" | "110",
         "0" & fYTimes3_d8             when "011" | "101",
         (55 downto 0 => '0') when others;

   w22pad <= w22_d1 & "0";
   with q22(2) select
   w21full<= w22pad - q22D when '0',
         w22pad + q22D when others;

   w21 <= w21full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 9----------------
   sel21 <= w21_d1(54 downto 51) & fY_d9(51);
   with sel21 select
   q21 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q21 select
      q21D <= 
         "000" & fY_d9            when "001" | "111",
         "00" & fY_d9 & "0"     when "010" | "110",
         "0" & fYTimes3_d9             when "011" | "101",
         (55 downto 0 => '0') when others;

   w21pad <= w21_d1 & "0";
   with q21(2) select
   w20full<= w21pad - q21D when '0',
         w21pad + q21D when others;

   w20 <= w20full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 10----------------
   sel20 <= w20_d1(54 downto 51) & fY_d10(51);
   with sel20 select
   q20 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q20 select
      q20D <= 
         "000" & fY_d10            when "001" | "111",
         "00" & fY_d10 & "0"     when "010" | "110",
         "0" & fYTimes3_d10             when "011" | "101",
         (55 downto 0 => '0') when others;

   w20pad <= w20_d1 & "0";
   with q20(2) select
   w19full<= w20pad - q20D when '0',
         w20pad + q20D when others;

   w19 <= w19full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 11----------------
   sel19 <= w19_d1(54 downto 51) & fY_d11(51);
   with sel19 select
   q19 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q19 select
      q19D <= 
         "000" & fY_d11            when "001" | "111",
         "00" & fY_d11 & "0"     when "010" | "110",
         "0" & fYTimes3_d11             when "011" | "101",
         (55 downto 0 => '0') when others;

   w19pad <= w19_d1 & "0";
   with q19(2) select
   w18full<= w19pad - q19D when '0',
         w19pad + q19D when others;

   w18 <= w18full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 12----------------
   sel18 <= w18_d1(54 downto 51) & fY_d12(51);
   with sel18 select
   q18 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q18 select
      q18D <= 
         "000" & fY_d12            when "001" | "111",
         "00" & fY_d12 & "0"     when "010" | "110",
         "0" & fYTimes3_d12             when "011" | "101",
         (55 downto 0 => '0') when others;

   w18pad <= w18_d1 & "0";
   with q18(2) select
   w17full<= w18pad - q18D when '0',
         w18pad + q18D when others;

   w17 <= w17full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 13----------------
   sel17 <= w17_d1(54 downto 51) & fY_d13(51);
   with sel17 select
   q17 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q17 select
      q17D <= 
         "000" & fY_d13            when "001" | "111",
         "00" & fY_d13 & "0"     when "010" | "110",
         "0" & fYTimes3_d13             when "011" | "101",
         (55 downto 0 => '0') when others;

   w17pad <= w17_d1 & "0";
   with q17(2) select
   w16full<= w17pad - q17D when '0',
         w17pad + q17D when others;

   w16 <= w16full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 14----------------
   sel16 <= w16_d1(54 downto 51) & fY_d14(51);
   with sel16 select
   q16 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q16 select
      q16D <= 
         "000" & fY_d14            when "001" | "111",
         "00" & fY_d14 & "0"     when "010" | "110",
         "0" & fYTimes3_d14             when "011" | "101",
         (55 downto 0 => '0') when others;

   w16pad <= w16_d1 & "0";
   with q16(2) select
   w15full<= w16pad - q16D when '0',
         w16pad + q16D when others;

   w15 <= w15full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 15----------------
   sel15 <= w15_d1(54 downto 51) & fY_d15(51);
   with sel15 select
   q15 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q15 select
      q15D <= 
         "000" & fY_d15            when "001" | "111",
         "00" & fY_d15 & "0"     when "010" | "110",
         "0" & fYTimes3_d15             when "011" | "101",
         (55 downto 0 => '0') when others;

   w15pad <= w15_d1 & "0";
   with q15(2) select
   w14full<= w15pad - q15D when '0',
         w15pad + q15D when others;

   w14 <= w14full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 16----------------
   sel14 <= w14_d1(54 downto 51) & fY_d16(51);
   with sel14 select
   q14 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q14 select
      q14D <= 
         "000" & fY_d16            when "001" | "111",
         "00" & fY_d16 & "0"     when "010" | "110",
         "0" & fYTimes3_d16             when "011" | "101",
         (55 downto 0 => '0') when others;

   w14pad <= w14_d1 & "0";
   with q14(2) select
   w13full<= w14pad - q14D when '0',
         w14pad + q14D when others;

   w13 <= w13full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 17----------------
   sel13 <= w13_d1(54 downto 51) & fY_d17(51);
   with sel13 select
   q13 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q13 select
      q13D <= 
         "000" & fY_d17            when "001" | "111",
         "00" & fY_d17 & "0"     when "010" | "110",
         "0" & fYTimes3_d17             when "011" | "101",
         (55 downto 0 => '0') when others;

   w13pad <= w13_d1 & "0";
   with q13(2) select
   w12full<= w13pad - q13D when '0',
         w13pad + q13D when others;

   w12 <= w12full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 18----------------
   sel12 <= w12_d1(54 downto 51) & fY_d18(51);
   with sel12 select
   q12 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q12 select
      q12D <= 
         "000" & fY_d18            when "001" | "111",
         "00" & fY_d18 & "0"     when "010" | "110",
         "0" & fYTimes3_d18             when "011" | "101",
         (55 downto 0 => '0') when others;

   w12pad <= w12_d1 & "0";
   with q12(2) select
   w11full<= w12pad - q12D when '0',
         w12pad + q12D when others;

   w11 <= w11full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 19----------------
   sel11 <= w11_d1(54 downto 51) & fY_d19(51);
   with sel11 select
   q11 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q11 select
      q11D <= 
         "000" & fY_d19            when "001" | "111",
         "00" & fY_d19 & "0"     when "010" | "110",
         "0" & fYTimes3_d19             when "011" | "101",
         (55 downto 0 => '0') when others;

   w11pad <= w11_d1 & "0";
   with q11(2) select
   w10full<= w11pad - q11D when '0',
         w11pad + q11D when others;

   w10 <= w10full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 20----------------
   sel10 <= w10_d1(54 downto 51) & fY_d20(51);
   with sel10 select
   q10 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q10 select
      q10D <= 
         "000" & fY_d20            when "001" | "111",
         "00" & fY_d20 & "0"     when "010" | "110",
         "0" & fYTimes3_d20             when "011" | "101",
         (55 downto 0 => '0') when others;

   w10pad <= w10_d1 & "0";
   with q10(2) select
   w9full<= w10pad - q10D when '0',
         w10pad + q10D when others;

   w9 <= w9full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 21----------------
   sel9 <= w9_d1(54 downto 51) & fY_d21(51);
   with sel9 select
   q9 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q9 select
      q9D <= 
         "000" & fY_d21            when "001" | "111",
         "00" & fY_d21 & "0"     when "010" | "110",
         "0" & fYTimes3_d21             when "011" | "101",
         (55 downto 0 => '0') when others;

   w9pad <= w9_d1 & "0";
   with q9(2) select
   w8full<= w9pad - q9D when '0',
         w9pad + q9D when others;

   w8 <= w8full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 22----------------
   sel8 <= w8_d1(54 downto 51) & fY_d22(51);
   with sel8 select
   q8 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q8 select
      q8D <= 
         "000" & fY_d22            when "001" | "111",
         "00" & fY_d22 & "0"     when "010" | "110",
         "0" & fYTimes3_d22             when "011" | "101",
         (55 downto 0 => '0') when others;

   w8pad <= w8_d1 & "0";
   with q8(2) select
   w7full<= w8pad - q8D when '0',
         w8pad + q8D when others;

   w7 <= w7full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 23----------------
   sel7 <= w7_d1(54 downto 51) & fY_d23(51);
   with sel7 select
   q7 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q7 select
      q7D <= 
         "000" & fY_d23            when "001" | "111",
         "00" & fY_d23 & "0"     when "010" | "110",
         "0" & fYTimes3_d23             when "011" | "101",
         (55 downto 0 => '0') when others;

   w7pad <= w7_d1 & "0";
   with q7(2) select
   w6full<= w7pad - q7D when '0',
         w7pad + q7D when others;

   w6 <= w6full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 24----------------
   sel6 <= w6_d1(54 downto 51) & fY_d24(51);
   with sel6 select
   q6 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q6 select
      q6D <= 
         "000" & fY_d24            when "001" | "111",
         "00" & fY_d24 & "0"     when "010" | "110",
         "0" & fYTimes3_d24             when "011" | "101",
         (55 downto 0 => '0') when others;

   w6pad <= w6_d1 & "0";
   with q6(2) select
   w5full<= w6pad - q6D when '0',
         w6pad + q6D when others;

   w5 <= w5full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 25----------------
   sel5 <= w5_d1(54 downto 51) & fY_d25(51);
   with sel5 select
   q5 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q5 select
      q5D <= 
         "000" & fY_d25            when "001" | "111",
         "00" & fY_d25 & "0"     when "010" | "110",
         "0" & fYTimes3_d25             when "011" | "101",
         (55 downto 0 => '0') when others;

   w5pad <= w5_d1 & "0";
   with q5(2) select
   w4full<= w5pad - q5D when '0',
         w5pad + q5D when others;

   w4 <= w4full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 26----------------
   sel4 <= w4_d1(54 downto 51) & fY_d26(51);
   with sel4 select
   q4 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q4 select
      q4D <= 
         "000" & fY_d26            when "001" | "111",
         "00" & fY_d26 & "0"     when "010" | "110",
         "0" & fYTimes3_d26             when "011" | "101",
         (55 downto 0 => '0') when others;

   w4pad <= w4_d1 & "0";
   with q4(2) select
   w3full<= w4pad - q4D when '0',
         w4pad + q4D when others;

   w3 <= w3full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 27----------------
   sel3 <= w3_d1(54 downto 51) & fY_d27(51);
   with sel3 select
   q3 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q3 select
      q3D <= 
         "000" & fY_d27            when "001" | "111",
         "00" & fY_d27 & "0"     when "010" | "110",
         "0" & fYTimes3_d27             when "011" | "101",
         (55 downto 0 => '0') when others;

   w3pad <= w3_d1 & "0";
   with q3(2) select
   w2full<= w3pad - q3D when '0',
         w3pad + q3D when others;

   w2 <= w2full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 28----------------
   sel2 <= w2_d1(54 downto 51) & fY_d28(51);
   with sel2 select
   q2 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q2 select
      q2D <= 
         "000" & fY_d28            when "001" | "111",
         "00" & fY_d28 & "0"     when "010" | "110",
         "0" & fYTimes3_d28             when "011" | "101",
         (55 downto 0 => '0') when others;

   w2pad <= w2_d1 & "0";
   with q2(2) select
   w1full<= w2pad - q2D when '0',
         w2pad + q2D when others;

   w1 <= w1full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 29----------------
   sel1 <= w1_d1(54 downto 51) & fY_d29(51);
   with sel1 select
   q1 <= 
      "001" when "00010" | "00011",
      "010" when "00100" | "00101" | "00111",
      "011" when "00110" | "01000" | "01001" | "01010" | "01011" | "01101" | "01111",
      "101" when "11000" | "10110" | "10111" | "10100" | "10101" | "10011" | "10001",
      "110" when "11010" | "11011" | "11001",
      "111" when "11100" | "11101",
      "000" when others;

   with q1 select
      q1D <= 
         "000" & fY_d29            when "001" | "111",
         "00" & fY_d29 & "0"     when "010" | "110",
         "0" & fYTimes3_d29             when "011" | "101",
         (55 downto 0 => '0') when others;

   w1pad <= w1_d1 & "0";
   with q1(2) select
   w0full<= w1pad - q1D when '0',
         w1pad + q1D when others;

   w0 <= w0full(53 downto 0) & "0";
   ----------------Synchro barrier, entering cycle 30----------------
   q0(2 downto 0) <= "000" when  w0_d1 = (54 downto 0 => '0')
                else w0_d1(54) & "10";
   qP28 <=      q28_d28(1 downto 0);
   qM28 <=      q28_d28(2) & "0";
   qP27 <=      q27_d27(1 downto 0);
   qM27 <=      q27_d27(2) & "0";
   qP26 <=      q26_d26(1 downto 0);
   qM26 <=      q26_d26(2) & "0";
   qP25 <=      q25_d25(1 downto 0);
   qM25 <=      q25_d25(2) & "0";
   qP24 <=      q24_d24(1 downto 0);
   qM24 <=      q24_d24(2) & "0";
   qP23 <=      q23_d23(1 downto 0);
   qM23 <=      q23_d23(2) & "0";
   qP22 <=      q22_d22(1 downto 0);
   qM22 <=      q22_d22(2) & "0";
   qP21 <=      q21_d21(1 downto 0);
   qM21 <=      q21_d21(2) & "0";
   qP20 <=      q20_d20(1 downto 0);
   qM20 <=      q20_d20(2) & "0";
   qP19 <=      q19_d19(1 downto 0);
   qM19 <=      q19_d19(2) & "0";
   qP18 <=      q18_d18(1 downto 0);
   qM18 <=      q18_d18(2) & "0";
   qP17 <=      q17_d17(1 downto 0);
   qM17 <=      q17_d17(2) & "0";
   qP16 <=      q16_d16(1 downto 0);
   qM16 <=      q16_d16(2) & "0";
   qP15 <=      q15_d15(1 downto 0);
   qM15 <=      q15_d15(2) & "0";
   qP14 <=      q14_d14(1 downto 0);
   qM14 <=      q14_d14(2) & "0";
   qP13 <=      q13_d13(1 downto 0);
   qM13 <=      q13_d13(2) & "0";
   qP12 <=      q12_d12(1 downto 0);
   qM12 <=      q12_d12(2) & "0";
   qP11 <=      q11_d11(1 downto 0);
   qM11 <=      q11_d11(2) & "0";
   qP10 <=      q10_d10(1 downto 0);
   qM10 <=      q10_d10(2) & "0";
   qP9 <=      q9_d9(1 downto 0);
   qM9 <=      q9_d9(2) & "0";
   qP8 <=      q8_d8(1 downto 0);
   qM8 <=      q8_d8(2) & "0";
   qP7 <=      q7_d7(1 downto 0);
   qM7 <=      q7_d7(2) & "0";
   qP6 <=      q6_d6(1 downto 0);
   qM6 <=      q6_d6(2) & "0";
   qP5 <=      q5_d5(1 downto 0);
   qM5 <=      q5_d5(2) & "0";
   qP4 <=      q4_d4(1 downto 0);
   qM4 <=      q4_d4(2) & "0";
   qP3 <=      q3_d3(1 downto 0);
   qM3 <=      q3_d3(2) & "0";
   qP2 <=      q2_d2(1 downto 0);
   qM2 <=      q2_d2(2) & "0";
   qP1 <=      q1_d1(1 downto 0);
   qM1 <=      q1_d1(2) & "0";
   qP0 <= q0(1 downto 0);
   qM0 <= q0(2)  & "0";
   qP <= qP28 & qP27 & qP26 & qP25 & qP24 & qP23 & qP22 & qP21 & qP20 & qP19 & qP18 & qP17 & qP16 & qP15 & qP14 & qP13 & qP12 & qP11 & qP10 & qP9 & qP8 & qP7 & qP6 & qP5 & qP4 & qP3 & qP2 & qP1 & qP0;
   qM <= qM28(0) & qM27 & qM26 & qM25 & qM24 & qM23 & qM22 & qM21 & qM20 & qM19 & qM18 & qM17 & qM16 & qM15 & qM14 & qM13 & qM12 & qM11 & qM10 & qM9 & qM8 & qM7 & qM6 & qM5 & qM4 & qM3 & qM2 & qM1 & qM0 & "0";
   fR0 <= qP - qM;
   ----------------Synchro barrier, entering cycle 31----------------
   fR <= fR0_d1(57 downto 3)  & (fR0_d1(2) or fR0_d1(1));  -- even wF, fixing the round bit
   -- normalisation
   with fR(55) select
      fRn1 <= fR(54 downto 2) & (fR(1) or fR(0)) when '1',
              fR(53 downto 0)                    when others;
   expR1 <= expR0_d31 + ("000" & (9 downto 1 => '1') & fR(55)); -- add back bias
   round <= fRn1(1) and (fRn1(2) or fRn1(0)); -- fRn1(0) is the sticky bit
   ----------------Synchro barrier, entering cycle 32----------------
   -- final rounding
   expfrac <= expR1_d1 & fRn1_d1(53 downto 2) ;
   expfracR <= expfrac + ((64 downto 1 => '0') & round_d1);
   exnR <=      "00"  when expfracR(64) = '1'   -- underflow
           else "10"  when  expfracR(64 downto 63) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_d32 select
      exnRfinal <= 
         exnR   when "01", -- normal
         exnR0_d32  when others;
   R <= exnRfinal & sR_d32 & expfracR(62 downto 0);
end architecture;

