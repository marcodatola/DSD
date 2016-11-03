----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Datola Marco
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    two_input_and - Behavioral 
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
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity half_adder is
    Port ( a : in std_logic;
           b : in std_logic;
           s : out std_logic;
		   c : out std_logic );
end two_input_xor;

architecture Behavioral of half_adder is

	component two_input_and 
		Port (A, B : in std_logic;
				 F : out std_logic);
	end component;

	component two_input_xor
		Port (A, B : in std_logic;
				 F : out std_logic);
	end component;

begin
	SUM : two_input_xor port map (A, B, s);
	CARRY : two_input_and port map (A, B, c);

end Behavioral;