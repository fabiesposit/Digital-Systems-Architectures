----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2024 20:14:28
-- Design Name: 
-- Module Name: riconoscitore_on_board - Behavioral
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

--S1 switch per codificare valore, caricato con B1 -> primo switch a destra, bottone u
--S2 switch per codificare il modo, caricato con B2 -> secondo switch da destra, bottone c
entity riconoscitore_on_board is
    Port ( clock_in : in STD_LOGIC;
           reset: in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           LED : out STD_LOGIC);
end riconoscitore_on_board;

architecture structural of riconoscitore_on_board is

component control_unit
    Port ( clock : in STD_LOGIC;
           B_mode : in STD_LOGIC;
           S_mode : in STD_LOGIC;
           mode : out STD_LOGIC
           );
end component;           

component RiconoscitoreDiSequenze
    Port ( clock : in STD_LOGIC;
           reset: in STD_LOGIC;
           Enable: in STD_LOGIC;
           Mode : in STD_LOGIC;
           i : in STD_LOGIC;
           y : out STD_LOGIC);
 end component;
 
component ButtonDebouncer
generic (                       
        CLK_period: integer := 10;  -- periodo del clock (della board) in nanosecondi
        btn_noise_time: integer := 10000000 -- durata stimata dell'oscillazione del bottone in nanosecondi
                                            -- il valore di default è 10 millisecondi
    );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;           
 
signal enable_valore: std_logic;
signal mode: std_logic; 
signal Reset_converted: std_logic;          

begin
Reset_converted <= not reset;  --visto che utilizzo il bottone CPU_reset della board, che è attivo-basso,
                          --devo convertire il segnale di reset
                          
--VALORE                          
B1_clear: ButtonDebouncer
GENERIC MAP( 
        CLK_period => 10,  -- periodo del clock della board pari a 10ns
        btn_noise_time => 10000000 --intervallo di tempo in cui si ha l'oscillazione del bottone
                                    --assumo che duri 10ms
)
PORT MAP ( RST => Reset_converted,
           CLK => clock_in, 
           BTN => B1,
           CLEARED_BTN => enable_valore
);

cu: control_unit PORT MAP(clock_in, B2, S2, mode);
	
riconoscitore: RiconoscitoreDiSequenze
    PORT MAP(
            clock => clock_in,
            reset => Reset_converted,
            Enable => enable_valore,
            Mode => mode,
            i => S1,
            y => LED
        );

end structural;
