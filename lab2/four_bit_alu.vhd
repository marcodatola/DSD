--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Chris Harte
--
-- Create Date:    12:57:11 10/01/08
-- Design Name:    335labs
-- Module Name:    four_bit_alu - Behavioral
-- Project Name:   Lab 2
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 A four-bit Arithemtic and Logic unit
--
-- Dependencies: nbit_two_input_mux, four_bit_arithmetic, nbit_logic_unit
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ********* COMMENTS ON HOW THIS DEVICE DESIGN WORKS ******************
--
--	See page 6 of lab script 2
--
-- ENTITY 
-- the entity declaration defines the interface of "four_bit_alu"
--
-- ARCHITECTURE 
-- architecture describes the internal structure of the device 
--
-- COMPONENTS
-- This architecture requires three sub-components that your group 
-- will program for this lab: 
-- * "four_bit_arithmetic_unit"
-- * "nbit_logic_unit"
-- * "nbit_two_input_mux"
-- 
-- The nbit components (the logic unit and mux) have a generic value "n" 
-- which must appear in the component declaration. No default value is 
-- needed in the component declaration but they will be necessary in your 
-- entity code for these devices.
-- 
-- SIGNALS
--	This device uses two internal signals which are both bit vectors 
-- (i.e. they are buses).  
--
-- INSTANCES
--	The three sub-components are instantiated in the main body of the 
-- architecture code and their ports are mapped appropriately according 
-- to the design. Note that the nbit devices require "generic map" to 
-- set the bit-width value "n".
--
-- NOTE: This device will NOT compile or pass a syntax check until code 
-- files for the three sub-compontents are implemented. 
--
-- *********************************************************************


-- ENTITY
entity four_bit_alu is
    Port ( InA : in std_logic_vector(3 downto 0);
           InB : in std_logic_vector(3 downto 0);
           F : in std_logic_vector(2 downto 0);
           Output : out std_logic_vector(3 downto 0);
           C_out : out std_logic);
end four_bit_alu;


-- ARCHITECHTURE
architecture Behavioral of four_bit_alu is

-- COMPONENTS:
component n_bit_two_input_mux
	generic (n : positive := 4) ;
	Port ( I0 : in std_logic_vector(n-1 downto 0);
			 I1 : in std_logic_vector(n-1 downto 0);
			 S  : in std_logic;
			 f	 : out std_logic_vector(n-1 downto 0)
			 );
end component; 

component four_bit_arith_unit
	Port ( InA, InB : IN std_logic_vector (3 downto 0);
			cntrl : IN std_logic_vector (1 downto 0);
			Sum : OUT std_logic_vector (3 downto 0);
			c_out : OUT std_logic);
end component;

component n_bit_logic_unit
	generic (n : positive := 4) ;
	Port ( InA, InB : in std_logic_vector(n-1 downto 0);
           Cntrl : in std_logic_vector(1 downto 0);
           Output : out std_logic_vector(n-1 downto 0));
end component; 

-- SIGNALS
signal arith_to_mux, logic_to_mux : std_logic_vector (3 downto 0);

begin

-- INSTANCES
	
	-- instantiate the arithemetic unit:
	arith : four_bit_arith_unit port map (InA, InB, F(1 downto 0), arith_to_mux, C_out);
	
	-- instantiate the logic unit with a bit-width of 4 (map generic value "n" to 4)
	logic : n_bit_logic_unit port map (InA, InB, F(1 downto 0), logic_to_mux);
	
	-- instantiate the mux with a bit-width of 4 (map generic value "n" to 4)
	mux : n_bit_two_input_mux port map (arith_to_mux, logic_to_mux, (not F(2)), Output);

end Behavioral;