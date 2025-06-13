----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 15:47:29
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity myFA is
	port(
		OP_A: in std_logic;
		OP_B: in std_logic;
		CIN: in std_logic;
	
		S: out std_logic;
		COUT: out std_logic
	);
end myFA;

architecture dataflow of myFA is
begin
	S <= (OP_A xor OP_B) xor CIN;
	COUT <= (OP_A and OP_B) or (CIN and(OP_A or OP_B));
end dataflow;

