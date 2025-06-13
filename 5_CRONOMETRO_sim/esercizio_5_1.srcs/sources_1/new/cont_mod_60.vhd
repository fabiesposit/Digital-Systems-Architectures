----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2025 11:16:22
-- Design Name: 
-- Module Name: cont_mod_60 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cont_mod_60 is
    Port ( en : in STD_LOGIC;
           clock : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           set_value : in STD_LOGIC_VECTOR (5 downto 0);
           count : out STD_LOGIC_VECTOR (5 downto 0);
           U_max : out STD_LOGIC );
end cont_mod_60;

architecture Behavioral of cont_mod_60 is
signal counter: std_logic_vector(5 downto 0):= "000000";

begin
count <= counter;
--quando il contatore raggiunge il valore masismo (59), l'uscita U_max si deve alzare concorrentemente
--ciò non deve essere fatto all'interno del process altrimenti ho ritardi dovuti alle assegnazioni nel process
--facendo ciò non appena arriva a 59 l'uscita si alza e viene vista dagli altri contatori 
--che si aggiornano a loro volta.
U_max <= counter(5) and counter(4) and counter(3) and not counter(2) and counter(1) and counter(0);

process(clock)
begin
    if rising_edge(clock)then
           
        if reset = '1' then
            counter <= "000000";
       elsif set = '1' then
                 counter <= set_value;               
        elsif en = '1' then            
                if counter = "111011" then
                    counter<="000000";                          
                else
                    counter <= std_logic_vector(unsigned(counter)+1);               
                end if;
        end if;
        
    
    
    end if;
end process;

end Behavioral;
