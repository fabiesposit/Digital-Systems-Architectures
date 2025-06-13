----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 17:07:59
-- Design Name: 
-- Module Name: finalsystem - structural
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

entity finalsystem is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4;
        M : integer := 8    -- Larghezza di ogni locazione in bit
    );
  Port (clockA: in std_logic;
        clockB: in std_logic;
        resetA: in std_logic;
        resetB: in std_logic;
        start: in std_logic );
end finalsystem;

architecture structural of finalsystem is
component sistemaA is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4;
        M : integer := 8    -- Larghezza di ogni locazione in bit
    );
    Port (clock, reset: in std_logic;
          start: in std_logic;
          req: out std_logic;
          data: out std_logic_vector(M-1 downto 0);
          ack: in std_logic );
end component;

component sistemaB is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4;
        M : integer := 8    -- Larghezza di ogni locazione in bit
    );
    Port (clock, reset: in std_logic;
          req: in std_logic;
          data: in std_logic_vector(M-1 downto 0);
          ack: out std_logic );
end component;

signal req: std_logic;
signal ack: std_logic;
signal data:  std_logic_vector(M-1 downto 0);

begin

A: sistemaA generic map(N, addrN, M) port map(clockA, resetA, start, req, data, ack);
B: sistemaB generic map(N, addrN, M) port map(clockB, resetB, req, data, ack);


end structural;
