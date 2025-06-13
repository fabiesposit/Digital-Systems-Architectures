----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 13:38:04
-- Design Name: 
-- Module Name: cu - Behavioral
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

entity cu is
    Port ( clock : in STD_LOGIC;
           load_first_part : in STD_LOGIC;
           load_second_part : in STD_LOGIC;
           value16_out: out STD_LOGIC_VECTOR (0 to 15);
           value8_in: in STD_LOGIC_VECTOR(0 to 7));
end cu;

architecture Behavioral of cu is

signal reg_value : STD_LOGIC_VECTOR(0 to 15) := (others => '0');

begin

value16_out <= reg_value;


main: process(clock)

begin
    
    if clock'event and clock = '1' then
        if load_first_part = '1' then
			reg_value(0 to 7) <= value8_in;
		 elsif load_second_part = '1' then
			reg_value(8 to 15) <= value8_in;
        
       end if;
        
 
    end if;

end process;
end Behavioral;
