-------------------------------------------
-- Company: 
-- Engineer: Datola Marco
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    three_input_or - Behavioral 
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
-- 				a	c	d	:	f	 	 --
--				0	0	0	:	0	 	 --
--				0	0	1	:	1	 	 --
--				0	1	0	:	1	 	 --
--				0	1	1	:	1	 	 --
--				1	0	0	:	1	 	 --
--				1	0	1	:	1	 	 --
--				1	1	0	:	1	 	 --
--				1	1	1	:	1	 	 --
-------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity three_input_or_tb is
end three_input_or_tb;

architecture behaviour of three_input_or_tb is

	component three_input_or
	port(
			a : in std_logic;
			b : in std_logic;
			c : in std_logic;
			f : out std_logic);
	end component;
	
	--inputs
	signal	a : std_logic := 0;
	signal	b : std_logic := 0;
	signal	c : std_logic := 0;
	--outputs
	signal	f : std_logic;

	begin	
		--instantiate unit under test (UUT)
		uut : three_input_or port map (a,b,c,f);
		
		tb	: process
		begin
			-- wait for global reset to finish
			wait for 100 ns;
			a	<=	"0";		-- 0
			b	<=	"0";
			c	<=	"0";		-- check f = 0
			wait for 100 ns;
			a	<=	"0";		-- 1
			b	<=	"0";
			c	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 2
			b	<=	"1";
			c	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 3
			b	<=	"1";
			c	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 4
			b	<=	"0";
			c	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 5
			b	<=	"0";
			c	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 6
			b	<=	"1";
			c	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 7
			b	<=	"1";
			c	<=	"1";		-- check f = 1
			wait;				-- will wait forever
		end process;
	end;
end behaviour;