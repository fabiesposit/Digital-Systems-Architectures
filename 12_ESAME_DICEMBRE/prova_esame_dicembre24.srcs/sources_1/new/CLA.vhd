----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:50:32
-- Design Name: 
-- Module Name: CLA - Behavioral
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

entity CLA is
generic(N : integer := 4);
    Port (A: in std_logic_vector(N-1 downto 0);
          B: in std_logic_vector(N-1 downto 0);
          c0: in std_logic;
          C: out std_logic_vector(N-1 downto 0);
          carry: out std_logic      
          );
end CLA;

architecture Behavioral of CLA is
signal P: std_logic_vector(N-1 downto 0);
signal G: std_logic_vector(N-1 downto 0);
signal buffc: std_logic_vector(N-1 downto 0);

begin
    P(0) <= A(0) xor B(0);
    P(1) <= A(1) xor B(1);
    P(2) <= A(2) xor B(2);
    P(3) <= A(3) xor B(3);

    G(0) <= A(0) and B(0);
    G(1) <= A(1) and B(1);
    G(2) <= A(2) and B(2);
    G(3) <= A(3) and B(3);

    buffc(0)<=c0;
    buffc(1) <= G(0) or (P(0) and buffc(0));
    buffc(2) <= G(1) or (P(1) and buffc(1));
    buffc(3) <= G(2) or (P(2) and buffc(2));
    Carry <= G(3) or (P(3) and buffc(3));
    
    c<=buffc;

end Behavioral;
