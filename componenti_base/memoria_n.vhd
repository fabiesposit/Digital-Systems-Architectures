----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:14:21
-- Design Name: 
-- Module Name: memoria_n - Behavioral
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

entity memoria_n is
    Generic (n : positive := 2; -- numero di bit necessari all'indirizzamento -1 
    l: positive := 7; -- numero di locazioni - 1
    m: positive := 7); -- numero di bit per locazione -1
    Port ( read : in STD_LOGIC;
           write : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (m downto 0);
           output : out STD_LOGIC_VECTOR (m downto 0);
           address : in STD_LOGIC_VECTOR (n downto 0));
end memoria_n;

architecture Behavioral of memoria_n is

type mem_type is array (0 to l) of std_logic_vector(n downto 0);
signal mem : mem_type;
begin

process(clock)
    
begin

if rising_edge(clock) then

    if reset = '1' then
    
        output <= mem(conv_integer("000"));
    
    elsif read = '1' then
        output <= mem(conv_integer(address));
    elsif write = '1' then 
        mem(conv_integer(address)) <= input;
    end if;


end if;

end process;

end Behavioral;
