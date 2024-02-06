--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:52 02/03/2020
-- Design Name:   
-- Module Name:   D:/ProgettoTD_Traccia9_Canzolino_Gianluca/parcheggio_tb.vhd
-- Project Name:  ProgettoTD_Traccia9_Canzolino_Gianluca
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Parcheggio
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY parcheggio_tb IS
END parcheggio_tb;
 
ARCHITECTURE behavior OF parcheggio_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Parcheggio
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         FEE : IN  std_logic;
         FEI : IN  std_logic;
         FUE : IN  std_logic;
         FUI : IN  std_logic;
         Pulsante : IN  std_logic;
         SbI : OUT  std_logic;
         SbU : OUT  std_logic;
         Sem : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal FEE : std_logic := '0';
   signal FEI : std_logic := '0';
   signal FUE : std_logic := '0';
   signal FUI : std_logic := '0';
   signal Pulsante : std_logic := '0';

 	--Outputs
   signal SbI : std_logic;
   signal SbU : std_logic;
   signal Sem : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Parcheggio PORT MAP (
          clk => clk,
          rst => rst,
          FEE => FEE,
          FEI => FEI,
          FUE => FUE,
          FUI => FUI,
          Pulsante => Pulsante,
          SbI => SbI,
          SbU => SbU,
          Sem => Sem
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

    -- Stimulus process
   stim_proc: process
   begin  
      -- Reset della macchina
		rst <= '1';
		wait for 20 ns; 
		rst <= '0';
      
		wait for clk_period*10;

      -- insert stimulus here 
  
-- 01 --caso in cui una macchina deve entrare
--------con almeno 2 posti disponibili
	
			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
 
			-- 2) l'auto sta entrando
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns;  
			
			-- 3) l'auto è quasi entrata
			fee <= '0';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 4) l'auto è entrata
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'
  
-- 02 --caso in cui una macchina deve entrare
--------con almeno 1 posto disponibile
	
			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
 
			-- 2) l'auto sta entrando
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns;  
			
			-- 3) l'auto è quasi entrata
			fee <= '0';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 4) l'auto è entrata
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo diventa rosso, quindi:
			--SbI = '0' - SbU = '0' - Sem '0'
  
-- 03 --caso in cui una macchina deve entrare
--------ma non ci sono posti disponibili
	
			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
 
			-- 2) l'auto è presente vicino alla fotocellula
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
			
			-- 3) l'auto rimane ad aspettare che si apra la sbarra 
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra non si apre e infine che:
			--SbI = '0' - SbU = '0' - Sem '0'
  
-- 04 --caso in cui una macchina deve uscire e i posti sono tutti occupati
	
			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
 
			-- 2) l'auto sta uscendo
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns;  
			
			-- 3) l'auto è quasi uscita
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 4) l'auto è uscita
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo diventa verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'
		
-- 05 --caso in cui una macchina deve entrare
--------ma fa retromarcia
	
			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
			
			-- 2) l'auto è presente vicino alla fotocellula
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
 
			-- 3) l'auto torna indietro
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'
  
-- 06 --caso in cui una macchina deve entrare, arriva a metà percorso
--------ma fa retromarcia
	
			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
			
			-- 2) l'auto sta entrando
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns;
 
			-- 3) l'auto torna indietro
			fee <= '1';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 4) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'  
			
-- 07 --caso in cui una macchina deve entrare, è quasi entrata
--------ma fa retromarcia

			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
			
			-- 2) l'auto sta entrando
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns;
			
			-- 3) l'auto è quasi entrata
			fee <= '0';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns;
 
			-- 4) l'auto torna indietro
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 5) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'  

-- 08 --caso in cui una macchina deve entrare,
--------ma ci sta un ostacolo all'interno del parcheggio 

			-- 1) l'auto è presente vicino alla fotocellula e preme il pulsante
			fee <= '1';	fei <= '1';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns;
			
			-- 2) l'auto aspetta che si apre la sbarra
			fee <= '1';	fei <= '1'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 3) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra non si apra e che il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1' 
			
-- 09 --caso in cui una macchina deve uscire,
--------ma ci sta un ostacolo al di fuori del parcheggio 

			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '1';	fue <= '1';	Pulsante <= '0';
			wait for 10 ns;
			
			-- 2) l'auto aspetta che si apre la sbarra
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 3) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns;
			
			--Mi aspetto la sbarra non si apra quindi:
			--SbI = '0' - SbU = '0' - Sem '1' 
			
-- 10 --caso in cui una macchina deve uscire e una deve entrare,
--------contemporaneamente

			-- 1) le auto sono presenti vicino alle fotocellule
			fee <= '1';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns; 
			
			-- 2) le auto sono presenti vicino alle fotocellule
			fee <= '1';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns; 
			
			-- 3) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns;
			
			--Mi aspetto che la sbarra di uscita si apra 
			--e quella di entrata non si apra quindi:
			--SbI = '0' - SbU = '1' - Sem '1' 

-- 11 --caso in cui una persona preme il pulsante
--------ma la fotocellula non rileva alcun'auto

			-- 1) la persona preme il pulsante
			fee <= '0';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns; 
			
			-- 2) non ci sta nemmeno un'auto vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
			
			-- 3) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns;
			
			--Mi aspetto che la sbarra di entrata non si apra quindi:
			--SbI = '0' - SbU = '0' - Sem '1' 
  
-- 12 --caso in cui una macchina deve entrare,
--------ma aspetta troppo tempo
 
			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '1';
			wait for 10 ns; 
			
			-- 2) l'auto aspetta
			fee <= '1';	fei <= '0';	fui <= '0';	fue <= '0';	Pulsante <= '0';
			wait for clk_period*15;
			
			-- 3) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns;
			
			--Mi aspetto che la sbarra di entrata si apra e poi si richiuda quindi:
			--SbI = '1' - SbU = '0' - Sem '1'  
			--SbI = '0' - SbU = '0' - Sem '1'  
			
-- 13 --caso in cui una macchina deve uscire
--------ma fa retromarcia
	
			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
 
			-- 2) l'auto torna indietro
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'
  
-- 14 --caso in cui una macchina deve uscire, arriva a metà percorso
--------ma fa retromarcia
	
			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
			
			-- 2) l'auto sta uscendo
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns;
 
			-- 3) l'auto torna indietro
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '0'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 4) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'  
			
-- 15 --caso in cui una macchina deve uscire, è quasi uscita
--------ma fa retromarcia

			-- 1) l'auto è presente vicino alla fotocellula
			fee <= '0';	fei <= '0';	fui <= '1';	fue <= '0';	Pulsante <= '0';
			wait for 10 ns;
			
			-- 2) l'auto sta uscendo
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns;
			
			-- 3) l'auto è quasi uscita
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns;
 
			-- 4) l'auto torna indietro
			fee <= '0';	fei <= '0'; fui <= '1'; fue <= '1'; Pulsante <= '0';
			wait for 10 ns; 
			
			-- 5) ingressi resettati
			fee <= '0';	fei <= '0'; fui <= '0'; fue <= '0'; Pulsante <= '0';
			wait for 20 ns; 
			
			--Mi aspetto la sbarra che si richiude il semaforo rimane verde, quindi:
			--SbI = '0' - SbU = '0' - Sem '1'  
			
      wait;
   end process;
END;

