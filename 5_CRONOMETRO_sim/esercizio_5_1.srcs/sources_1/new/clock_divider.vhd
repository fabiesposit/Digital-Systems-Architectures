----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 19:21:36
-- Design Name: 
-- Module Name: Divisore_freq - Behavioral
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

entity Divisore_freq is
    generic (
        f_in  : integer := 100000000;
        f_out : integer := 1
    );
    port (
        reset : in std_logic;
        clock : in std_logic;
        div   : out std_logic
    );
end Divisore_freq;

architecture Behavioral of Divisore_freq is

constant max_value : integer := (f_in/f_out)-1;

begin

process (clock)
variable conteggio : integer range 0 to max_value := 0;
begin

if (rising_edge(clock)) then
    if (reset ='1') then
        conteggio := 0;
        div <= '0';
    elsif (conteggio = max_value) then 
         conteggio := 0;
         div <= '1';
    else 
        conteggio := conteggio+1;
        div <= '0'; 
    end if;
    
end if;

end process;

end Behavioral;
