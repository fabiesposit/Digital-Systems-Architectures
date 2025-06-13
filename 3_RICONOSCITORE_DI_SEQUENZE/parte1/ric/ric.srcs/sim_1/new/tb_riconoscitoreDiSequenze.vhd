----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.02.2025 09:42:08
-- Design Name: 
-- Module Name: tb_riconoscitoreDiSequenze - Behavioral
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
-- Generation date : 3.2.2025 08:41:31 UTC

--library ieee;
--use ieee.std_logic_1164.all;

--entity tb_RiconoscitoreDiSequenze is
--end tb_RiconoscitoreDiSequenze;

--architecture tb of tb_RiconoscitoreDiSequenze is

--    component RiconoscitoreDiSequenze
--        port (Ab    : in std_logic;
--              reset : in std_logic;
--              Mode  : in std_logic;
--              i     : in std_logic;
--              y     : out std_logic);
--    end component;

--    signal Ab    : std_logic;
--    signal reset : std_logic;
--    signal Mode  : std_logic;
--    signal i     : std_logic;
--    signal y     : std_logic;


--begin
--    dut : RiconoscitoreDiSequenze
--    port map (Ab    => Ab,
--              reset => reset,
--              Mode  => Mode,
--              i     => i,
--              y     => y);
--    stimuli : process
--    begin
--        Ab <='0';
--        Mode <= '-';
--        i <= '-';

--        reset<='1';
--        wait for 3 ns;
--        reset <= '0';

--         mode <= '0';	
 
--      --1011101
--        Ab<='1';
--		i<='1';	
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='0';	
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';	
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='0';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;

--        mode <= '1';
--		i<='1';
--		Ab<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='0';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='0';
--		wait for 1 ns;
--		Ab<='0';
--		wait for 1 ns;
--		Ab<='1';
--		i<='1';

--        wait;
--    end process;

--end tb;

---- Configuration block below is required by some simulators. Usually no need to edit.

--configuration cfg_tb_RiconoscitoreDiSequenze of tb_RiconoscitoreDiSequenze is
--    for tb
--    end for;
--end cfg_tb_RiconoscitoreDiSequenze;

-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 9.2.2025 09:49:28 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_RiconoscitoreDiSequenze is
end tb_RiconoscitoreDiSequenze;

architecture tb of tb_RiconoscitoreDiSequenze is

    component RiconoscitoreDiSequenze
        port (A     : in std_logic;
              reset : in std_logic;
              Mode  : in std_logic;
              i     : in std_logic;
              y     : out std_logic);
    end component;

    signal A     : std_logic;
    signal reset : std_logic;
    signal Mode  : std_logic;
    signal i     : std_logic;
    signal y     : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : RiconoscitoreDiSequenze
    port map (A     => A,
              reset => reset,
              Mode  => Mode,
              i     => i,
              y     => y);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    A <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as neededs
        Mode <= '0';
        i <= '1';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;
        
        i<='0';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='0';
        wait for 10 ns;
        i<='1'; 
        wait for 10 ns;
        
        mode<='1';
        i<='1';
        wait for 10 ns;
        i<='0';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='1';
        wait for 10 ns;
        i<='0';
        wait for 10 ns;
        i<='1'; 
        wait for 10 ns;
        
        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_RiconoscitoreDiSequenze of tb_RiconoscitoreDiSequenze is
    for tb
    end for;
end cfg_tb_RiconoscitoreDiSequenze;


