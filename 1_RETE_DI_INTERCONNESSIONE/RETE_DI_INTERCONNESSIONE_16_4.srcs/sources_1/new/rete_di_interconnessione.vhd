----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2024 11:18:17
-- Design Name: 
-- Module Name: rete_di_interconnessione - Behavioral
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

entity rete_di_interconnessione is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           a4 : in STD_LOGIC;
           a5 : in STD_LOGIC;
           a6 : in STD_LOGIC;
           a7 : in STD_LOGIC;
           a8 : in STD_LOGIC;
           a9 : in STD_LOGIC;
           a10 : in STD_LOGIC;
           a11 : in STD_LOGIC;
           a12 : in STD_LOGIC;
           a13 : in STD_LOGIC;
           a14 : in STD_LOGIC;
           a15 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s3 : in STD_LOGIC;
           s4 : in STD_LOGIC;
           s5 : in STD_LOGIC);
           
end rete_di_interconnessione;
    
         

architecture Structural of rete_di_interconnessione is
        signal u0 : STD_LOGIC := '0';
        
        component demux_1_4
        Port ( b0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC); 
           end component;
         
         
         component mux_16_1
         Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           a4 : in STD_LOGIC;
           a5 : in STD_LOGIC;
           a6 : in STD_LOGIC;
           a7 : in STD_LOGIC;
           a8 : in STD_LOGIC;
           a9 : in STD_LOGIC;
           a10 : in STD_LOGIC;
           a11 : in STD_LOGIC;
           a12 : in STD_LOGIC;
           a13 : in STD_LOGIC;
           a14 : in STD_LOGIC;
           a15 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s3 : in STD_LOGIC;
           y : out STD_LOGIC);
          end component;
         
    
begin
       
       mux:mux_16_1
            Port map(
                a0 => a0,
                a1 => a1,
                a2 => a2,
                a3 => a3,
                a4 => a4,
                a5 => a5,
                a6 => a6,
                a7 => a7,
                a8 => a8,
                a9 => a9,
                a10 => a10,
                a11 => a11,
                a12 => a12,
                a13 => a13,
                a14 => a14,
                a15 => a15,
                s0 => s0,
                s1 => s1,
                s2 => s2,
                s3 => s3,
                y => u0
            );       
       demux:demux_1_4
            Port map(        
                b0 => u0,
                s0 => s4,
                s1 => s5,
                y0 => y0,
                y1 => y1,
                y2 => y2,
                y3 => y3           
            );

end Structural;
