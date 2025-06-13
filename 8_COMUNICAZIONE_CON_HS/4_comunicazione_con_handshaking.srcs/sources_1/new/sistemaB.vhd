----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:55:57
-- Design Name: 
-- Module Name: sistemaB - structural
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

entity sistemaB is
    generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4;
        M : integer := 8    -- Larghezza di ogni locazione in bit
    );
    Port (clock, reset: in std_logic;
          req: in std_logic;
          data: in std_logic_vector(M-1 downto 0);
          ack: out std_logic );
end sistemaB;

architecture structural of sistemaB is
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

Component registro is generic ( N : integer:=8);
	port( A: in std_logic_vector(N-1 downto 0);
		  clk, res, load: in std_logic;
		  B: out std_logic_vector(N-1 downto 0));
end component;

component GenericCounter is
generic (
        addrN : integer := 4
    );
	port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(addrN-1 downto 0));
end component;

component UC_B is
generic (
        N : integer := 16;  -- Numero di locazioni di memoria
        addrN : integer := 4
    );
    Port (clock: in std_logic;
          req: in std_logic;
          ack: out std_logic;
          read: out std_logic;
          write: out std_logic;
          enable: out std_logic;
          en_r: out std_logic;
          c: in std_logic_vector(addrN-1 downto 0)
     );
end component;

component RCA_Nbit is
generic (N: natural range 0 to 32 := 8); 
	port(
		OP_A_RCA: in std_logic_vector(N-1 downto 0);
		OP_B_RCA: in std_logic_vector(N-1 downto 0);
		CIN_RCA: in std_logic;
		
		S_RCA: out std_logic_vector(N-1 downto 0);
		COUT_RCA: out std_logic;
		OV: out std_logic
	);
end component;

signal Read: std_logic;
signal Write: std_logic;
signal Enable: std_logic;
signal addr: std_logic_vector(addrN-1 downto 0);
signal somma: std_logic_vector(M-1 downto 0);
signal secondoOP: std_logic_vector(M-1 downto 0);
signal ov: std_logic;
signal cout: std_logic;
signal primoOP: std_logic_vector(M-1 downto 0);
signal en_r: std_logic;


begin

reg_OP_A: registro port map(data,clock,reset,en_r,primoOP);

MemB: GenericMemory generic map(N, addrN, M) port map(clock, Write, Read, addr, somma, secondoOP);

ContmodN: GenericCounter generic map(addrN) port map(clock, reset, Enable, addr);

UC: UC_B generic map(N, addrN) port map(clock, req, ack, Read, Write, Enable,en_r, addr);

sommatore: RCA_Nbit generic map(M) port map(primoOP, secondoOP, '0', somma, cout, ov);

end structural;