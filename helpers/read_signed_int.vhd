library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;

	-- read signed value with n bits from line l into s
	--
	-- usage:
	--
	-- variable next_line : line;
	-- variable next_in : signed(33 downto 0);
	-- file in_file : text;
	-- 
	--		file_open(in_file, external_name => file_name, open_kind => read_mode);
	--		while not endfile(rnd_in_file) loop
	--			readline(rnd_in_file, next_line);
	--			READ_SIGNED_INT(next_line, next_in, next_in'length);
	--		end loop;
	procedure READ_SIGNED_INT (l : inout line; s : out signed; n : in natural);
	

	procedure READ_SIGNED_INT(l : inout line; s : out signed; n : in natural) is
	variable ch : character;
	variable negative : boolean;
	variable good : boolean;
	variable result : signed(n-1 downto 0);
	variable tmp : signed(n*2-1 downto 0);
	begin
		result := (others => '0');
		
		-- assume positive numbers, to start with
		negative := false;
		
		-- skip whitespace
		read(l, ch, good);
		while (good and (ch = ' ' or ch = ht or ch = lf or ch = cr)) loop
			read(l, ch, good);
		end loop;
		
		-- read sign, if available
		if (good and (ch = '-')) then
			negative := true;
			-- skip the sign
			read(l, ch, good);
		elsif (good and (ch = '+')) then
			-- skip the sign
			read(l, ch, good);
		end if;
		
		-- while we find digits read them and add them to the result
		while (good and ('0' <= ch and ch <= '9')) loop
			tmp := (result * to_signed(10, result'length));
			result := tmp(result'length-1 downto 0) + to_signed(character'pos(ch)-character'pos('0'), result'length);
			read(l, ch, good);
		end loop;
		
		-- adjust sign
		if negative then
			result := -result;
		end if;
		
		-- assign output
		s := result;
	end READ_SIGNED_INT;
