-------------------------------------------
-- Company: 
-- Engineer: Datola Marco
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    two_input_nand - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
-------------------------------------------
-------------------------------------------
-- truth table to process the test bench --
-- 				a	b	:	f			 --
--				0	0	:	1			 --
--				0	1	:	1			 --
--				1	0	:	1			 --
--				1	1	:	0			 --
-------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity two_input_nand_tb is
end two_input_nand_tb;

architecture behaviour of two_input_nand_tb is

	component two_input_nand
	port(
			a : in std_logic;
			b : in std_logic;
			f : out std_logic);
	end component;
	
	--inputs
	signal	a : std_logic := 0;
	signal	b : std_logic := 0;
	--outputs
	signal	f : std_logic;

	begin	
		--instantiate unit under test (UUT)
		uut : two_input_nand port map (a,b,f);
		
		tb	: process
		begin
			-- wait for global reset to finish
			wait for 100 ns;
			a	<=	"0";
			b	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<= 	"0";
			b	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<= 	"1";
			b 	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";
			b	<=	"1";		-- check f = 0
			wait;				-- will wait forver
			
		end process;
	end;
end behaviour;