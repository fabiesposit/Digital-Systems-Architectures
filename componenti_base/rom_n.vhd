----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:01:13
-- Design Name: 
-- Module Name: rom_n - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_n is
    Generic (n : positive := 2; -- numero di bit necessari all'indirizzamento -1 
    l: positive := 7; -- numero di locazioni - 1
    m: positive := 7); -- numero di bit per locazione -1
    Port ( read : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset: in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (n downto 0);
           output : out STD_LOGIC_VECTOR (m downto 0));
end rom_n;

architecture Behavioral of rom_n is

type rom_type is array (0 to l) of std_logic_vector(m downto 0);

constant rom : rom_type := (
X"AA",
X"BB",
X"CC",
X"DD",
X"EE",
X"11",
X"22",
X"33"
);

begin

process(clock)
begin

if rising_edge(clock) then

if reset = '1' then

    output <= "00000000";

elsif read = '1' then
    
    output <= rom(conv_integer(address));
    
end if; 

end if;

end process;


end Behavioral;
