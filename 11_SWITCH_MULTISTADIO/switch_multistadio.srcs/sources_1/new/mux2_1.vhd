----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 17:26:51
-- Design Name: 
-- Module Name: mux2_1 - Behavioral
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

entity mux2_1 is
    generic(N: integer);
	port( 	a0 	: in std_logic_vector(N-1 downto 0);
			a1 	: in std_logic_vector(N-1 downto 0);
			s 	: in STD_LOGIC;
			y 	: out std_logic_vector(N-1 downto 0)
	);
		
end mux2_1;


-- Quando si definiscono diverse architetture per la stessa entity,
-- di default viene sintetizzata l'ultima in ordine di definizione;
-- nel testbench è possibile specificare quale architettura si vuole simulare



-- Utilizzo del costrutto di conditional signal assignment.
-- qui è come se stessi specificando la tabella di verità della funzione y
architecture dataflow_v1 of mux2_1 is
	
	begin
		y 	<= 	a0 when s = '0' else	
				a1 when s = '1' else
				(others=>'-'); --specifico cosa succede quando s non assume valore 0 o 1
				-- perchè s è uno STD_LOGIC, non un BIT
				
		

end dataflow_v1;
