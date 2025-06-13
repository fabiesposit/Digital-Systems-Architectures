----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:28:44
-- Design Name: 
-- Module Name: ROM - Behavioral
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


entity ROM is
    Port (
        clock : in STD_LOGIC;
        address : in  STD_LOGIC_VECTOR (2 downto 0);
        read    : in  STD_LOGIC;
        data    : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ROM;

architecture Behavioral of ROM is
    type ROM_Array is array (0 to 7) of STD_LOGIC_VECTOR (3 downto 0);
    constant ROM_Content : ROM_Array := (
        "0000",  -- Location 0
        "0001",  -- Location 1
        "0010",  -- Location 2
        "0011",  -- Location 3
        "0100",  -- Location 4
        "0101",  -- Location 5
        "0110",  -- Location 6
        "0111"   -- Location 7
    );
    
    
begin
    process(clock)
    begin
        if(clock'event and clock='1') then 
            if read = '1' then
                data <= ROM_Content(TO_INTEGER(unsigned(address)));
            end if;
        end if;
    end process;
end Behavioral;
