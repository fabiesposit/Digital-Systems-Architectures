----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:58:30
-- Design Name: 
-- Module Name: TB_A_hs_B - Behavioral
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
-- Generation date : 23.1.2025 15:57:50 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_A_hs_B is
end tb_A_hs_B;

architecture tb of tb_A_hs_B is

    component A_hs_B
        port (clockA : in std_logic;
              resetA : in std_logic;
              clockB : in std_logic;
              resetB : in std_logic;
              start  : in std_logic);
    end component;

    signal clockA : std_logic;
    signal resetA : std_logic;
    signal clockB : std_logic;
    signal resetB : std_logic;
    signal start  : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    constant TbPeriod2 : time := 10 ns; -- EDIT Put right period here
    signal TbClock2 : std_logic := '0';
    signal TbSimEnded2 : std_logic := '0';


begin

    dut : A_hs_B
    port map (clockA => clockA,
              resetA => resetA,
              clockB => clockB,
              resetB => resetB,
              start  => start);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod when TbSimEnded /= '1' else '0';
    TbClock2 <= not TbClock2 after TbPeriod2/4 when TbSimEnded2 /= '1' else '0';

    -- EDIT: Check that clockA is really your main clock signal
    clockA <= TbClock;
    clockB <= TbClock2;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        resetA <= '1';
        resetB <= '1';
        start <= '0';
        
        wait for 30 ns;
        
        resetA <= '0';
        resetB <= '0';
        
        wait for 30 ns;
        start <= '1';
        wait for TbPeriod;
        start <= '0';
        

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_A_hs_B of tb_A_hs_B is
    for tb
    end for;
end cfg_tb_A_hs_B;

