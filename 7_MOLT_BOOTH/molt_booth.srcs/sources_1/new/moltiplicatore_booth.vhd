----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 11:36:08
-- Design Name: 
-- Module Name: moltiplicatore_booth - Behavioral
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

entity moltiplicatore_booth is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : in STD_LOGIC_VECTOR (7 downto 0);
           start: in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (15 downto 0);
           stop_cu: out STD_LOGIC);
end moltiplicatore_booth;

architecture Behavioral of moltiplicatore_booth is


component UO is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : in STD_LOGIC_VECTOR (7 downto 0);
           enable_c: in STD_LOGIC;
           count: out STD_LOGIC_VECTOR(2 downto 0);
           subtract : in STD_LOGIC;
           selAQ: in STD_LOGIC;
           loadM: in STD_LOGIC;
           loadAQ: in STD_LOGIC;
           shift: in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (16 downto 0));
end component;

component  unita_controllo is 
	port( clock, reset, start: in std_logic;--clock è il clock della board, clock_div viene dal divisore di freq
		  count: in std_logic_vector(2 downto 0);
		  q : in std_logic_vector(1 downto 0);
		  loadM, count_in, loadAQ, en_shift: out std_logic;
		  selAQ, subtract, stop_cu: out std_logic); 
end component;

signal en_c : std_logic;
signal sig_count : std_logic_vector(2 downto 0);
signal sig_sub: std_logic;
signal sig_selaq: std_logic;
signal sig_lm: std_logic;
signal sig_laq: std_logic;
signal sig_shift: std_logic;
signal sig_stop: std_logic;
signal sig_q10: std_logic_vector(1 downto 0);

signal sig_output : std_logic_vector(16 downto 0);

begin

unita_operativa: UO Port map ( X => X,
           Y => Y,
           enable_c => en_c, 
           count => sig_count,
           subtract => sig_sub,
           selAQ => sig_selaq,
           loadM => sig_lm,
           loadAQ => sig_laq,
           shift => sig_shift,
           clock => clock,
           reset => reset,
           output => sig_output);

UC: unita_controllo port map(
        clock => clock, 
        reset => reset, 
        start => start, 
		count => sig_count,
		q  => sig_q10,
		loadM => sig_lm, 
		count_in => en_c, 
		loadAQ => sig_laq, 
		en_shift => sig_shift,
		 selAQ => sig_selaq, 
		 subtract => sig_sub, 
		 stop_cu => sig_stop 

);

Z <= sig_output(16 downto 1);
stop_cu <= sig_stop;
sig_q10 <= sig_output(1 downto 0);
end Behavioral;
