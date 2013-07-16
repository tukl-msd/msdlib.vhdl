--------------------------------------------------------------------------------
--! @file
--! @date 12/07/2013
--! @brief AXI4-Stream queue simple testbench
--! @author Vladimir Rybalkin
--! @Supervisor: Christian de Schryver
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library ieee_proposed;
use ieee_proposed.float_pkg.all;

library std;
use std.textio.all;
use IEEE.std_logic_textio.all;

 
ENTITY queue_tb IS
END queue_tb;
 
ARCHITECTURE behavior OF queue_tb IS 
 
    -- !!! component Declaration for the Unit Under Test
 
    COMPONENT queue
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         in_TReady : OUT  std_logic;
         in_TValid : IN  std_logic;
         in_TData : IN  std_logic_vector(31 downto 0);
         in_TLast : IN  std_logic;
         out_TReady : IN  std_logic;
         out_TValid : OUT  std_logic;
         out_TData : OUT  std_logic_vector(31 downto 0);
         out_TLast : OUT  std_logic
        );
    END COMPONENT;
    

   -- !!! inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal in_TValid : std_logic := '0';
   signal in_TData : std_logic_vector(31 downto 0) := (others => '0');
   signal in_TLast : std_logic := '0';
   signal out_TReady : std_logic := '0';

 	-- !!! outputs
   signal in_TReady : std_logic;
   signal out_TValid : std_logic;
   signal out_TData : std_logic_vector(31 downto 0);
   signal out_TLast : std_logic;

   -- !!! clock period definitions
   constant clk_period : time := 10 ns;	
	
	-- !!! my signals:
	file infile	  : text is in "data_in.data";	
	file outfile  : text is out "data_out.data"; 
	signal endoffile : bit := '0';
	
	constant N_DATA : integer := 22;	
	
	-- !!! required for conversion from stlv to float; from real to float
	signal fTmp : float32;
	
		 
BEGIN
 
	-- !!! instantiate the Unit Under Test
   uut: queue PORT MAP (
          clk => clk,
          rst => rst,
          in_TReady => in_TReady,
          in_TValid => in_TValid,
          in_TData => in_TData,
          in_TLast => in_TLast,
          out_TReady => out_TReady,
          out_TValid => out_TValid,
          out_TData => out_TData,
          out_TLast => out_TLast
        );

	-- !!! clock
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- !!! Stimulus process
   stim_proc: process	
		
	type real_array_type is array (0 to N_DATA-1) of real; 
	variable inTData_array : real_array_type := (others => 0.0);
	
	type stdl_array_type is array (0 to N_DATA-1) of std_logic; 
	variable inTLast_array : stdl_array_type := (others => '0');	

	variable inline :line;	
	
   begin		
      
		-- !!! reading input data from file: in_TData and in_TLast
		for j in 0 to N_DATA-1 loop 		
			readline(infile,inline);			
			read(inline,inTData_array(j));	
			readline(infile,inline);			
			read(inline,inTLast_array(j));		
		end loop;
		
		-- !!! initialization
		rst        <= '1';
		out_TReady <= '0';
		in_TValid  <= '0';						
      in_TData   <= (others => '0');
      in_TLast   <= '0';				
		
      wait for 4 * clk_period;			
		rst <= '0';
		
		-- !!! assign stimuli to inputs:
		for j in 0 to N_DATA-1 loop 
		
			out_TReady <= '1';
			in_TValid  <= '1';			
			in_TData <= to_slv(to_float(inTData_array(j),fTmp));	
			in_TLast <= inTLast_array(j);
			
			wait for 10 ns;
			
		end loop;      
		
		-- !!! flag for writing process
		endoffile <= '1';
		
		wait;
   end process;
	
	
	-- !!! writing to output file
	writeprocess : process
	
   variable  outline  : line;    
	
	begin
	
		wait until clk = '0' and clk'event;	
		
		if out_TValid = '1' and out_TReady = '1' then				
			if endoffile = '0' then
				write(outline, to_real(to_float(out_TData,fTmp)),right,8,6);
				writeline(outfile, outline);	
				write(outline, out_TLast);
				writeline(outfile, outline);
			end if;			
		end if;	
		
	
	end process;

END;
