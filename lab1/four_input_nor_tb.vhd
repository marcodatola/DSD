-------------------------------------------
-- Company: 
-- Engineer: Datola Marco
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    four_input_nor - Behavioral 
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
-- 				a	b	c	d	:	f	 --
--				0	0	0	0	:	0	 --
--				0	0	0	1	:	1	 --
--				0	0	1	0	:	1	 --
--				0	0	1	1	:	1	 --
--				0	1	0	0	:	1	 --
--				0	1	0	1	:	1	 --
--				0	1	1	0	:	1	 --
--				0	1	1	1	:	1	 --
--				1	0	0	0	:	1	 --
--				1	0	0	1	:	1	 --
--				1	0	1	0	:	1	 --
--				1	0	1	1	:	1	 --
--				1	1	0	0	:	1	 --
--				1	1	0	1	:	1	 --
--				1	1	1	0	:	1	 --
--				1	1	1	1	:	1	 --
-------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity four_input_nor_tb is
end four_input_nor_tb;

architecture behaviour of four_input_nor_tb is

	component four_input_nor
	port(
			a : in std_logic;
			b : in std_logic;
			c : in std_logic;
			d : in std_logic;
			f : out std_logic);
	end component;
	
	--inputs
	signal	a : std_logic := 0;
	signal	b : std_logic := 0;
	signal	c : std_logic := 0;
	signal	d : std_logic := 0;
	--outputs
	signal	f : std_logic;

	begin	
		--instantiate unit under test (UUT)
		uut : four_input_nor port map (a,b,c,d,f);
		
		tb	: process
		begin
			-- wait for global reset to finish
			wait for 100 ns;
			a	<=	"0";		-- 0
			b	<=	"0";
			c	<=	"0";
			d	<=	"0";		-- check f = 0
			wait for 100 ns;
			a	<=	"0";		-- 1
			b	<=	"0";
			c	<=	"0";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 2
			b	<=	"0";
			c	<=	"1";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 3
			b	<=	"0";
			c	<=	"1";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 4
			b	<=	"1";
			c	<=	"0";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 5
			b	<=	"1";
			c	<=	"0";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 6
			b	<=	"1";
			c	<=	"1";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"0";		-- 7
			b	<=	"1";
			c	<=	"1";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 8
			b	<=	"0";
			c	<=	"0";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 9
			b	<=	"0";
			c	<=	"0";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 10
			b	<=	"0";
			c	<=	"1";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 11
			b	<=	"0";
			c	<=	"1";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 12
			b	<=	"1";
			c	<=	"0";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 13
			b	<=	"1";
			c	<=	"0";
			d	<=	"1";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 14
			b	<=	"1";
			c	<=	"1";
			d	<=	"0";		-- check f = 1
			wait for 100 ns;
			a	<=	"1";		-- 15
			b	<=	"1";
			c	<=	"1";
			d	<=	"1";		-- check f = 1
			wait;				-- will wait forever
		end process;
	end;
end behaviour;