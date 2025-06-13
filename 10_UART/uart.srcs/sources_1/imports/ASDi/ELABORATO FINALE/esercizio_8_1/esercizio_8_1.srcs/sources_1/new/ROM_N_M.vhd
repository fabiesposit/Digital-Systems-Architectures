----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 18:30:31
-- Design Name: 
-- Module Name: ROM_N_M - Behavioral
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_N_M is generic(N:integer := 8; M:integer:=8);
    Port ( read : in STD_LOGIC;
           clock : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (2 downto 0);
           cella_i_out : out STD_LOGIC_VECTOR (M-1 downto 0));
end ROM_N_M;

architecture Behavioral of ROM_N_M is
type rom_type is array (0 to N-1) of std_logic_vector(M-1 downto 0);

signal rom : rom_type := (
X"11", 
X"2A", 
X"33", 
X"44", 
X"65",
X"6D",
X"77", 
X"88"
);

signal uscita: std_logic_vector(M-1 downto 0) := (others => '0');

begin
cella_i_out <= uscita;

process(clock)
begin
    if rising_edge(clock) then
        if read = '1' then
            uscita <= rom(conv_integer(address));
        end if;
    end if;
end process;


end Behavioral;

