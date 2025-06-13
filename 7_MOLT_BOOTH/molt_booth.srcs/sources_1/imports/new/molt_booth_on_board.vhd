----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 15:41:00
-- Design Name: 
-- Module Name: molt_booth_on_board - Behavioral
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

entity molt_booth_on_board is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : in STD_LOGIC_VECTOR (7 downto 0);
           start : in STD_LOGIC;
           clock: in STD_LOGIC;
           z: out std_logic_vector(15 downto 0);
           anodes: out std_logic_vector(7 downto 0);
           cathodes: out std_logic_vector(7 downto 0);
           reset : in STD_LOGIC);
end molt_booth_on_board;


architecture Behavioral of molt_booth_on_board is

component display_seven_segments is
	Generic( 
				clock_frequency_in : integer := 50000000; 
				clock_frequency_out : integer := 5000000
				);
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           value32_in : in  STD_LOGIC_VECTOR (31 downto 0);
           enable : in  STD_LOGIC_VECTOR (7 downto 0);
           dots : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes : out  STD_LOGIC_VECTOR (7 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
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


component moltiplicatore_booth is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : in STD_LOGIC_VECTOR (7 downto 0);
           start: in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (15 downto 0);
           stop_cu: out STD_LOGIC);
end component;

signal sig_start: std_logic;
signal prodotto: std_logic_vector(15 downto 0);
signal sig_value: std_logic_vector(31 downto 0);
signal stop_cu : std_logic;


begin



btnStart: ButtonDebouncer generic map( CLK_period => 10, btn_noise_time => 10000000)
port map(RST => reset,
           CLK => clock,
           BTN => start,
           CLEARED_BTN => sig_start);

molt_booth:  moltiplicatore_booth 
    Port map( 
           X => X,
           Y => Y,
           start => sig_start,
           clock => clock,
           reset => reset,
           Z => prodotto,
           stop_cu => stop_cu);

sig_value <=Y&X&prodotto;
z <= prodotto;

display: display_seven_segments 
	Generic map( 
				clock_frequency_in => 100000000,
				clock_frequency_out =>500
				)
    Port map ( clock => clock,
           reset => reset,
           value32_in => sig_value,
           enable => "11111111",
           dots => "00000000",
           anodes => anodes,
           cathodes => cathodes);
end Behavioral;
