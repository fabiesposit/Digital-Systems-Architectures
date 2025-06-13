----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2025 16:38:53
-- Design Name: 
-- Module Name: sistemaA - structural
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

entity sistemaA is
  Port (clock, reset: in std_logic;
        data: out std_logic_vector(3 downto 0);
        start: in std_logic;
        req: out std_logic;
        ack: in std_logic );
end sistemaA;

architecture structural of sistemaA is
component ROM is
Port (        clock : in STD_LOGIC;
        address : in  STD_LOGIC_VECTOR (2 downto 0);
        read    : in  STD_LOGIC;
        data    : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;
component cont_mod8 is
port( clock, reset: in std_logic;
	      count_in: in std_logic;
		  count: out std_logic_vector(2 downto 0));
end component;

component UC_A is
Port (clock: in std_logic;
        start: in std_logic;
        req: out std_logic;
        ack: in std_logic;
        read: out std_logic;
        en: out std_logic;
        c: in std_logic_vector(2 downto 0)
         );
end component;
--indirizzo rom dato dal contatore
signal Cval: std_logic_vector(2 downto 0);
signal read: std_logic;
signal enable: std_logic;
begin

myROM: ROM port map(clock, Cval, read, data);
myCont: cont_mod8 port map(clock, reset, enable, Cval);
unita_controllo: UC_A port map(clock, start, req, ack, read, enable, Cval);
end structural;
