----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:00:25
-- Design Name: 
-- Module Name: sistema_les - Behavioral
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

entity sistema_les is
    Port ( clock : in STD_LOGIC;
           start : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
end sistema_les;

architecture Structural of sistema_les is

component rom_n is
    Generic (n : positive := 2; -- numero di bit necessari all'indirizzamento -1 
    l: positive := 7; -- numero di locazioni - 1
    m: positive := 7); -- numero di bit per locazione -1
    Port ( read : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset: in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (n downto 0);
           output : out STD_LOGIC_VECTOR (m downto 0));
end component;

component memoria_n is
     Generic (n : positive := 2; -- numero di bit necessari all'indirizzamento -1 
              l: positive := 7; -- numero di locazioni - 1
              m: positive := 7); -- numero di bit per locazione -1
    Port ( read : in STD_LOGIC;
           write : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (m downto 0);
           output : out STD_LOGIC_VECTOR (m downto 0);
           address : in STD_LOGIC_VECTOR (n downto 0));
end component;

component counter_n is
    Generic (n : positive := 2); -- numero di bit dell'indirizzo -1
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (n downto 0));
end component;

component macchina is
    Port (
           input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component uc is
    Port ( start : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : in STD_LOGIC_VECTOR(2 downto 0);
           read_rom : out STD_LOGIC;
           read_mem : out STD_LOGIC;
           write : out STD_LOGIC;
           enable_counter : out STD_LOGIC);
end component;

signal sig_read : std_logic;
signal sig_read2 : std_logic;
signal sig_write : std_logic;
signal sig_en : std_logic;
signal sig_address : std_logic_vector(2 downto 0);
signal sig_input : std_logic_vector(7 downto 0);
signal sig_output : std_logic_vector(3 downto 0);
signal sig_output_mem : std_logic_vector(3 downto 0);

begin
rom : rom_n Generic map (n => 2, l=> 7, m => 7)
     Port map ( read => sig_read,
           clock => clock,
           reset => reset, 
           address => sig_address,
           output => sig_input );
mem : memoria_n 
           Generic map( n=> 2, l=> 7, m=> 3)
           Port map ( 
           read => sig_read2,
           write => sig_write,
           clock => clock,
           reset => reset,
           input => sig_output,
           output => sig_output_mem,
           address  => sig_address);
counter : counter_n 
    Generic map (n => 2)
    Port map( clock => clock,
           reset => reset,
           enable => sig_en,
           count => sig_address);
M :  macchina 
    Port map(
            input => sig_input,
           output => sig_output);

control_unit: uc 
    Port map ( start => start,
           clock => clock,
           reset => reset,
           count => sig_address,
           read_rom => sig_read,
           read_mem => sig_read2,
           write => sig_write,
           enable_counter => sig_en);
 
output <= sig_output;
end Structural;
