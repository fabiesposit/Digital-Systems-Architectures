----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2025 17:13:14
-- Design Name: 
-- Module Name: TB_finalsystem - Behavioral
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
-- Generation date : 21.1.2025 16:12:37 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_finalsystem is
end tb_finalsystem;

architecture tb of tb_finalsystem is

    component finalsystem
        port (clockA : in std_logic;
              clockB : in std_logic;
              resetA : in std_logic;
              resetB : in std_logic;
              start  : in std_logic);
    end component;

    signal clockA : std_logic;
    signal clockB : std_logic;
    signal resetA : std_logic;
    signal resetB : std_logic;
    signal start  : std_logic;

    constant TbPeriod : time := 30 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    constant TbPeriod2 : time := 10 ns; -- EDIT Put right period here
    signal TbClock2 : std_logic := '0';
    signal TbSimEnded2 : std_logic := '0';

begin

    dut : finalsystem
    port map (clockA => clockA,
              clockB => clockB,
              resetA => resetA,
              resetB => resetB,
              start  => start);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    TbClock2 <= not TbClock2 after TbPeriod2/2 when TbSimEnded2 /= '1' else '0';


    -- EDIT: Check that clockA is really your main clock signal
    clockA <= TbClock;
    clockB <= TbClock2;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        resetA <= '0';
        resetB <= '0';
        start <= '0';

        -- EDIT Add stimuli here
        wait for 10 ns;
        start<='1';
        wait for TbPeriod;
        start <= '0';
     
        wait for 100000 ns;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_finalsystem of tb_finalsystem is
    for tb
    end for;
end cfg_tb_finalsystem;