----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 18:03:22
-- Design Name: 
-- Module Name: rete4_4 - structural
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

entity rete4_4 is
    Port (A_in: in std_logic_vector(5 downto 0);
          B_in: in std_logic_vector(5 downto 0);
          C_in: in std_logic_vector(5 downto 0);
          D_in: in std_logic_vector(5 downto 0);
          A_out: out std_logic_vector(5 downto 0);
          B_out: out std_logic_vector(5 downto 0);
          C_out: out std_logic_vector(5 downto 0);
          D_out: out std_logic_vector(5 downto 0) );
end rete4_4;

architecture structural of rete4_4 is
component switch is
generic(livello: integer);
  Port (in1: in std_logic_vector(5 downto 0);
          in2: in std_logic_vector(5 downto 0);
          out1: out std_logic_vector(5 downto 0);
          out2: out std_logic_vector(5 downto 0) );
end component;

signal int1: std_logic_vector(5 downto 0);
signal int2: std_logic_vector(5 downto 0);
signal int3: std_logic_vector(5 downto 0);
signal int4: std_logic_vector(5 downto 0);

begin

s1_1: switch generic map(0) port map(A_in, C_in, int1, int2);
s1_2: switch generic map(0) port map(B_in, D_in, int3, int4);

s2_1: switch generic map(1) port map(int1, int3, A_out, B_out);
s2_2: switch generic map(1) port map(int2, int4, C_out, D_out);
     	

end structural;
