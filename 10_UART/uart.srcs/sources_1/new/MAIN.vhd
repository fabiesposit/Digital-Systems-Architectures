----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 18:44:38
-- Design Name: 
-- Module Name: MAIN - Behavioral
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

entity MAIN is
    Port ( start : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end MAIN;

architecture Behavioral of MAIN is
component sistema_A is
    Port ( CLK : in STD_LOGIC;
           START : in STD_LOGIC;
           RESET : in STD_LOGIC;
           TXD : out STD_LOGIC
           );
end component;
component sistema_B is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           START : in STD_LOGIC;
           RXD : in STD_LOGIC);
end component;

signal simplex:std_logic;

begin

A: sistema_A port map(clk,start,reset,simplex);
B:sistema_B port map (clk,reset,start,simplex);

end Behavioral;
