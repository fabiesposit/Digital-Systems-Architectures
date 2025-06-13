----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 11:41:42
-- Design Name: 
-- Module Name: demux_1_4 - Behavioral
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

entity demux_1_4 is
    Port ( b0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC);
end demux_1_4;

architecture Structural of demux_1_4 is

    signal u0 : STD_LOGIC := '0';
	signal u1 : STD_LOGIC := '0';
	   
	   component DEMUX_1_2
	       Port ( a0 : in STD_LOGIC;
                  s0 : in STD_LOGIC;
                  y0 : out STD_LOGIC;
                  y1 : out STD_LOGIC);
          end component;

begin

       demux_0: DEMUX_1_2
        Port map(
        
                a0 => b0,
                s0 => s1,
                y0 => u0,
                y1 => u1          
            );
       demux_1: DEMUX_1_2
        Port map(
        
                a0 => u0,                
                s0 => s0,
                y0 => y0,
                y1 => y1
               
            );
       demux_2: DEMUX_1_2
        Port map(
        
                a0 => u1,                
                s0 => s0,
                y0 => y2,
                y1 => y3
              
            );

end Structural;
