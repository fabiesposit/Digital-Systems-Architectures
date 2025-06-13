----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2024 16:24:15
-- Design Name: 
-- Module Name: rom_m_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_m_tb is
--  Port ( );
end rom_m_tb;

architecture Behavioral of rom_m_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component rom_m is
        Port ( s : in STD_LOGIC_VECTOR(3 downto 0);
               reset : in STD_LOGIC;
               y : out STD_LOGIC_VECTOR(3 downto 0));
    end component;

    -- Signals to connect to the UUT
    signal s     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal reset : STD_LOGIC := '0';
    signal y     : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: rom_m Port map (
        s => s,
        reset => reset,
        y => y
    );


    -- Stimulus process
    stimulus_process: process
    begin
        -- Step 1: Reset the system
        report "Starting simulation...";
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        
        report "Testing random values...";
        s <= "0001";
        wait for 10 ns;
        s <= "1100";
        wait for 10 ns;
        s <= "1111";
        wait for 10 ns;

        -- Simulation complete
        report "Simulation complete!";
        wait;
    end process;

end Behavioral;