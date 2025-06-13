----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 17:22:21
-- Design Name: 
-- Module Name: UC_B - Behavioral
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
  use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC_B is
 port (
clock, reset : in std_logic; 
write: out std_logic;
en: out std_logic;
RDA : in STD_LOGIC;
RD : out STD_LOGIC
);
end UC_B;
architecture Behavioral of UC_B is
type stato is (idle, scrivi_su_mem, avanza);
signal stato_corrente, stato_successivo : stato := idle;
begin
registri: process (clock)
begin
if rising_edge(clock) then
    if ( reset = '1' ) then
        stato_corrente <= idle;
        else
        stato_corrente <= stato_successivo;
    end if;
end if;
end process;
parte_combinatoria: process (stato_corrente, RDA)
begin
    case stato_corrente is
        when idle =>
            en <= '0';
            if ( RDA = '1' ) then
            stato_successivo <= scrivi_su_mem;
            else
            stato_successivo <= idle;
        end if;
        when scrivi_su_mem =>
            RD <= '1';
            write <= '1';
            stato_successivo <= avanza;    
        when avanza =>
            RD <= '0';
            write <= '0';
            en <= '1';
            stato_successivo <= idle;
        end case;
end process;
end Behavioral;
