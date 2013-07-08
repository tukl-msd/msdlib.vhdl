
-- ===================================================================
-- 
-- Autors:  Christian de Schrevyer
--          Omar Khaliq
-- 
-- ===================================================================
-- 
-- Thesis: Design and Implementation of Floating-Point Core Library
-- 
-- ===================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use IEEE.std_logic_textio.all;
use std.textio.all;

package pkg_global is

      -- ===========================================================
      -- Constants
      -- ===========================================================
      
        constant BIT_WIDTH    : natural    := 32;
        constant EXCP         : natural    := 2;
  
 
      -- ===========================================================
      -- Functions
      -- =========================================================== 
  
  
        --function for variable exponent
        function vector return natural;
        
        --function for number of zeros
        function zeros (COUNT_BIT : natural) return std_logic_vector;
        
        --function for Mantissa Bits
        function MANT return natural;
        
        --function for Exponent Bits
        function EXP return natural;
        
        --function of valid fifo for Multiply operation
        function MUL_FIFO return natural;
        
        --function of valid fifo for Division operation
        function DIV_FIFO return natural;
        
        --function of valid fifo for ADD operation
        function ADS_FIFO return natural;
        
        --function for bias denormal numbers
        function BIAS return natural;
  
      
end pkg_global;



package body pkg_global is
 
  
        -- function vector
  
        function vector return natural is     
            variable bit_counter:natural:=0;
        begin
          if BIT_WIDTH=32 then
            bit_counter:=7;
          elsif BIT_WIDTH=64 then
            bit_counter:=10;
          end if;
        return bit_counter;
        end function vector;
        
        constant COUNT_BIT : natural := vector;
    
    
   
        -- function Mantissa  
  
        function MANT return natural is     
            variable mantissa_bit:natural:=0;
        begin
          if BIT_WIDTH=32 then
            mantissa_bit:=23;
          elsif BIT_WIDTH=64 then
            mantissa_bit:=52;
          end if;
        return mantissa_bit;
        end function MANT;
    
        constant MAN_BITS : natural := MANT;
    
        
        -- function Exponent
    
        function EXP return natural is     
            variable exp_bit:natural:=0;
        begin
          if BIT_WIDTH=32 then
            exp_bit:=8;
          elsif BIT_WIDTH=64 then
            exp_bit:=11;
          end if;
        return exp_bit;
        end function EXP;
        constant EXP_BITS : natural := EXP;
    
  
        --function for zeros (lzc shifter)
     
        function zeros (COUNT_BIT : natural) return std_logic_vector is
            variable z:std_logic_vector (COUNT_BIT downto 0);
        begin
          if COUNT_BIT=4 then
            z:="000";
          elsif COUNT_BIT=5 then
            z:="000000";
          end if;
        return z;
        end function zeros;
    
    
        --function Valid fifo (multiplication)  
  
        function MUL_FIFO return natural is     
            variable fifo_value:natural:=0;
        begin
          if BIT_WIDTH=32 then
            fifo_value:=2;
          elsif BIT_WIDTH=64 then
            fifo_value:=4;
          end if;
        return fifo_value;
        end function MUL_FIFO;
        constant MUL_VAL : natural := MUL_FIFO;
        
        
        --function valid fifo (addition)  
  
        function ADD_FIFO return natural is     
            variable fifo_value:natural:=0;
        begin
          if BIT_WIDTH=32 then
            fifo_value:=2;
          elsif BIT_WIDTH=64 then
            fifo_value:=4;
          end if;
        return fifo_value;
        end function ADD_FIFO;
        constant ADD_VAL : natural := ADD_FIFO;
        
        
        --function valid fifo (division)  
        
        function DIV_FIFO return natural is     
            variable fifo_value:natural:=0;
        begin
          if BIT_WIDTH=32 then
            fifo_value:=2;
          elsif BIT_WIDTH=64 then
            fifo_value:=4;
          end if;
        return fifo_value;
        end function DIV_FIFO;
        constant DIV_VAL : natural := DIV_FIFO;
    
        
        --function for valid fifo (add/sub)  
  
        function ADS_FIFO return natural is     
            variable fifo_value:natural:=0;
        begin
          if BIT_WIDTH=32 then
            fifo_value:=2;
          elsif BIT_WIDTH=64 then
            fifo_value:=4;
          end if;
        return fifo_value;
        end function ADS_FIFO;
        constant ADS_VAL : natural := ADS_FIFO;
        
        function BIAS return natural is      
            variable bias_value:natural:=0;
        begin
          if BIT_WIDTH=32 then
            bias_value:=8;
          elsif BIT_WIDTH=64 then
            bias_value:=11;
          end if;
        return bias_value;
        end function BIAS;
    
        --constant MAN_BITS : natural := MANT;
    
  end pkg_global;