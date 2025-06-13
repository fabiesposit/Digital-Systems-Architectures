----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:39:21
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
    generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4
    );
    Port (clock: in std_logic;
          req: in std_logic;
          ack: out std_logic;
          read: out std_logic;
          write: out std_logic;
          enable: out std_logic;
          en_r: out std_logic;
          c: in std_logic_vector(addrN-1 downto 0)
     );
end UC_B;

architecture Behavioral of UC_B is

type stato is (IDLE, Store, WAIT_STATE, ADD,WRITE_STATE, INCR);
signal stato_corrente : stato := IDLE;
signal stato_prossimo: stato;

begin

uscita:process(stato_corrente, req)
    begin
    case stato_corrente is
        when IDLE =>
            ack<='0';
            enable <='0';
            en_r <= '0';
            if(req='1') then
                stato_prossimo<=Store;
            else
                stato_prossimo<=IDLE;
            end if;
         when Store =>
            en_r <= '1';
            read<='1';
            stato_prossimo<=ADD;
         when ADD=>
            en_r <= '0';            
            write<='0';
            read<='0';
            stato_prossimo<=WRITE_STATE;
         when WRITE_STATE =>
            en_r <= '0';            
            write<='1';
            read<='0';
            stato_prossimo<=WAIT_STATE;
         when WAIT_STATE=>
            ack<='1';
            write<='0';
            if(req='0') then
                stato_prossimo<=INCR;
            else
                stato_prossimo<=WAIT_STATE;
            end if;
        when INCR=>
            enable<='1';
            ack<='0';
            stato_prossimo<=IDLE;
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
