----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2024 12:06:52
-- Design Name: 
-- Module Name: rom_m - Behavioral
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

entity rom_m is
    Port ( s : in STD_LOGIC_VECTOR(3 downto 0);
           reset : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR(3 downto 0));
end rom_m;


architecture Behavioral of rom_m is

component rom 
Generic ( n: positive := 3; -- selezione 
              l : positive := 15; -- numero di locazioni
              m : positive :=7 -- lunghezza dato
    );
Port ( 
           reset : in STD_LOGIC;
           selezione : in STD_LOGIC_VECTOR (3 downto 0);
           dato : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component machine
     Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal u0: std_logic_vector(7 downto 0);

begin

    mem: rom 
    generic map(
              n => 3,
              l => 15, 
              m => 7
    )
    port map(

        reset => reset,
        selezione => s,
        dato => u0
    
);

    m: machine port map(  
        data_in => u0,
        y => y
    );
end Behavioral;
