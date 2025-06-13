----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:25:44
-- Design Name: 
-- Module Name: counter_n - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_n is
    Generic (n : positive := 2); -- numero di bit dell'indirizzo -1
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (n downto 0));
end counter_n;

architecture Behavioral of counter_n is

signal c : std_logic_vector(n downto 0) := (others => '0');
begin

process(clock)

begin 

        
    if rising_edge(clock) then
        if reset = '1' then
        
            c <= (others => '0');
        elsif enable = '1' then
        
            c <= std_logic_vector(unsigned(c) + 1);
            
        end if;
    end if;

end process;

count <= c;

end Behavioral;
