----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 10:33:59
-- Design Name: 
-- Module Name: UO - Behavioral
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

entity UO is
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
end UO;

architecture Behavioral of UO is

component cont_mod8 is
	port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(2 downto 0));
end component;

component adder_sub is
	port( X, Y: in std_logic_vector(7 downto 0);
		  cin: in std_logic;
		  Z: out std_logic_vector(7 downto 0);
		  cout: out std_logic);		  
end component;

component mux_21 is
    generic (width : integer range 0 to 17 := 8);
	port( x0, x1: in std_logic_vector(width-1 downto 0); 
		  s: in std_logic;
		  y: out std_logic_vector(width-1 downto 0));
end component;

component registro8 is 
	port( A: in std_logic_vector(7 downto 0);
		  clk, res, load: in std_logic;
		  B: out std_logic_vector(7 downto 0));
end component;

component shift_register is
	port( parallel_in: in std_logic_vector(16 downto 0); 
	      serial_in: in std_logic;
		  clock, reset, load, shift: in std_logic;
		  parallel_out: out std_logic_vector(16 downto 0));		  
end component;

signal addendo_x : std_logic_vector(7 downto 0);
signal addendo_y : std_logic_vector(7 downto 0);
signal result_z: std_logic_vector(7 downto 0);
signal carry_out: std_logic;
signal AQ_init : std_logic_vector(16 downto 0);
signal AQ_sum_in: std_logic_vector(16 downto 0);
signal AQ_out: std_logic_vector(16 downto 0);
signal AQ_in: std_logic_vector(16 downto 0);
signal moltiplicando: std_logic_vector(7 downto 0);
signal Q16: std_logic;

begin

contatore : cont_mod8 
	port map( clock => clock, reset => reset, count_in => enable_c, count => count);
	
addizionatore: adder_sub 
    port map ( X => addendo_x, Y => addendo_y, cin => subtract,
		  Z => result_z,
		  cout => carry_out); 

AQ_init <= "00000000"&X&'0';
AQ_sum_in <= result_z & AQ_out(8 downto 0);

mux_aq: mux_21
    generic map(width => 17)
	port map( x0 => AQ_init ,
	      x1 => AQ_sum_in,
		  s => selAQ,
		  y => AQ_in);
		  
molt : registro8 
	port map( A => Y,
		  clk => clock, res => reset, load => loadM,
		  B => addendo_y); 

AQ: shift_register 
	port map( parallel_in => AQ_in,
	      serial_in => Q16,
		  clock => clock, reset => reset, load => loadAQ , shift => shift,
		  parallel_out => AQ_out);

Q16 <= AQ_out(16);

addendo_x <= AQ_out(16 downto 9);
output <= AQ_out(16 downto 0);

end Behavioral;
