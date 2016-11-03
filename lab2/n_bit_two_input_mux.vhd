----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    15:50:37 10/25/2016 
-- Design Name: 
-- Module Name:    n_bit_two_input_mux - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity n_bit_two_input_mux is
	
	generic (n : positive := 4) ;
	
	port ( I0 : in std_logic_vector(n-1 downto 0);
			 I1 : in std_logic_vector(n-1 downto 0);
			 S  : in std_logic;
			 f	 : out std_logic_vector(n-1 downto 0)
			 );
end n_bit_two_input_mux;

architecture Behavioral of n_bit_two_input_mux is

	component two_input_multiplexer
		port ( S	 : in std_logic;
				 I0 : in std_logic;
				 I1 : in std_logic;
				 f  : out std_logic
				);
	end component;
	
begin

	inst : for i in (n-1) downto 0 generate
	
		two_in_mux : two_input_multiplexer port map (S, I0(i), I1(i), f(i));
	end generate;
	
end Behavioral;

