----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.10.2024 17:36:26
-- Design Name: 
-- Module Name: mux_16_1 - structural
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

entity mux_16_1 is
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
end mux_16_1;

architecture structural of mux_16_1 is

    signal u3 : std_logic := '0';
    signal u2 : std_logic := '0';
    signal u1 : std_logic := '0';
    signal u0 : std_logic := '0';
    
    component mux_4_1
        port(
            b0 : in STD_LOGIC;
			b1 : in STD_LOGIC;
			b2 : in STD_LOGIC;
			b3 : in STD_LOGIC;
			s0 : in STD_LOGIC;
			s1 : in STD_LOGIC;
			y0 : out STD_LOGIC
        );
     end component;
    begin

    mux_0: mux_4_1
        Port map(
            b0 => a0,
            b1 => a1,
            b2 => a2,
            b3 => a3,
            s0 => s0,
            s1 => s1,
            y0 => u3
        );
     mux_1: mux_4_1
        Port map(
            b0 => a4,
            b1 => a5,
            b2 => a6,
            b3 => a7,
            s0 => s0,
            s1 => s1,
            y0 => u2
        );
       mux_2: mux_4_1
        Port map(
            b0 => a8,
            b1 => a9,
            b2 => a10,
            b3 => a11,
            s0 => s0,
            s1 => s1,
            y0 => u1
        );
        mux_3: mux_4_1
        Port map(
            b0 => a12,
            b1 => a12,
            b2 => a14,
            b3 => a15,
            s0 => s0,
            s1 => s1,
            y0 => u0
        );
         mux_4: mux_4_1
        Port map(
            b0 => u3,
            b1 => u2,
            b2 => u1,
            b3 => u0,
            s0 => s2,
            s1 => s3,
            y0 => y
        );

end structural;
