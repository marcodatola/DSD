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



entity two_input_or is
    Port ( a : in std_logic;
           b : in std_logic;
           f : out std_logic);
end two_input_or;

architecture Behavioral of two_input_or is

begin

f <= a or b after 7ns;			

end Behavioral;


























































