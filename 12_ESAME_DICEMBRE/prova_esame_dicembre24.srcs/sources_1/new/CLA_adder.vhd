----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:00:38
-- Design Name: 
-- Module Name: CLA_adder - Behavioral
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

entity CLA_adder is
generic(N : integer := 4);
    Port (A: in std_logic_vector(N-1 downto 0);
          B: in std_logic_vector(N-1 downto 0);
          c0: in std_logic;
          carry: out std_logic;
          Sum: out std_logic_vector(N-1 downto 0)       
          );
end CLA_adder;

architecture structural of CLA_adder is
component myFA is
port(
		OP_A: in std_logic;
		OP_B: in std_logic;
		CIN: in std_logic;
	
		S: out std_logic;
		COUT: out std_logic
	);
end component;

component CLA is
generic(N : integer := 4);
    Port (A: in std_logic_vector(N-1 downto 0);
          B: in std_logic_vector(N-1 downto 0);
          c0: in std_logic;
          C: out std_logic_vector(N-1 downto 0);
          carry: out std_logic      
          );
end component;

signal FAcarry: std_logic_vector(N-1 downto 0);
signal C_cla: std_logic_vector(N-1 downto 0);

begin

FA_0_to_N_1: for i in 0 to N-1 generate
		    
            FA: myFA port map(
            OP_A => A(i),
            OP_B => B(i),
            CIN => C_cla(i),
            S => Sum(i),
            COUT => FAcarry(i)
            );	    
            
	end generate FA_0_to_N_1;

carry_look_ahead: CLA generic map(4) port map(A, B, c0, C_cla, carry);

end structural;
