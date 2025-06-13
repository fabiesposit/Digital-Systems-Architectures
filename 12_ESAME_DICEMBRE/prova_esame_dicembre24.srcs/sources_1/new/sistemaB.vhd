----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:44:38
-- Design Name: 
-- Module Name: sistemaB - Behavioral
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

entity sistemaB is
  Port (clock, reset: in std_logic;
        start: in std_logic;
        req: in std_logic;
        ack: out std_logic;
        data: in std_logic_vector(3 downto 0) );
end sistemaB;

architecture structural of sistemaB is
component registro4bit is
port( A: in std_logic_vector(3 downto 0);
		  clk, res, load: in std_logic;
		  B: out std_logic_vector(3 downto 0));
end component;

component CLA_Adder is
generic(N : integer := 4);
    Port (A: in std_logic_vector(N-1 downto 0);
          B: in std_logic_vector(N-1 downto 0);
          c0: in std_logic;
          carry: out std_logic;
          Sum: out std_logic_vector(N-1 downto 0)       
          );
end component;

component UC_B is
    Port (clock: in std_logic;
          start: in std_logic;
          req: in std_logic;
          en_c: out std_logic;
          count : in std_logic_vector(2 downto 0);
          ack: out std_logic;
          enRI: out std_logic;
          enRS: out std_logic;
          enRF: out std_logic  );
end component;
component cont_mod8 is
	port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(2 downto 0));
end component;

signal enableRI: std_logic;
signal enableRS: std_logic;
signal enableRF: std_logic;
signal dataRI: std_logic_vector(3 downto 0);
signal dataRS: std_logic_vector(3 downto 0);
signal dataRF: std_logic_vector(3 downto 0);
signal somma: std_logic_vector(3 downto 0);
signal carry: std_logic;
signal count_in: std_logic;
signal count: std_logic_vector(2 downto 0);
begin
--contatore per riconoscere ultima somma
myCont: cont_mod8 port map (clock,reset,count_in,count);
--registro dati in ingresso
RI: registro4bit port map(data, clock, reset, enableRI, dataRI);
--registro su ramo di feedback
RS: registro4bit port map(somma, clock, reset, enableRS, dataRS);
--registro valore finale
RF: registro4bit port map(somma, clock, reset, enableRF, dataRF);
--sommatore CLA
adder: CLA_adder generic map(4) port map(dataRI, dataRS, '0', carry, somma);

unita_controllo: UC_B port map(clock,start, req,count_in,count, ack, enableRI, enableRS, enableRF);

end structural;
