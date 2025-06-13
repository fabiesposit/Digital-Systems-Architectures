----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:43:47
-- Design Name: 
-- Module Name: uc - Behavioral
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

entity uc is
    Port ( start : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : in STD_LOGIC_VECTOR(2 downto 0);
           read_rom : out STD_LOGIC;
           read_mem : out STD_LOGIC;
           write : out STD_LOGIC;
           enable_counter : out STD_LOGIC);
end uc;

architecture Behavioral of uc is

type stato is (idle, avvia_lettura, lettura_effettuata, avvia_scrittura,scrittura_effettuata);

signal stato_corrente : stato := idle;

begin

process(clock)
begin

if rising_edge(clock) then

    if reset = '1' then       
        stato_corrente <= idle;
    else
    
        case stato_corrente is
            
            when idle => 
                enable_counter <= '0';        
                if start = '1' then                
                    stato_corrente <= avvia_lettura;
                else
                    stato_corrente <= idle;               
                end if;
        
            when avvia_lettura =>                
                read_rom <= '1';
                enable_counter <= '0';               
                stato_corrente <= lettura_effettuata;
                
           when lettura_effettuata => 
                
                read_rom <= '0';
                stato_corrente <= avvia_scrittura;
 
           when avvia_scrittura =>
                
                write <= '1';
                stato_corrente <= scrittura_effettuata;
          
           when scrittura_effettuata =>
                
                write <= '0';     
                enable_counter <= '1'; 
                            
--               stato_corrente <= idle; -- MODIFICA PER LA SINTESI SU BOARD
               
                if unsigned(count)<7 then                    
                    stato_corrente <= avvia_lettura;
                else                   
                    stato_corrente <= idle;
                end if;
        end case;
    end if;

end if;

end process;
end Behavioral;
