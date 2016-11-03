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

entity two_input_mux is 
	Port(	a : in std_logic;
			b : in std_logic;
			c : in std_logic;
			f : out std_logic);
end two_input_mux;

architecture Behavioral of two_input_mux is

begin
	with c select f <=  a when "0",
						b when "1"; 
end Behavioral;					