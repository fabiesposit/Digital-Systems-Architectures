----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.01.2025 19:43:32
-- Design Name: 
-- Module Name: sistema_A - Behavioral
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

entity sistema_A is
    Port ( CLK : in STD_LOGIC;
           START : in STD_LOGIC;
           RESET : in STD_LOGIC;
           TXD : out STD_LOGIC
           );
end sistema_A;

architecture Behavioral of sistema_A is
component UC_A is
port (
CLK, RST, START: in STD_LOGIC;
counter : in STD_LOGIC_VECTOR (2 downto 0);
count_en: out std_logic;
 READ : out STD_LOGIC;
 TBE: in STD_LOGIC;
WR : out STD_LOGIC
);

end component;
component ROM_N_M is generic(N:integer := 8; M:integer:=8);
    Port ( read : in STD_LOGIC;
           clock : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (2 downto 0);
           cella_i_out : out STD_LOGIC_VECTOR (M-1 downto 0));
end component;
component cont_mod8 is
	port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(2 downto 0));
end component;
component Rs232RefComp is
    Port ( 
		TXD 	: out std_logic  	:= '1';
    	RXD 	: in  std_logic;					
    	CLK 	: in  std_logic;					--Master Clock
		DBIN 	: in  std_logic_vector (7 downto 0);--Data Bus in
		DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out
		RDA	: inout std_logic;						--Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	: inout std_logic 	:= '1';				--Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD		: in  std_logic;					--Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR		: in  std_logic;					--Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE		: out std_logic;					--Parity Error Flag
		FE		: out std_logic;					--Frame Error Flag
		OE		: out std_logic;					--Overwrite Error Flag
		RST		: in  std_logic	:= '0');			--Master Reset
end component;
--segnale contatore -> CU per il conteggio e per l'indirizzo della ROM
signal count : std_logic_vector( 2 downto 0);
--segnale contatore -> CU  abilitazione contatore
signal en: std_logic;
--segnale enable lettura rom
signal read: std_logic; 
--segnale UART -> CU 
signal TBE: std_logic;
--segnale CU -> UART
signal WR: std_logic;
--segnale uscita ROM
signal DBIN: std_logic_vector(7 downto 0);

begin

--Unit� di controllo
CU_A: UC_A port map(clk,reset,start,count,en,read,TBE,WR);

--ROM
ROM:ROM_N_M port map(read,clk,count, DBIN);

--Contatore
Cont: cont_mod8 port map(clk,reset,en,count);

--UART
Uart: Rs232RefComp port map(
                    TXD => TXD  ,
                    RXD => '1', --sempre alta per indicare che non ricevo nulla
                    clk => clk, 
                    DBIN => DBIN,
                    TBE => TBE,
                    RD => '0', 
                    WR => WR,
                    RST => reset
                    );
end Behavioral;
