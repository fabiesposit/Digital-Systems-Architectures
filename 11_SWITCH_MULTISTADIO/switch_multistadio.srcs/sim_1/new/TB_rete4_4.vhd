----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 18:46:37
-- Design Name: 
-- Module Name: TB_rete4_4 - Behavioral
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
-- Generation date : 31.1.2025 17:46:05 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_rete4_4 is
end tb_rete4_4;

architecture tb of tb_rete4_4 is

    component rete4_4
        port (A_in  : in std_logic_vector (5 downto 0);
              B_in  : in std_logic_vector (5 downto 0);
              C_in  : in std_logic_vector (5 downto 0);
              D_in  : in std_logic_vector (5 downto 0);
              A_out : out std_logic_vector (5 downto 0);
              B_out : out std_logic_vector (5 downto 0);
              C_out : out std_logic_vector (5 downto 0);
              D_out : out std_logic_vector (5 downto 0));
    end component;

    signal A_in  : std_logic_vector (5 downto 0);
    signal B_in  : std_logic_vector (5 downto 0);
    signal C_in  : std_logic_vector (5 downto 0);
    signal D_in  : std_logic_vector (5 downto 0);
    signal A_out : std_logic_vector (5 downto 0);
    signal B_out : std_logic_vector (5 downto 0);
    signal C_out : std_logic_vector (5 downto 0);
    signal D_out : std_logic_vector (5 downto 0);

begin

    dut : rete4_4
    port map (A_in  => A_in,
              B_in  => B_in,
              C_in  => C_in,
              D_in  => D_in,
              A_out => A_out,
              B_out => B_out,
              C_out => C_out,
              D_out => D_out);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A_in <= "00" & "11" & "11";
        B_in <= "01" & "00" & "11";
        C_in <= (others=>'-');
        D_in <= "11" & "01" & "10";
        
        wait for 10 ns;
        
        -- EDIT Add stimuli here
        B_in <= (others=>'-');
        D_in <= "11" & "01" & "10";
        
         wait for 10 ns;
        
        -- EDIT Add stimuli here
        A_in <= (others=>'-');
        B_in <= "01" & "11" & "11";
        D_in <= (others=>'-');
        C_in <= "10" & "11" & "11";
        
        
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_rete4_4 of tb_rete4_4 is
    for tb
    end for;
end cfg_tb_rete4_4;