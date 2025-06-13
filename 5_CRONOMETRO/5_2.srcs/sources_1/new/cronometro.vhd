----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 11:16:22
-- Design Name: 
-- Module Name: cronometro - Behavioral
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

entity cronometro is
    Port ( clock : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (16 downto 0);
           h : out STD_LOGIC_VECTOR (4 downto 0);
           m : out STD_LOGIC_VECTOR (5 downto 0);
           s : out STD_LOGIC_VECTOR (5 downto 0);
           enable : in STD_LOGIC);
end cronometro;

architecture Structural of cronometro is

component Divisore_freq is    generic (
        f_in  : integer := 100000000;
        f_out : integer := 1
    );
    port (
        reset : in std_logic;
        clock : in std_logic;
        div   : out std_logic
    );
end component;

component cont_mod_24 is Port ( en : in STD_LOGIC;
           clock : in STD_LOGIC;
           set : in STD_LOGIC;           
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (4 downto 0);
           count : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component cont_mod_60 is  Port ( en : in STD_LOGIC;
           clock : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (5 downto 0);
           count : out STD_LOGIC_VECTOR (5 downto 0);
           U_max : out STD_LOGIC);
end component;

signal enable_s :std_logic:='0';
signal enable_m : std_logic:='0';
signal enable_h : std_logic:= '0';

signal U_max_s: std_logic:='0';
signal U_max_m:std_logic:='0';

signal clock_div:std_logic;
signal clock_en :std_logic;

signal en_h:std_logic:='0';
signal en_m:std_logic:='0';

begin

clock_en <= clock AND enable;

clk_div: Divisore_freq port map(reset,clock_en,clock_div);

secondi: cont_mod_60 port map(clock_div,clock_en,set,reset,set_value(5 downto 0),s,U_max_s);

en_m <= U_max_s AND clock_div;

minuti: cont_mod_60 port map(en_m,clock_en,set,reset,set_value(11 downto 6),m,U_max_m);

en_h <= U_max_s and U_max_m and clock_div;

ore: cont_mod_24 port map(en_h,clock_en,set,reset,set_value(16 downto 12),h);





end Structural;
