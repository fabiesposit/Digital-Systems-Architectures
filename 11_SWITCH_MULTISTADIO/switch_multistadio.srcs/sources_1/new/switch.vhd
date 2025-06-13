----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.01.2025 17:30:22
-- Design Name: 
-- Module Name: switch - structural
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

--livello: livello della rete, parto a contare da 0
entity switch is
  generic(livello: integer);
  Port (in1: in std_logic_vector(5 downto 0);
          in2: in std_logic_vector(5 downto 0);
          out1: out std_logic_vector(5 downto 0);
          out2: out std_logic_vector(5 downto 0) );
end switch;

architecture structural of switch is
component mux2_1 is
generic(N: integer);
	port( 	a0 	: in std_logic_vector(N-1 downto 0);
			a1 	: in std_logic_vector(N-1 downto 0);
			s 	: in STD_LOGIC;
			y 	: out std_logic_vector(N-1 downto 0)
	);
end component;

component demux2_1 is
generic(N: integer);
    Port ( a0 : in std_logic_vector(N-1 downto 0);
           s0 : in std_logic;
           y0 : out std_logic_vector(N-1 downto 0);
           y1 : out std_logic_vector(N-1 downto 0));
end component;

component priorita is
  Port (in1_val: in std_logic_vector(1 downto 0);
        in2_val: in std_logic_vector(1 downto 0);
        dest1: in std_logic;
        dest2: in std_logic;
        prior: out std_logic;
        sel_demux: out std_logic );
end component;

signal sel_mux: std_logic;
signal sel_demux: std_logic ;
signal mux_demux: std_logic_vector(5 downto 0);
signal p: std_logic;

begin

gestione_priorita: priorita port map(in1(5 downto 4), in2(5 downto 4), in1(3-livello), in2(3-livello), sel_mux, sel_demux);

mux: mux2_1 generic map(6) port map(in1, in2, sel_mux, mux_demux);

demux: demux2_1 generic map(6) port map(mux_demux, sel_demux, out1, out2);


end structural;
