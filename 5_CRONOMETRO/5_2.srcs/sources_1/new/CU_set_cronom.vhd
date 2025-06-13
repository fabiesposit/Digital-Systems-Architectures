----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2025 17:38:17
-- Design Name: 
-- Module Name: CU_set_cronom - Behavioral
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

entity CU_set_cronom is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           BTN : in STD_LOGIC;
           EN: out STD_LOGIC;
           SET : out STD_LOGIC;
           en_h : out STD_LOGIC;
           en_m_s : out STD_LOGIC );
end CU_set_cronom;

architecture Behavioral of CU_set_cronom is
type stato is (CaricaOre,CaricaMinutiSecondi,Start,SetState,Run);
signal stato_corrente:stato := CaricaOre;
begin



process(clk)
    begin
    
    if rising_edge(clk) then
        if reset = '1' then
           set <='0'; --segnale che setta il cronometro
           EN <= '1'; --segnale che abilita cronometro          
           en_h<= '0'; --segnale che abilita registro dove salvare valore degli switch
           en_m_s<= '0';
           stato_corrente <= CaricaOre;
        else
            case stato_corrente is
                when CaricaOre =>
                    EN <= '0';
                    set <= '0';
                    en_h<= '0'; 
                    en_m_s<= '0';
                    if btn = '0' then
                        stato_corrente <= CaricaOre;

                    else
                        stato_corrente <= CaricaMinutiSecondi;    
                    end if;
                when CaricaMinutiSecondi=>
                    EN <= '0';
                    set <= '0';
                    en_h<= '1'; 
                    en_m_s<= '0';
                    if btn = '0' then
                        stato_corrente <= CaricaMinutiSecondi;

                    else
                        stato_corrente <= Start;    
                    end if;
                when Start=>
                    EN <= '0';
                    set <= '0';
                    en_h<= '0'; 
                    en_m_s<= '1';
                    
                    if btn = '0' then
                        stato_corrente <= Start;

                    else
                        stato_corrente <= SetState;    
                    end if;
                when SetState =>
                    EN <= '0';
                    set <= '1';
                    en_h<= '0'; 
                    en_m_s<= '0';
                    stato_corrente <= Run;
                when Run =>
                    EN <= '1';
                    set <= '0';
                    en_h<= '0'; 
                    en_m_s<= '0';   
                    if btn = '1' or reset = '1' then
                        stato_corrente <= CaricaOre;
                    else
                        stato_corrente <= Run;    
                    end if;
                    
                end case;
           end if;
       end if;     
    end process;


end Behavioral;
