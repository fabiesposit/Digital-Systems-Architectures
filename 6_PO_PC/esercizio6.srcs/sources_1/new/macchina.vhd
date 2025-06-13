----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:31:06
-- Design Name: 
-- Module Name: macchina - Behavioral
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

entity macchina is
    Port ( 
           input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (3 downto 0));
end macchina;

architecture Dataflow of macchina is

begin

output(0) <= input(0) when input(0) = '0' else
             input(1) when input(0) = '1'
             else '-';

output(1) <= input(2) when input(0) = '0' else
             input(3) when input(0) = '1'
             else '-';
        
output(2) <= input(4) when input(0) = '0' else
             input(5) when input(0) = '1'
             else '-';  
             
output(3) <= input(6) when input(0) = '0' else
             input(7) when input(0) = '1'
             else '-';    
             

end Dataflow;
