----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2024 17:28:25
-- Design Name: 
-- Module Name: rom_on_board - Behavioral
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

entity rom_on_board is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0));
end rom_on_board;

architecture Behavioral of rom_on_board is

component rom_m  Port ( s : in STD_LOGIC_VECTOR(3 downto 0);
           reset : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR(3 downto 0));
end component;

signal selezioni: std_logic_vector(3 downto 0);
signal uscite: std_logic_vector(3 downto 0);
signal rst: std_logic;


begin

selezioni <= s;
rst <= reset;
y <= uscite;

romm: rom_m port map(   
        
        s => selezioni,
        reset => rst,
        y => uscite

);

end Behavioral;
