----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.02.2025 16:21:28
-- Design Name: 
-- Module Name: shift_register_tb - Behavioral
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

entity shift_register_tb is
--  Port ( );
end shift_register_tb;

architecture bench of shift_register_tb is

  component shift_register
      Generic (n: positive:= 4);
      Port ( x0 : in STD_LOGIC;
             s0 : in STD_LOGIC;
             s1 : in STD_LOGIC;
             y : out STD_LOGIC_VECTOR (n-1 downto 0);
             clock : in STD_LOGIC;
             reset : in STD_LOGIC);
  end component;

  signal x0: STD_LOGIC;
  signal s0: STD_LOGIC;
  signal s1: STD_LOGIC;
  signal y: STD_LOGIC_VECTOR (4 downto 0);
  signal clock: STD_LOGIC;
  signal reset: STD_LOGIC;

 constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;
begin

 clocking: process
  begin
    while not stop_the_clock loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
  -- Insert values for generic parameters !!
  uut: shift_register generic map ( n     => 5 )
                         port map ( x0    => x0,
                                    s0    => s0,
                                    s1    => s1,
                                    y     => y,
                                    clock => clock,
                                    reset => reset );

  stimulus: process
  begin
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
     
    s0 <= '1';
    s1 <= '0';
    x0 <= '1';
    
    wait for 10 ns;
    x0 <= '0';
    wait for 10 ns;
    
    s0 <= '1';
    s1 <= '1';
    x0 <= '1';
    
    wait for 10 ns;
    x0 <= '1';
    wait for 10 ns;
    
    s0 <= '0';
    s1 <= '1';
    x0 <= '1';
    
    wait for 10 ns;
    
    s0 <= '0';
    s1 <= '0';
    x0 <= '0';

    wait for 10 ns;
    
    x0 <= '1';

    stop_the_clock <= true;
    wait;
  end process;

end bench;
