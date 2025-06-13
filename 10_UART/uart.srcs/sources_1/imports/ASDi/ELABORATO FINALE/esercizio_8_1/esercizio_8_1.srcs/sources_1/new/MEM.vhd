----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 18:42:35
-- Design Name: 
-- Module Name: MEM - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEM_N_M is generic(N:integer := 8; M:integer := 8);
    Port ( write : in STD_LOGIC;
           clock : in STD_LOGIC;
           data_i_in : in STD_LOGIC_VECTOR (M-1 downto 0);
           address : in STD_LOGIC_VECTOR (2 downto 0));
end MEM_N_M;

architecture Behavioral of MEM_N_M is
    type mem_type is array (0 to N-1) of std_logic_vector (M-1 downto 0);
    signal mem: mem_type := (others => "00000000");
    signal entrata: std_logic_vector(M-1 downto 0);


begin
mem(conv_integer(address)) <= entrata;

process(clock)
begin
    if rising_edge(clock) then 
        if write = '1' then
            entrata <= data_i_in;
         end if;
     end if;
end process;


end Behavioral;
