----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 16:05:34
-- Design Name: 
-- Module Name: GenericMemory - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity GenericMemory is
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
end entity GenericMemory;

architecture Behavioral of GenericMemory is
    type memory_array is array (0 to N-1) of std_logic_vector(M-1 downto 0);

    -- Inizializzazione della memoria con valori da 1 a N
    function init_memory(n : integer; m : integer) return memory_array is
        variable mem_init : memory_array := (others => (others => '0'));
    begin
        for i in 0 to n-1 loop
            mem_init(i) := std_logic_vector(to_unsigned(i + 1, m));
        end loop;
        return mem_init;
    end function;
    
    signal mem : memory_array := init_memory(N, M);

begin
    process(clk)
    begin
        if (clk'event and clk='1') then
            if we = '1' then
                mem(to_integer(unsigned(addr))) <= din;  -- Scrittura
            end if;
            if re = '1' then
                dout <= mem(to_integer(unsigned(addr)));    -- Lettura
            end if;
        end if;
    end process;

end architecture Behavioral;
