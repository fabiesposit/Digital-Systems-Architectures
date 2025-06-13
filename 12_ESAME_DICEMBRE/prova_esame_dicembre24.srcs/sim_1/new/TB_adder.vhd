----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:12:07
-- Design Name: 
-- Module Name: TB_adder - Behavioral
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
-- Generation date : 23.1.2025 15:11:21 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_CLA_adder is
    generic(n: integer := 4);

end tb_CLA_adder;

architecture tb of tb_CLA_adder is

    component CLA_adder
        port (A     : in std_logic_vector (n-1 downto 0);
              B     : in std_logic_vector (n-1 downto 0);
              c0    : in std_logic;
              carry : out std_logic;
              Sum   : out std_logic_vector (n-1 downto 0));
    end component;

    signal A     : std_logic_vector (n-1 downto 0);
    signal B     : std_logic_vector (n-1 downto 0);
    signal c0    : std_logic;
    signal carry : std_logic;
    signal Sum   : std_logic_vector (n-1 downto 0);

begin

    dut : CLA_adder
    port map (A     => A,
              B     => B,
              c0    => c0,
              carry => carry,
              Sum   => Sum);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= (others => '0');
        B <= (others => '1');
        c0 <= '0';
        

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_CLA_adder of tb_CLA_adder is
    for tb
    end for;
end cfg_tb_CLA_adder;
