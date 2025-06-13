----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2025 16:05:44
-- Design Name: 
-- Module Name: sistema_les_on_board - Behavioral
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

entity sistema_les_on_board is
    Port ( btn1 : in STD_LOGIC;
           clock_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
end sistema_les_on_board;

architecture Structural of sistema_les_on_board is


component sistema_les is
    Port ( clock : in STD_LOGIC;
           start : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
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

signal btn_read : std_logic;

begin

btn: ButtonDebouncer
    generic map (                       
        CLK_period => 10,  -- periodo del clock (della board) in nanosecondi
        btn_noise_time => 10000000 -- durata stimata dell'oscillazione del bottone in nanosecondi
                                            -- il valore di default è 10 millisecondi
    )
    Port map( RST => reset,
           CLK => clock_in,
           BTN => btn1,
           CLEARED_BTN => btn_read);

sistema : sistema_les 
    Port map( clock => clock_in,
           start => btn_read,
           reset => reset,
           output => output);


end Structural;
