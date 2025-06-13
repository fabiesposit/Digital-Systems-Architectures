----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 14:05:06
-- Design Name: 
-- Module Name: rete_di_interconnesione_on_board - Behavioral
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

entity rete_di_interconnesione_on_board is
    Port ( clock : in STD_LOGIC;
           load_first_part : in STD_LOGIC;
           load_second_part : in STD_LOGIC;
           value8_in : in STD_LOGIC_VECTOR (0 to 7);
           value6_in : in STD_LOGIC_VECTOR (5 downto 0);
           value4_out : out STD_LOGIC_VECTOR (0 to 3));
end rete_di_interconnesione_on_board;

architecture Behavioral of rete_di_interconnesione_on_board is

signal cu_value : STD_LOGIC_VECTOR(0 to 15);
--signal reg_led : STD_LOGIC_VECTOR(0 to 3) := (others => '0');

component rete_di_interconnessione
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           a4 : in STD_LOGIC;
           a5 : in STD_LOGIC;
           a6 : in STD_LOGIC;
           a7 : in STD_LOGIC;
           a8 : in STD_LOGIC;
           a9 : in STD_LOGIC;
           a10 : in STD_LOGIC;
           a11 : in STD_LOGIC;
           a12 : in STD_LOGIC;
           a13 : in STD_LOGIC;
           a14 : in STD_LOGIC;
           a15 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s3 : in STD_LOGIC;
           s4 : in STD_LOGIC;
           s5 : in STD_LOGIC);
end component;           
     
component cu
    Port ( clock : in STD_LOGIC;
           load_first_part : in STD_LOGIC;
           load_second_part : in STD_LOGIC;
           value16_out: out STD_LOGIC_VECTOR (0 to 15);
           value8_in: in STD_LOGIC_VECTOR(0 to 7));

end component;

begin

cu1: cu port map(
    
    clock => clock,
    load_first_part => load_first_part,
    load_second_part => load_second_part,
    value8_in => value8_in,
    value16_out => cu_value
    
);

ri: rete_di_interconnessione port map(

     a0 => cu_value(0),
     a1 => cu_value(1),
     a2 => cu_value(2),
     a3 => cu_value(3),
     a4 => cu_value(4),
     a5 => cu_value(5),
     a6 => cu_value(6),
     a7 => cu_value(7),
     a8 => cu_value(8),
     a9 => cu_value(9),
     a10 => cu_value(10),
     a11 => cu_value(11),
     a12 => cu_value(12),
     a13 => cu_value(13),
     a14 => cu_value(14),
     a15 => cu_value(15),
     y0 => value4_out(0),
     y1 => value4_out(1),
     y2 => value4_out(2),
     y3 => value4_out(3),
     s0 => value6_in(0),
     s1 => value6_in(1),
     s2 => value6_in(2),
     s3 => value6_in(3),
     s4 => value6_in(4),
     s5 => value6_in(5));
        
end Behavioral;
