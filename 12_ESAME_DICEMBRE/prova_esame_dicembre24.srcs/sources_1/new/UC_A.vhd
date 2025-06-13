----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:29:31
-- Design Name: 
-- Module Name: UC_A - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC_A is
  Port (clock: in std_logic;
        start: in std_logic;
        req: out std_logic;
        ack: in std_logic;
        read: out std_logic;
        en: out std_logic;
        c: in std_logic_vector(2 downto 0)
         );
end UC_A;

architecture Behavioral of UC_A is

type stato is (IDLE, Leggi, Invia, WaitState, Incr);
signal stato_corrente: stato := IDLE;
signal stato_prossimo: stato;

begin

uscita: process(stato_corrente, start, c, ack)
    begin
    case stato_corrente is
        when IDLE =>
            en <= '0';
            Read <= '0';
            if(start='1') then
                stato_prossimo <= Leggi;
            else
                stato_prossimo <= IDLE;
            end if;
        when Leggi =>
            Read <= '1';
            en <= '0';
            stato_prossimo <=Invia;
        when Invia =>
            Req <= '1';
            Read <= '0';
            en <= '0';
            if(Ack = '0') then
                stato_prossimo <= Invia;
            else
                stato_prossimo <=WaitState;
            end if;
       when WaitState =>
            Req <= '0';
            en <= '0';
            if(Ack = '1') then
                stato_prossimo <= WaitState;
            else
                stato_prossimo <=Incr;
            end if;
       when Incr =>
            en <= '1';
            if(TO_INTEGER(unsigned(c))= 7) then
                stato_prossimo <= IDLE;
            else
                stato_prossimo <= Leggi;
            end if;
      end case;
end process;

mem: process(clock)
    begin
        if(clock'event and clock='1') then
            stato_corrente <=stato_prossimo;
        end if;
end process;


end Behavioral;
