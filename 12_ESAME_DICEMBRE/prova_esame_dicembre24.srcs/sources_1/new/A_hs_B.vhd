----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:52:46
-- Design Name: 
-- Module Name: A_hs_B - structural
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

entity A_hs_B is
  Port (clockA: in std_logic;
        resetA: in std_logic;
        clockB: in std_logic;
        resetB: in std_logic;
        start: in std_logic
     );
end A_hs_B;

architecture structural of A_hs_B is
component sistemaA is
Port (clock, reset: in std_logic;
        data: out std_logic_vector(3 downto 0);
        start: in std_logic;
        req: out std_logic;
        ack: in std_logic );
end component;

component sistemaB is
  Port (clock, reset: in std_logic;
        start: in std_logic;
        req: in std_logic;
        ack: out std_logic;
        data: in std_logic_vector(3 downto 0) );
end component;

signal req: std_logic;
signal ack: std_logic;
signal data: std_logic_vector(3 downto 0);

begin

A: sistemaA port map(clockA, resetA, data, start, req, ack);

B: sistemaB port map(clockB, resetB,start, req, ack, data);


end structural;
