----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:26:03
-- Design Name: 
-- Module Name: registro4bit - Behavioral
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
--registro parallelo-parallelo che mantiene il valore del moltiplicando Y
entity registro4bit is 
	port( A: in std_logic_vector(3 downto 0);
		  clk, res, load: in std_logic;
		  B: out std_logic_vector(3 downto 0));
end registro4bit;

architecture behavioural of registro4bit is
	signal temp_b: std_logic_vector(3 downto 0);
	begin
		
	R_PP: process(clk)
		begin
		if(clk'event and clk='1') then
		  if(res='1') then
			 temp_b<= (others=>'0');		   
		  else
		    if(load='1') then
			   temp_b<=A;
	        end if;
	      end if;
	    end if;
	end process;
	B<=temp_b;
end behavioural;