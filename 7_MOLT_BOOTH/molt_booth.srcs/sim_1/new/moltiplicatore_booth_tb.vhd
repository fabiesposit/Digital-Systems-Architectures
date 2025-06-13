----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2025 11:52:24
-- Design Name: 
-- Module Name: moltiplicatore_booth_tb - Behavioral
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

entity moltiplicatore_booth_tb is
--  Port ( );
end moltiplicatore_booth_tb;

architecture bench of moltiplicatore_booth_tb is

  component moltiplicatore_booth
      Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
             Y : in STD_LOGIC_VECTOR (7 downto 0);
             start: in STD_LOGIC;
             clock : in STD_LOGIC;
             reset : in STD_LOGIC;
             Z : out STD_LOGIC_VECTOR (15 downto 0);
             stop_cu: out STD_LOGIC);
  end component;

  
  signal inputx, inputy: std_logic_vector(7 downto 0);
  signal start: STD_LOGIC;
  signal clock: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal Z: STD_LOGIC_VECTOR (15 downto 0);
  signal stop_cu: STD_LOGIC;
  
  constant clk_period : time := 20 ns;
    
    signal end_sim : std_logic := '0';

begin

  uut: moltiplicatore_booth port map ( X       => inputX,
                                       Y       => inputY,
                                       start   => start,
                                       clock   => clock,
                                       reset   => reset,
                                       Z       => Z,
                                       stop_cu => stop_cu );

  clk_process : process
     begin
        while (end_sim = '0') loop
            clock<= '1';
            wait for clk_period/2;
            clock <= '0';
            wait for clk_period/2;
        end loop;
        wait;
     end process;
   
  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 100 ns;
		
		 reset<='1';
		 wait for 20 ns;
		 reset<='0';
		
		 -- -------------------------------------   operazione numero 1:
		 -- 15*3=45 (002D)
		 -- -10 * 5
		 -- 11110110
		 inputx<="11110010";  
		 inputy<="11111010";  
		 	 
		 -- start deve essere visto da clk_div: poichè sarà generato dal button debouncer si aggiungerà anche il clk_div
		 -- al button debouncer e il segnale di start deve durare quanto il periodo del clk rallentato
		 wait for 40 ns;
		 start<='1';
		 wait for 20 ns;
		 start<='0';
		 -- aspetto fine operazione, ci vogliono circa 500ns
		 wait for 600ns;

    -- Put test bench stimulus code here

    wait;
  end process;


end;