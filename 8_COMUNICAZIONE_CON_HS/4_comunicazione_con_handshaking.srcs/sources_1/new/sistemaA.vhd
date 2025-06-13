----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:42:50
-- Design Name: 
-- Module Name: sistemaA - Behavioral
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

entity sistemaA is
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
end sistemaA;

architecture structural of sistemaA is
component GenericMemory is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4;
        M : integer := 8    -- Larghezza di ogni locazione in bit
    );
    port (
        clk     : in  std_logic;
        we      : in  std_logic; 
        re      : in std_logic;              
        addr    : in  std_logic_vector(addrN-1 downto 0); -- Indirizzo di memoria
        din     : in  std_logic_vector(M-1 downto 0);       -- Dato in ingresso (da scrivere)
        dout    : out std_logic_vector(M-1 downto 0)        -- Dato in uscita (letto)
    );
end component;

component GenericCounter is
generic (
        addrN : integer := 4
    );
	port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(addrN-1 downto 0));
end component;

component UC_A is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4
    );
    Port (clock: in std_logic;
          req: out std_logic;
          ack: in std_logic;
          start: in std_logic;
          read: out std_logic;
          enable: out std_logic;
          c: in std_logic_vector(addrN-1 downto 0)
     );
end component;

signal Read: std_logic;
signal Enable: std_logic;
signal addr: std_logic_vector(addrN-1 downto 0);
begin

MemA: GenericMemory generic map(N, addrN, M) port map(clock, '0', Read, addr, (others=> '0'), data);

ContmodN: GenericCounter generic map(addrN) port map(clock, reset, Enable, addr);

UC: UC_A generic map(N, addrN) port map(clock, req, ack, start, Read, Enable, addr);

end structural;
