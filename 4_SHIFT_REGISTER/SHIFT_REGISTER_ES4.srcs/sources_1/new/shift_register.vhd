----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.02.2025 16:02:56
-- Design Name: 
-- Module Name: shift_register - Behavioral
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

entity shift_register is
    Generic (n: positive:= 4);
    Port ( x0 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (n-1 downto 0);
           clock : in STD_LOGIC;
           reset : in STD_LOGIC);
end shift_register;



architecture Behavioral of shift_register is
    
        signal tmp: std_logic_vector(N-1 downto 0) := (others => '0');
    signal selezione: std_logic_vector(1 downto 0);
begin
    selezione(0) <= s0;
    selezione(1) <= s1;

    process(clock)
    begin
        if reset = '1' then
            tmp <= (others => '0'); -- Reset del registro
        elsif rising_edge(clock) then
            case selezione is
                when "00" => -- Shift a destra di 1
                    tmp(N-2 downto 0) <= tmp(N-1 downto 1);
                    tmp(N-1) <= x0;
                when "01" => -- Shift a destra di 2
                    tmp(N-3 downto 0) <= tmp(N-1 downto 2);
                    tmp(N-2) <= x0;
                    tmp(N-1) <= x0;
                when "10" => -- Shift a sinistra di 1
                    tmp(N-1 downto 1) <= tmp(N-2 downto 0);
                    tmp(0) <= x0;
                when "11" => -- Shift a sinistra di 2
                    tmp(N-1 downto 2) <= tmp(N-3 downto 0);
                    tmp(1) <= x0;
                    tmp(0) <= x0;
                when others =>
                    tmp <= (others => '0');
            end case;
        end if;
    end process;

    y <= tmp; -- Output del bit meno significativo
end Behavioral;

--architecture Structural of shift_register is

--component registro is
--    Port ( input : in STD_LOGIC;
--           output : out STD_LOGIC;
--           clock : in STD_LOGIC;
--           reset : in STD_LOGIC);
--end component;

--component mux_4_1 is 
--	port(	b0 : in STD_LOGIC;
--			b1 : in STD_LOGIC;
--			b2 : in STD_LOGIC;
--			b3 : in STD_LOGIC;
--			s0 : in STD_LOGIC;
--			s1 : in STD_LOGIC;
--			y0 : out STD_LOGIC
--		);		
--end component;

--signal temp: std_logic_vector(n-1 downto 0) := (others=>'0');
--signal u_mux: std_logic_vector(n-1 downto 0)  := (others=>'0');

--begin
    
--    ff_n_1: for i in 0 to n-1 generate
        
--        ff_i: registro port map(
--            input  => u_mux(i),
--           output => temp(i),
--           clock => clock,
--           reset => reset    
--        );
--    end generate ff_n_1;
    
--    mux_n_1: for i in 0 to n-1 generate
        
--        IF_CLAUSE_1:if i = 0 generate
--            mux_0: mux_4_1 port map(	
--            b0 => temp(1),
--			b1 => temp(2),
--			b2 => x0,
--			b3 => x0,
--			s0 => s0,
--			s1 => s1,
--			y0 => u_mux(i)
--		);
        
--        end generate IF_CLAUSE_1;
        
--        IF_CLAUSE_2:if i = 1 generate
--            mux_1: mux_4_1 port map(	
--            b0 => temp(i+1),
--			b1 => temp(i+2),
--			b2 => temp(i-1),
--			b3 => x0,
--			s0 => s0,
--			s1 => s1,
--			y0 => u_mux(i)
--		);
        
--        end generate IF_CLAUSE_2;
        
--        IF_CLAUSE_PENULTIMO:if i = n-2 generate
--            mux_n_2: mux_4_1 port map(	
--            b0 => temp(i+1),
--			b1 => x0,
--			b2 => temp(i-1),
--			b3 => temp(i-2),
--			s0 => s0,
--			s1 => s1,
--			y0 => u_mux(i)
--		);
        
--        end generate IF_CLAUSE_PENULTIMO;
        
--        IF_CLAUSE_ULTIMO:if i = N-1 generate
--            mux_n_1: mux_4_1 port map(	
--            b0 => x0,
--			b1 => x0,
--			b2 => temp(i-1),
--			b3 => temp(i-2),
--			s0 => s0,
--			s1 => s1,
--			y0 => u_mux(i)
--		);
        
--        end generate IF_CLAUSE_ULTIMO;
        
--        ELSE_CLAUSE :if i > 1 and i < n-2 generate 
--        mux_i: mux_4_1 port map(	
--            b0 => temp(i+1),
--			b1 => temp(i+2),
--			b2 => temp(i-1),
--			b3 => temp(i-2),
--			s0 => s0,
--			s1 => s1,
--			y0 => u_mux(i)
--		);
--        end generate ELSE_CLAUSE;
--    end generate mux_n_1;
--y <= temp;

--end Structural;
