----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 17:39:29
-- Design Name: 
-- Module Name: priorita - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity priorita is
  Port (in1_val: in std_logic_vector(1 downto 0);
        in2_val: in std_logic_vector(1 downto 0);
        dest1: in std_logic;
        dest2: in std_logic;
        prior: out std_logic;
        sel_demux: out std_logic );
end priorita;

architecture Behavioral of priorita is

begin

sel_demux<=dest2 when (in1_val="--") or unsigned(in1_val)> unsigned(in2_val) else
           dest1 when (in2_val="--") or unsigned(in1_val) < unsigned(in2_val) else
           '-';

prior <= '1' when (in1_val="--") or unsigned(in1_val)> unsigned(in2_val) else
         '0' when (in2_val="--") or unsigned(in1_val) < unsigned(in2_val) else
         '-';
end Behavioral;