library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity UC_A is
   
port (
CLK, RST, START: in STD_LOGIC;
counter : in STD_LOGIC_VECTOR (2 downto 0);
count_en: out std_logic;
 READ : out STD_LOGIC;
 TBE: in STD_LOGIC;
WR : out STD_LOGIC);

end UC_A;
 

architecture Behavioral of UC_A is

type stato is (idle, leggi_rom, rom_letta, invia, avanza);
signal stato_corrente, stato_successivo : stato := idle;

begin

registri: process (CLK)

begin
if rising_edge (CLK) then
    if ( RST = '1' ) then
    stato_corrente <= idle;
        else
    stato_corrente <= stato_successivo;
    end if;
end if;

end process;

parte_combinatoria: process (stato_corrente, START, counter, TBE)
begin
case stato_corrente is
    when idle =>
        count_en <= '0';
            if ( START = '1' ) then
    stato_successivo <= leggi_rom;
        else
    stato_successivo <= idle;
    end if;
    
    when leggi_rom =>

        count_en <= '0';
        READ <= '1';
        stato_successivo <= rom_letta;
    when rom_letta =>
        READ <= '0';
        WR <= '1';
        stato_successivo <= invia;
    when invia =>
        if ( TBE = '0' ) then
        stato_successivo <= invia;
        else
        WR <= '0';
        stato_successivo <= avanza;
    end if;
    
    when avanza =>
    count_en <= '1';
    if (to_integer(unsigned(counter)) < 7) then
        stato_successivo <= leggi_rom;
    else
        stato_successivo <= idle;
    end if;
    
    end case;
end process;


end Behavioral;