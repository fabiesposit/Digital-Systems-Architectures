----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2024 13:34:05
-- Design Name: 
-- Module Name: TB_riconoscitore - Behavioral
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


-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 24.11.2024 12:30:05 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_RiconoscitoreDiSequenze is
end tb_RiconoscitoreDiSequenze;

architecture tb of tb_RiconoscitoreDiSequenze is

    component RiconoscitoreDiSequenze
        port (clock : in STD_LOGIC;
           reset: in STD_LOGIC;
           Enable: in STD_LOGIC;
           Mode : in STD_LOGIC;
           i : in STD_LOGIC;
           y : out STD_LOGIC);
    end component;

    signal Ab   : std_logic;
    signal reset : std_logic;
    signal Enable : std_logic;
    signal Mode : std_logic;
    signal i    : std_logic;
    signal y    : std_logic;
    
    constant period : time := 10 ns;

begin
 
    uut : RiconoscitoreDiSequenze
    port map (clock   => Ab,
              reset => reset,
              Enable => Enable,  
              Mode => Mode,
              i    => i,
              y    => y);
              
    CLK_process :process
    begin
		Ab <= '0';
		wait for period/2;
		Ab <= '1';
		wait for period/2;
    end process;       

    stimuli : process
    begin
       -- hold reset state for 100 ns.
      reset <= '1';
      wait for 100 ns;
      reset <= '0';
      
      --modalita
      mode <= '0';
      wait for 50 ns;	

      -- insert stimulus here 
      --1011101
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='0';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='0';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
        wait for 50 ns;
        
        mode <= '1';
        wait for 50 ns;
        
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='0';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='0';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
		wait for 30 ns;
		
		i<='1';
		
		Enable <='1';
		wait for 10 ns;
		Enable <='0';
		
        wait;
        
       
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

