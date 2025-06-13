----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2025 18:23:11
-- Design Name: 
-- Module Name: convertitore - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity bcd_converter is
    Port ( sec_6bit  : in  STD_LOGIC_VECTOR(5 downto 0);  -- Secondi (0-59)
           output       : out STD_LOGIC_VECTOR(7 downto 0)  
           
    );
end bcd_converter;

architecture Behavioral of bcd_converter is
begin
    process(sec_6bit)
        variable sec_int  : integer range 0 to 59;
        variable dec_int  : integer range 0 to 5;
        variable unit_int : integer range 0 to 9;
    begin
        -- Conversione da std_logic_vector a intero
        sec_int := to_integer(unsigned(sec_6bit));

        -- Calcolo decine e unità
        dec_int  := sec_int / 10;  -- Parte intera della divisione
        unit_int := sec_int mod 10; -- Resto della divisione

        -- Conversione in std_logic_vector (BCD)
        output  <= std_logic_vector(to_unsigned(dec_int, 4)) & std_logic_vector(to_unsigned(unit_int, 4));
    end process;
end Behavioral;
