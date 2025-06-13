----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:34:47
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC_B is
    Port (clock: in std_logic;
          start: in std_logic;
          req: in std_logic;
          en_c: out std_logic;
          count : in std_logic_vector(2 downto 0);
          ack: out std_logic;
          enRI: out std_logic;
          enRS: out std_logic;
          enRF: out std_logic  );
end UC_B;

architecture Behavioral of UC_B is

type stato is (IDLE, Store,WaitState,Incr,Somma,Fine);
signal stato_corrente: stato := IDLE;
signal stato_prossimo: stato;

begin

uscita: process(stato_corrente, req)
    begin
    case stato_corrente is
        when IDLE =>
            ack <= '0';
            enRI <= '0';
            enRS <= '0';
            enRF <= '0';
            en_c <= '0';
            if(req='1') then
                stato_prossimo <= Store;
            else
                stato_prossimo <= IDLE;
            end if;
        when Store =>
            enRI <= '1';
            stato_prossimo <=WaitState;
       when WaitState =>
            enRI <= '0';
            ack<='1';
            if(req = '1') then
                stato_prossimo <= WaitState;
            else
                stato_prossimo <=Incr;
            end if;
      when Incr =>
            en_c <= '1';
            if (TO_INTEGER(unsigned(count))= 7) then               
                stato_prossimo <= Fine;
            else
                stato_prossimo <= Somma;
            end if;
      when Somma =>
            en_c <= '0';
            enRS <= '1';      
            stato_prossimo <= IDLE;
      when Fine => 
            en_c <= '0';
            enRF <= '1';      
            stato_prossimo <= IDLE;
       
      end case;
end process;

mem: process(clock)
    begin
        if(clock'event and clock='1') then
            stato_corrente <=stato_prossimo;
        end if;
end process;


end Behavioral;
