library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity unita_controllo is 
	port( clock, reset, start: in std_logic;--clock � il clock della board, clock_div viene dal divisore di freq
		  count: in std_logic_vector(2 downto 0);
		  q : in std_logic_vector(1 downto 0);
		  loadM, count_in, loadAQ, en_shift: out std_logic;
		  selAQ, subtract, stop_cu: out std_logic); 
end unita_controllo;


architecture structural of unita_controllo is
	type state is (idle, acquisisci_op, scan, avvia_sub, avvia_somma, avvia_shift, incr_count, fine);
	signal current_state,next_state: state;

	begin 
	reg_stato: process(clock)
			  begin
			  if(clock'event and clock='1') then
		         if(reset='1') then 
				    current_state <=idle;
			    else 
				    current_state <=next_state;
			     end if;
			  end if;
			  end process;
			  
	comb: process(current_state, start, count,q)
		  begin

		 count_in <='0'; 
         subtract <='0';
         selAQ <= '0';
         loadAQ <='0';  --carica nello shift register
         loadM <='0';   --carica il moltiplicando nel registro M
         stop_cu <='0';  
         en_shift <='0'; --segnale che abilita lo shift durante le prime N-1 iterazioni
         
		 CASE current_state is
		  
		  WHEN idle =>     
                  if(start='1') then 
					   next_state <= acquisisci_op;
				    else 
					   next_state <= idle;
					end if;
		  --fornisce i segnali di caricamento operandi
		  WHEN acquisisci_op => 
		            loadM <='1'; --abilita il caricamento del moltiplicando nel registro M 
					loadAQ <='1'; --abilita il caricamento del moltiplicatore e degli 8 zeri in testa 
					              --nello shift register A.Q (perch� selAQ=0)				
					next_state <= scan;
        
         WHEN scan =>             
             if q = "01" then               
                next_state <= avvia_somma;                
             elsif q = "10" then
                next_state <= avvia_sub;
             else 
                next_state <= avvia_shift;
             end if;
		 WHEN avvia_somma => 
		            selAQ <= '1';
		            loadAQ <= '1'; --fornisce il segnale di caricamento in A del risultato della somma					    					
					 next_state <= avvia_shift;
					
		 WHEN avvia_sub => 
		            selAQ <= '1';
		            loadAQ <= '1'; --fornisce il segnale di caricamento in A del risultato della somma
					subtract <= '1';					
					next_state <= avvia_shift;
									
		 WHEN avvia_shift =>  
					en_shift <='1';					  
					next_state <= incr_count;
					  
		 WHEN incr_count => 		             
		            count_in <= '1';					
					if unsigned(count) < 7 then				   
					   next_state <= scan;
				    else 
				        next_state <= fine;
				    end if;	 
		 WHEN fine => 	      		
                     stop_cu <='1';		      		  
                     next_state <= idle;
		end CASE;
		
    end process; 
 end structural;