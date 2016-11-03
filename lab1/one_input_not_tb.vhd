-------------------------------------------
-- Company: 
-- Engineer: Datola Marco
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    one_input_not - Behavioral 
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
-- 				a	:	f			 	 --
--				0	:	1			 	 --
--				1	:	0			 		 --
-------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity one_input_not_tb is
end one_input_not_tb;

architecture behaviour of one_input_not_tb is

	component one_input_not
	port(
			a : in std_logic;
			f : out std_logic);
	end component;
	
	--inputs
	signal	a : std_logic := 0;
	--outputs
	signal	f : std_logic;

	begin	
		--instantiate unit under test (UUT)
		uut : one_input_not port map (a,f);
		
		tb	: process
		begin
			-- wait for global reset to finish
			wait for 100 ns;
			a	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- check f = 0
			wait;				-- will wait forver
		end process;
	end;
end behaviour;