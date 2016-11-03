--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Akram Alomainy
--
-- Create Date:   23:20:16 09/12/2008
-- Design Name:   full_adder
-- Module Name:   full_adder_tb.vhd
-- Project Name:   Lab 1
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 full adder test bench
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
--
-- Dependencies: full_adder.vhd
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY full_adder_tb_vhd IS
END full_adder_tb_vhd;

ARCHITECTURE behavior OF full_adder_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT full_adder
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c_in : IN std_logic;          
		sum : OUT std_logic;
		c_out : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';
	SIGNAL c_in :  std_logic := '0';

	--Outputs
	SIGNAL sum :  std_logic;
	SIGNAL c_out :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: full_adder PORT MAP(
		a => a,
		b => b,
		c_in => c_in,
		sum => sum,
		c_out => c_out
	);

	tb : PROCESS
	BEGIN

-- *** Comments on how this test bench works *** --		

		-- truth table for a full adder:

		--  c_in  b   a  :  c_out  sum
		-----------------:------------
		--		0	 0	  0  :	 0     0
		--		0	 0	  1  :	 0     1
		--		0	 1	  0  :	 0     1
		--		0	 1	  1  :	 1     0
		--		1	 0	  0  : 	 0     1
		--		1	 0	  1  :	 1     0
		--		1	 1	  0  :	 1     0
		--		1	 1	  1  :	 1     1

-- ********************************************** --

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		a <= '0';
		b <= '0';
		c_in <= '0'; 		-- check that 0 + 0 + no c_in => c_out = 0 sum = 0 	
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c_in <= '0'; 		-- check that 0 + 1 + no c_in => c_out = 0 sum = 1 	
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c_in <= '0'; 		-- check that 1 + 0 + no c_in => c_out = 0 sum = 1 	
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c_in <= '0'; 		-- check that 1 + 1 + no c_in => c_out = 1 sum = 0		
	   wait for 100 ns;
		a <= '0';
		b <= '0';
		c_in <= '1'; 		-- check that 0 + 0 +  c_in => c_out = 0 sum = 1
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c_in <= '1'; 		-- check that 1 + 0 +  c_in => c_out = 1 sum = 0
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c_in <= '1'; 		-- check that 0 + 1 +  c_in => c_out = 1 sum = 0
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c_in <= '1'; 		-- check that 1 + 1 +  c_in => c_out = 1 sum = 1 
 
		wait; -- will wait forever
	END PROCESS;

END;
