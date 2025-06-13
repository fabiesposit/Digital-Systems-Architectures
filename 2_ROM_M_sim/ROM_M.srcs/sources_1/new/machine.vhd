----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2024 15:55:09
-- Design Name: 
-- Module Name: machine - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity machine is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end machine;

architecture Behavioral of machine is

component mux_2_1

	port( 	a0 	: in STD_LOGIC;
			a1 	: in STD_LOGIC;
			s 	: in STD_LOGIC;
			y 	: out STD_LOGIC
	);
end component;

signal not_data_in: std_logic_vector(7 downto 0);

begin

not_data_in <= not data_in;

mux_n_to_0: for n in 3 downto 0 generate

        mux_comp: mux_2_1 port map(
            
            a0 => not_data_in((2*n)+1),
            a1 => not_data_in(2*n),
            s => data_in(2*n+1),
            y => y(n)
        
        );
        
end generate mux_n_to_0;
        
        
end Behavioral;
