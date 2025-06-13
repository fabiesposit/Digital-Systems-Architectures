----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.02.2025 16:03:32
-- Design Name: 
-- Module Name: registro - Behavioral
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

entity registro is
    Port ( input : in STD_LOGIC;
           output : out STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC);
end registro;

architecture Behavioral of registro is

signal temp: std_logic := '0';

begin

process(clock)

begin

if rising_edge(clock) then
    
    if reset = '1' then
        temp <= '0';
    else
        temp <= input;
    end if;
end if;
end process;

output <= temp;

end Behavioral;
