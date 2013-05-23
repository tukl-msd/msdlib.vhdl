--!
--! Copyright (C) 2010 creonic UG (haftungsbeschränkt)
--!
--! @file
--! @brief  Testbench file reading
--! @author Matthias Alles
--! @date   2010/04/05
--!
--! @details Offers functions to read files
--!

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.std_logic_textio.all;


package pkg_tb_fileio is


	------------------------------
	-- Data type definitions
	------------------------------

	--! Data type to store the file content in integer format.
	type int_array_type is array (natural range <>) of integer;

	--! Data type to store the file content in bit vektor format.
	type std_logic_array_type is array (natural range <>) of std_logic_vector(31 downto 0);

	--! Data type to store the file conent in natural format.
	type nat_array_type is array (natural range <>) of natural;

	--! Access type of std_logic_array_type.
	type std_logic_array_ptr_type is access std_logic_array_type;

	--! Access type of int_array_type.
	type t_int_array_ptr is access int_array_type;
	type int_array_ptr_type is access int_array_type;

	--! Access type of nat_array_type.
	type t_nat_array_ptr is access nat_array_type;
	type nat_array_ptr_type is access nat_array_type;

	--! String access type, e.g., for file names of variable length.
	type t_string_ptr is access string;
	type string_ptr is access string;


	------------------------------
	-- File I/O Functions.
	------------------------------

	--!
	--! Open file, get number of lines, create a new memory of type int_array_type
	--! at address data, read the file, saturate the values to bit_width bits.
	--! Format within file: One signed integer per line (decimal).
	--!
	procedure read_file (data      : inout int_array_ptr_type;
	                     num_lines : inout natural;
	                     bit_width : in natural;
	                     filename  : in string);


	--!
	--! Open file, get number of lines, create a new memory of type int_array_type
	--! at address data, read the file, saturate the values to bit_width bits.
	--! Format within file: One signed integer per line (decimal).
	--!
	procedure read_file (data      : inout nat_array_ptr_type;
	                     num_lines : inout natural;
	                     bit_width : in natural;
	                     filename  : in string);

	--!
	--! Open file, get number of lines, create a new memory of type int_array_type
	--! at address data, read the file.
	--! Format within file: One hexadecimal number per line.
	--!
	procedure read_file_hex (data      : inout std_logic_array_ptr_type;
	                         num_lines : inout natural;
	                         filename  : in string);

	--!
	--! Open file, get number of lines, create new memorys of type int_array_type
	--! at address data, read the file, saturate each single value to bit_width bits.
	--! Format within file: One "(real,imag)" couple per line. real and imag have to
	--! be one signed integer (decimal).
	--!
	procedure read_file_complex (data_real : inout int_array_ptr_type;
	                             data_imag : inout int_array_ptr_type;
	                             num_lines : inout natural;
	                             bit_width : in natural;
	                             filename  : in string);

	--! Open file and return the number of lines stored within.
	function get_num_lines(filename : in string) return natural;


	-----------------------------------------------------
	-- Obsolete functions, should no longer be used!!
	-----------------------------------------------------

	--! Read no_values lines of file and return the values as integer array. OBSOLETE.
	procedure read_file (data      : inout int_array_type;
	                     bit_width : in natural;
	                     no_values : in natural;
	                     filename  : in string);

	--! Read no_values lines of file and return the values as natural array. OBSOLETE.
	procedure read_file (data      : inout nat_array_type;
	                     bit_width : in natural;
	                     no_values : in natural;
	                     filename  : in string);


end pkg_tb_fileio;


package body pkg_tb_fileio is


	procedure read_file (data      : inout int_array_ptr_type;
	                     num_lines : inout natural;
	                     bit_width : in natural;
	                     filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable value        : integer;

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		num_lines := get_num_lines(filename);

		deallocate(data);

		data := new int_array_type(0 to num_lines - 1);

		for i in 0 to num_lines - 1 loop

			-- read integer value from line
			readline(file_handler, line_in);
			read(line_in, value);

			-- saturate
			if value > 2 ** (bit_width - 1) - 1 then
				value := 2 ** (bit_width - 1) - 1;
			elsif value < -2 ** (bit_width - 1) then
				value := -2 ** (bit_width - 1);
			end if;

			data(i) := value;
		end loop;

	end read_file;


	procedure read_file (data      : inout nat_array_ptr_type;
	                     num_lines : inout natural;
	                     bit_width : in natural;
	                     filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable value        : integer;

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		num_lines := get_num_lines(filename);

		deallocate(data);

		data := new nat_array_type(0 to num_lines - 1);

		for i in 0 to num_lines - 1 loop

			-- read integer value from line
			readline(file_handler, line_in);
			read(line_in, value);

			-- saturate
			if value > 2 ** bit_width - 1 then
				value := 2 ** bit_width - 1;
			end if;

			data(i) := value;
		end loop;

	end read_file;


	procedure read_file_hex (data      : inout std_logic_array_ptr_type;
	                         num_lines : inout natural;
	                         filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable value        : integer;
		variable hex          : std_logic_vector(31 downto 0);

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		num_lines := get_num_lines(filename);

		deallocate(data);

		data := new std_logic_array_type(0 to num_lines - 1);

		for i in 0 to num_lines - 1 loop

			-- read hex value from line
			readline(file_handler, line_in);
			hread(line_in, hex);

			data(i) := hex;
		end loop;

	end read_file_hex;


	procedure read_file_complex (data_real : inout int_array_ptr_type;
	                             data_imag : inout int_array_ptr_type;
	                             num_lines : inout natural;
	                             bit_width : in natural;
	                             filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable char         : character;
		variable value        : integer;

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		num_lines := get_num_lines(filename);

		deallocate(data_real);
		deallocate(data_imag);
		data_real := new int_array_type(0 to num_lines - 1);
		data_imag := new int_array_type(0 to num_lines - 1);

		for i in 0 to num_lines - 1 loop

			-- read integer value from line
			readline(file_handler, line_in);

			-- read "("
			read(line_in, char);

			-- read number
			read(line_in, value);

			-- saturate
			if value > 2 ** (bit_width - 1) - 1 then
				value := 2 ** (bit_width - 1) - 1;
			elsif value < -2 ** (bit_width - 1) then
				value := -2 ** (bit_width - 1);
			end if;

			data_real.all(i) := value;

			-- read ","
			read(line_in, char);

			-- read number
			read(line_in, value);

			-- saturate
			if value > 2 ** (bit_width - 1) - 1 then
				value := 2 ** (bit_width - 1) - 1;
			elsif value < -2 ** (bit_width - 1) then
				value := -2 ** (bit_width - 1);
			end if;

			data_imag.all(i) := value;
		end loop;

	end read_file_complex;


	function get_num_lines(filename : in string) return natural is
		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable num_lines    : natural := 0;
	begin

		while not endfile(file_handler) loop
			readline(file_handler, line_in);
			num_lines := num_lines + 1;
		end loop;

		return num_lines;
	end function;



	-----------------------------------------------------
	-- Obsolete functions, should no longer be used!!
	-----------------------------------------------------

	procedure read_file (data      : inout int_array_type;
	                     bit_width : in natural;
	                     no_values : in natural;
	                     filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable value        : integer;

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		for i in 0 to no_values - 1 loop

			-- read integer value from line
			readline(file_handler, line_in);
			read(line_in, value);

			-- saturate
			if value > 2 ** (bit_width - 1) - 1 then
				value := 2 ** (bit_width - 1) - 1;
			elsif value < -2 ** (bit_width - 1) then
				value := -2 ** (bit_width - 1);
			end if;

			data(i) := value;
		end loop;

	end read_file;


	procedure read_file (data      : inout nat_array_type;
	                     bit_width : in natural;
	                     no_values : in natural;
	                     filename  : in string) is

		file     file_handler : text open read_mode is filename;
		variable line_in      : line;
		variable line_out     : line;
		variable value        : natural;

	begin
		write(line_out, string'("Reading "));
		write(line_out, filename );
		write(line_out, string'("."));
		writeline(output, line_out);

		for i in 0 to no_values - 1 loop

			-- read integer value from line
			readline(file_handler, line_in);
			read(line_in, value);

			-- saturate natural
			if value > 2 ** bit_width - 1 then
				value := 2 ** bit_width - 1;
			end if;

			data(i) := value;
		end loop;

	end read_file;
end pkg_tb_fileio;
