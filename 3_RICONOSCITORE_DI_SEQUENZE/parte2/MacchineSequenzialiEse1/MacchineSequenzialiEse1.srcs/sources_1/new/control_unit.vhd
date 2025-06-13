----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2024 20:06:59
-- Design Name: 
-- Module Name: control_unit - Behavioral
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

entity control_unit is
    Port ( clock : in STD_LOGIC;
           B_mode : in STD_LOGIC;
           S_mode : in STD_LOGIC;
           mode : out std_logic
           );
end control_unit;

architecture Behavioral of control_unit is

begin

main: process(clock)
begin
    if clock'event and clock='1' then
        if B_mode = '1' then 
            mode <= S_mode;
        end if;
     end if;
end process;

end Behavioral;
