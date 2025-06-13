----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.02.2025 09:32:54
-- Design Name: 
-- Module Name: riconoscitore - Behavioral
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


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2024 13:12:45
-- Design Name: 
-- Module Name: RiconoscitoreDiSequenze - Behavioral
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

entity RiconoscitoreDiSequenze is
     Port ( A : in STD_LOGIC;
           reset: in STD_LOGIC;
           Mode : in STD_LOGIC;
           i : in STD_LOGIC;
           y : out STD_LOGIC);
end RiconoscitoreDiSequenze;

architecture Behavioral of RiconoscitoreDiSequenze is
type stato is (S0, S1, S2, S3, S4);
signal stato_corrente0 : stato := S0;
signal stato_corrente1 : stato := S0;


begin
--RICONOSCITORE DI SEQUENZE PARZIALMENTE SOVRAPPOSTO 101 MODE1
--Sul fronte di clock, vedo se il segnale di button è alto, in tal caso acquisisco l'ingresso e cambio stato
stato_uscita_mem1: process(a)
	begin
	if(reset ='1') then
	   stato_corrente1<=S0;
	elsif(a'event and a='1') then
	   if(Mode = '0') then
	       stato_corrente1 <= S0;
	   elsif(Mode = '1') then
           case stato_corrente1 is
                
                when S0 =>
                    if( i = '0' ) then
                        stato_corrente1 <= S0;
                    else 
                        stato_corrente1 <= S1;
                    end if;
                 when S1 =>
                    if( i = '0' ) then
                        stato_corrente1 <= S2;
                    else
                        stato_corrente1 <= S1;
                    end if;
                when S2 =>
                    stato_corrente1 <= S0;
                when others =>
                        stato_corrente1 <= S0;
            end case;
          end if;
       end if;
end process;

--RICONOSCITORE DI SEQUENZE NON SOVRAPPOSTE 101 MODE 0
--Sul fronte di clock, vedo se il segnale di button è alto, in tal caso acquisisco l'ingresso e cambio stato
stato_uscita_mem0: process(a)
	begin
	if(reset ='1') then
	   stato_corrente0<=S0;
	elsif(a'event and a='1') then
	   if( Mode = '1') then
	       stato_corrente0 <= S0;
	   elsif(Mode = '0') then
	   	case stato_corrente0 is
			when S0 =>
				if( i = '0' ) then
					stato_corrente0 <= S2;
				else 
					stato_corrente0 <= S1;
				end if;
			when S1 =>
				if( i = '0' ) then
					stato_corrente0 <= S3;
				else
					stato_corrente0 <= S4;
				end if;
			when S2 =>
				if( i = '0' ) then
					stato_corrente0 <= S4;
				else
					stato_corrente0 <= S4;
				end if;
            when S3 =>
				if( i = '0' ) then
					stato_corrente0 <= S0;
				else
					stato_corrente0 <= S0;
				end if;
			when S4 =>
				if( i = '0' ) then
					stato_corrente0 <= S0;
				else
					stato_corrente0 <= S0;
				end if;       
			when others =>
			        stato_corrente0 <= S0;
		end case;
		end if;
	end if;
end process;


process(a)
begin
    if rising_edge(a) then
       if(reset ='1') then
           Y <= '0';  
       elsif( Mode = '1') then
            if(stato_corrente1 = S2 and i = '1') then
                Y <= '1';
            else
                Y <= '0';
            end if;
       else
            if(stato_corrente0 = S3 and i = '1') then
                Y <= '1';
            else
                Y <= '0';
            end if;
        end if;   
    end if;
end process;

end Behavioral;

