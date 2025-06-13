----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:53:40
-- Design Name: 
-- Module Name: sistema_les_tb - Behavioral
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

entity sistema_les_tb is
--  Port ( );
end sistema_les_tb;

architecture bench of sistema_les_tb is

  component sistema_les
      Port ( clock : in STD_LOGIC;
             start : in STD_LOGIC;
             reset : in STD_LOGIC;
             output : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal clock: STD_LOGIC;
  signal start: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal output: STD_LOGIC_VECTOR (3 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;
begin

  uut: sistema_les port map ( clock  => clock,
                              start  => start,
                              reset  => reset,
                              output => output );

 clocking: process
  begin
    while not stop_the_clock loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
  
  stimulus: process
  begin
  
    -- Put initialisation code here
    reset <= '1';
    start <= '0';
    
    wait for 100 ns;
    
    reset <= '0';
    start <= '1';
    wait for 10 ns;
    start <= '0';
    
    wait for 1000 ns;

    -- Put test bench stimulus code here
    stop_the_clock <= true;
    wait;

  end process;


end;