----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:26:45
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
    generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4
    );
    Port (clock: in std_logic;
          req: out std_logic;
          ack: in std_logic;
          start: in std_logic;
          read: out std_logic;
          enable: out std_logic;
          c: in std_logic_vector(addrN-1 downto 0)
     );
end UC_A;

architecture Behavioral of UC_A is

type stato is (IDLE, Leggi, Invia, Attesa, Incr);
signal stato_corrente : stato := IDLE;
signal stato_prossimo: stato;

begin

uscita:process(stato_corrente, start, ack, c)
    begin
    case stato_corrente is
        when IDLE =>
            enable <='0';
            if(start='1') then
                stato_prossimo<=Leggi;
            else
                stato_prossimo<=IDLE;
            end if;
         when Leggi =>
            read<='1';
            enable<='0';
            stato_prossimo<=Invia;
         when Invia=>
            req<='1';
            read<='0';
            if(ack='0') then
                stato_prossimo<=Invia;
            else
                stato_prossimo<=Attesa;
            end if;
         when Attesa=>
            req<='0';
            if(ack='1') then
                stato_prossimo<=Attesa;
            else
                stato_prossimo<=Incr;
            end if;
        when Incr=>
            enable<='1';
            if(to_integer(unsigned(c))<(N -1)) then
                stato_prossimo<=Leggi;
            else
                stato_prossimo<=IDLE;
            end if;
        when others =>
            stato_prossimo<=IDLE;
        end case;
end process;

mem:process(clock)
    begin
        if(clock'event and clock='1') then
            stato_corrente<=stato_prossimo;
        end if;
    end process;

end Behavioral;
