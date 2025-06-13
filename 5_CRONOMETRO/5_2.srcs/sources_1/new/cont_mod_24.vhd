----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 11:16:22
-- Design Name: 
-- Module Name: cont_mod_24 - Behavioral
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

entity cont_mod_24 is
    Port ( en : in STD_LOGIC;
           clock : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (4 downto 0);
           count : out STD_LOGIC_VECTOR (4 downto 0));
end cont_mod_24;

architecture Behavioral of cont_mod_24 is
signal counter: std_logic_vector (4 downto 0) := "00000";

begin
count <= counter;

process(clock)
begin
    if rising_edge(clock)then
        if reset = '1' then
            counter <= "00000";
        
        elsif set = '1' then
                counter <= set_value;
        elsif en = '1' then           
            if counter = "10111" then
                counter<="00000";               
            else
                counter <= std_logic_vector(unsigned(counter)+1);
            end if;
        end if;
    end if;
end process;

end Behavioral;
