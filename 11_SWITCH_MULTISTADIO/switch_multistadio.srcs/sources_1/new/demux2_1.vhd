----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 17:27:05
-- Design Name: 
-- Module Name: demux2_1 - Behavioral
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


entity demux2_1 is
    generic(N: integer);
    Port ( a0 : in std_logic_vector(N-1 downto 0);
           s0 : in std_logic;
           y0 : out std_logic_vector(N-1 downto 0);
           y1 : out std_logic_vector(N-1 downto 0));
end demux2_1;

architecture Dataflow of demux2_1 is

begin

    -- Assegnazione a y0
    with s0 select
        y0 <= a0 when '0',
             (others=>'-') when others;

    -- Assegnazione a y1
    with s0 select
        y1 <= a0 when '1',
            (others=>'-') when others;

end Dataflow;
