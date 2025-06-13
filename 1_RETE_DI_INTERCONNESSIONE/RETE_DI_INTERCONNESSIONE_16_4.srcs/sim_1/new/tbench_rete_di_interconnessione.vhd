----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 12:12:04
-- Design Name: 
-- Module Name: tbench_rete_di_interconnessione - Behavioral
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

entity tbench_rete_di_interconnessione is
--  Port ( );
end tbench_rete_di_interconnessione;

architecture Behavioral of tbench_rete_di_interconnessione is

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

 signal input: STD_LOGIC_VECTOR(0 to 15) := (others => '0');
 signal control: STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
 signal output: STD_LOGIC_VECTOR(0 to 3) := (others => '0');

begin

    uut: rete_di_interconnessione port map ( a0  => input(0),
                                           a1  => input(1),
                                           a2  => input(2),
                                           a3  => input(3),
                                           a4  => input(4),
                                           a5  => input(5),
                                           a6  => input(6),
                                           a7  => input(7),
                                           a8  => input(8),
                                           a9  => input(9),
                                           a10 => input(10),
                                           a11 => input(11),
                                           a12 => input(12),
                                           a13 => input(13),
                                           a14 => input(14),
                                           a15 => input(15),
                                           y0  => output(0),
                                           y1  => output(1),
                                           y2  => output(2),
                                           y3  => output(3),
                                           s0  => control(0),
                                           s1  => control(1),
                                           s2  => control(2),
                                           s3  => control(3),
                                           s4  => control(4),
                                           s5  => control(5) 
                                           );
                                           
        stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
    
    input <= "0101111101011110";
    
    control <= "001100"; -- 0 PARLA CON 12
    
    wait for 10 ns;
    
    control <= "010000"; -- 1 PARLA CON 0

    wait for 10 ns;
    
    control <= "110110"; -- 3 PARLA CON 6
    
     wait for 10 ns;
    
    control <= "100110"; -- 2 PARLA CON 1


    -- Put test bench stimulus code here

    wait;
  end process;
end Behavioral;



