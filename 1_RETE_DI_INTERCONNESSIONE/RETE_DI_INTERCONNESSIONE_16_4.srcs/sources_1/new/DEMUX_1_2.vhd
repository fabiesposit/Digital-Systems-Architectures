----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 11:25:58
-- Design Name: 
-- Module Name: DEMUX_1_2 - Dataflow
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

entity DEMUX_1_2 is
    Port ( a0 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC);
end DEMUX_1_2;

architecture Dataflow of DEMUX_1_2 is

begin

    -- Assegnazione a y0
    with s0 select
        y0 <= a0 when '0',
              '0' when '1',
              '-' when others;

    -- Assegnazione a y1
    with s0 select
        y1 <= '0' when '0',
              a0 when '1',
              '-' when others;

end Dataflow;
