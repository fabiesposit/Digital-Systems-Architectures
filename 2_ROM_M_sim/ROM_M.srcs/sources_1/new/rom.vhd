----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2024 12:09:02
-- Design Name: 
-- Module Name: rom - Behavioral
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

entity rom is
    Port ( 
           reset : in STD_LOGIC;
           selezione : in STD_LOGIC_VECTOR (3 downto 0);
           dato : out STD_LOGIC_VECTOR (7 downto 0));
end rom;

architecture Behavioral of rom is

type rom_type is array (0 to 15) of std_logic_vector(7 downto 0);

-- devo istanziare una ROM e inizializzarla

signal ROM : rom_type := (

X"2E",X"A4",X"02",X"35",
X"82",X"FE",X"AF",X"D2",
X"0B",X"A1",X"D6",X"AC",
X"C0",X"79",X"B6",X"11"
);

begin

dato <= X"00" when reset = '1' else
        ROM(conv_integer(selezione));
        
end Behavioral;
