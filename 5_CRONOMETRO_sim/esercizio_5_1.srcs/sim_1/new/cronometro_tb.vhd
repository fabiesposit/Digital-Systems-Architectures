library ieee;
use ieee.std_logic_1164.all;

entity tb_cronometro is
end tb_cronometro;

architecture tb of tb_cronometro is

    component cronometro
        port (clock     : in std_logic;
              set       : in std_logic;
              reset     : in std_logic;
              set_value : in std_logic_vector (16 downto 0);
              h         : out std_logic_vector (4 downto 0);
              m         : out std_logic_vector (5 downto 0);
              s         : out std_logic_vector (5 downto 0);
              enable    : in std_logic);
    end component;

    signal clock     : std_logic;
    signal set       : std_logic;
    signal reset     : std_logic;
    signal set_value : std_logic_vector (16 downto 0);
    signal h         : std_logic_vector (4 downto 0);
    signal m         : std_logic_vector (5 downto 0);
    signal s         : std_logic_vector (5 downto 0);
    signal enable    : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here 
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : cronometro
    port map (clock     => clock,
              set       => set,
              reset     => reset,
              set_value => set_value,
              h         => h,
              m         => m,
              s         => s,
              enable    => enable);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clock is really your main clock signal
    clock <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        set <= '0';
        set_value <= (others => '0');
        enable <= '0';
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        enable<= '1';
         set_value <= "00001111011111011";
         --h= 01
         --min = 59
         --sec = 59
         set<= '1';
         wait for 10 ns;
         set <= '0';
       
        --10 secondi
        wait for 10000 ns;        
        enable <= '0';

        wait;
    end process;

end tb;

