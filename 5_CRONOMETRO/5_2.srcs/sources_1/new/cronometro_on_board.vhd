----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2025 17:51:20
-- Design Name: 
-- Module Name: cronometro_on_board - Behavioral
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

entity cronometro_on_board is
    Port ( clock_in : in STD_LOGIC;
           reset_in : in STD_LOGIC;
           anodes_out : out STD_LOGIC_VECTOR (7 downto 0);
           cathodes_out : out STD_LOGIC_VECTOR (7 downto 0);
           set : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (11 downto 0));
end cronometro_on_board;

architecture Behavioral of cronometro_on_board is
    component registro is generic ( N : integer:=8);
        port( A: in std_logic_vector(N-1 downto 0);
              clk, res, load: in std_logic;
              B: out std_logic_vector(N-1 downto 0));
    end component;
component display_seven_segments is
	Generic( 
				CLKIN_freq : integer := 100000000; 
				CLKOUT_freq : integer := 500
				);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           VALUE : in  STD_LOGIC_VECTOR (31 downto 0);
           ENABLE : in  STD_LOGIC_VECTOR (7 downto 0); -- decide quali cifre abilitare
           DOTS : in  STD_LOGIC_VECTOR (7 downto 0); -- decide quali punti visualizzare
           ANODES : out  STD_LOGIC_VECTOR (7 downto 0);
           CATHODES : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
component cronometro is
    Port ( clock : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (16 downto 0);
           h : out STD_LOGIC_VECTOR (4 downto 0);
           m : out STD_LOGIC_VECTOR (5 downto 0);
           s : out STD_LOGIC_VECTOR (5 downto 0);
           enable : in STD_LOGIC);
end component;

component ButtonDebouncer is
    generic (                       
        CLK_period: integer := 10;  -- periodo del clock (della board) in nanosecondi
        btn_noise_time: integer := 10000000 -- durata stimata dell'oscillazione del bottone in nanosecondi
                                            -- il valore di default è 10 millisecondi
    );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;
component CU_set_cronom is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           BTN : in STD_LOGIC;
           EN: out STD_LOGIC;
           SET : out STD_LOGIC;
           en_h : out std_logic;
           en_m_s : out STD_LOGIC );
end component;

component bcd_converter is
    Port ( sec_6bit  : in  STD_LOGIC_VECTOR(5 downto 0);  -- Secondi (0-59)
           output       : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end component;
-- segnale tra registri e cronometro che memorizzano il valore 
--delle ore, minuti e secondi da settare
signal set_value :std_logic_vector(16 downto 0);
--segnali abilitazioni registri ore e minuti-secondi
signal en_h:std_logic;
signal en_m_s:std_logic;
--segnale del bottone cleared (dopo il debouncer)
signal btn:std_logic;
--segnale che esce dalla CU e abilita il SET del contatore
signal set_CU:std_logic;
--segnale di reset collegato al bottone della board(ricorda 0 attivo)
signal reset:std_logic;
--segnale di abilitazione del contatore
signal en:std_logic;
-- segnale per le ore in uscita dal contatore
signal h  :STD_LOGIC_VECTOR (4 downto 0);
-- segnale per i minuti in uscita dal contatore
signal  m  :STD_LOGIC_VECTOR (5 downto 0);
-- segnale per i secondi in uscita dal contatore
signal s :STD_LOGIC_VECTOR (5 downto 0);

--segnale per le ore convertito su 8 bit ( 4 bit per le unità e 4 per le decine)
signal h_x  :STD_LOGIC_VECTOR (7 downto 0);
--segnale delle ore convertito su 6 bit ,
-- poichè essendo le ore su 5 bit le convertiamo su 6
--mettendo uno 0 di padding all'inizio in modo tale da poter utilizzare lo stesso convertitore
--(che accetta 6 bit in ingresso) sia per le ore che per i secondi/minuti
signal h_6:STD_LOGIC_VECTOR(5 downto 0);
--segnale per i minuti convertito su 8 bit ( 4 bit per le unità e 4 per le decine)
signal  m_x  :STD_LOGIC_VECTOR (7 downto 0);
--segnale per i minuti convertito su 8 bit ( 4 bit per le unità e 4 per le decine)
signal s_x :STD_LOGIC_VECTOR (7 downto 0);
--segnale dei valori da mostrare sul display(concatenazione ore min sec)
signal value_display : STD_LOGIC_VECTOR(31 downto 0);
begin

reset <= not reset_in;

--devo convertire secondi, min, h per visualizzarli sul display che accetta dati in esadecimale
converti_sec: bcd_converter port map(s,s_x);
converti_min:bcd_converter port map(m,m_x);
--devo convertire le or ein 6bit per utilizzare convertitore 
h_6 <= '0' & h;
converti_h:bcd_converter port map(h_6,h_x);
value_display <= "00000000" & h_x & m_x & s_x;
--DISPLAY
dss: display_seven_segments port map(clock_in,reset,value_display,"11111111","00000000",anodes_out,cathodes_out);
--CRONOMETRO
crono: cronometro port map(clock_in,set_CU,reset,set_value,h,m,s,en);
--BTN DEBOUNCER
btn_dbnc: ButtonDebouncer port map(reset, clock_in,set,btn);
--CU
cu: CU_set_cronom port map(clock_in,reset,btn,en,set_CU,en_h,en_m_s);
--Registro per le ore 5 bit
reg_h: registro generic map(5) port map(sw(4 downto 0),clock_in,reset,en_h,set_value(16 downto 12));
--Registro per i minuti e per i secondi 12 bit ( 6+6 bit)
reg_m_s: registro generic map(12) port map(sw(11 downto 0),clock_in,reset,en_m_s,set_value(11 downto 0));
end Behavioral;
