----------------------------------------------------------------------------------
-- Company: 			Ingegneria Informatica a.a. 2019/2020
-- Engineer: 			Canzolino Gianluca 0612704462
-- 
-- Create Date:    	10:21:15 01/20/2020 
-- Design Name: 
-- Module Name:    	v_1_0_1_2020_01_20 - Behavioral 
-- Project Name: 		Progetto parcheggio
-- Target Devices: 	Xilinx FPGA XC6SLX9-2TQG144
-- Tool versions: 
-- Description: 		
--
--	Si realizzi un controllore per gestire un parcheggio dotato di due posti auto. Il parcheggio ha un varco di 
-- ingresso e un varco di uscita. Al varco di ingresso è presente una sbarra e un semaforo che servono per 
-- controllare il flusso in entrata al parcheggio: se ci sono posti ancora liberi, il controllore deve autorizzare 
-- l'accesso tramite una luce verde, se il parcheggio è tutto occupato deve bloccare l'accesso tramite una luce 
-- rossa. Per entrare nel parcheggio, l'utente deve premere un pulsante. Se sono disponibili posti, il controllore 
-- deve alzare la sbarra e tenerla aperta fino a quando l'auto non entra (il passaggio dell'auto è segnalato da 
-- una fotocellula) e per un massimo di 15 colpi di clock. Non appena l'auto è entrata, la sbarra deve essere 
-- abbassata. Se l'auto non entra prima dei 15 colpi di clock, la sbarra deve essere comunque abbassata. Al varco 
-- di uscita è presente una fotocellula che indica se un'auto intende uscire dal parcheggio. Quando il controllore 
-- rileva un'auto in uscita, alza la sbarra. La sbarra resta alzata fino a quando l'auto è uscita dal parcheggio. 
--
-- Dependencies: 		
--
-- Revision: 			1_0_1
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Parcheggio is
    Port ( 
			  clk 		: 	in  	STD_LOGIC;		--Segnale di clock				
	        rst 		: 	in  	STD_LOGIC;		--Segnale di reset				
			  FEE 		: 	in  	STD_LOGIC; 		--Fotocellula Entrata Esterna	->	'1' rilevato, '0' non rilevato											
           FEI 		: 	in  	STD_LOGIC;		--Fotocellula Entrata Interna ->	'1' rilevato, '0' non rilevato
           FUE 		: 	in  	STD_LOGIC;		--Fotocellula Uscita Esterna  -> '1' rilevato, '0' non rilevato
           FUI 		: 	in  	STD_LOGIC;		--Fotocellula Uscita Interna  -> '1' rilevato, '0' non rilevato
           Pulsante 	: 	in  	STD_LOGIC;		--Pulsante all'ingresso       -> Impulsivo -> '1' per 20 millisecondi
           SbI 		: 	out  	STD_LOGIC;		--Sbarra Ingresso					->	'1' apertura, '0' chiusura
           SbU 		: 	out  	STD_LOGIC;		--Sbarra Uscita					-> '1' apertura, '0' chiusura
           Sem 		: 	out   STD_LOGIC);		--Semaforo							-> '1' semaforo verde, '0' semaforo rosso
end Parcheggio;

architecture Behavioral of Parcheggio is

--Gli stati, come già descritti nell'automa del parcheggio sono i seguenti:
type stato is (idle, entrata, uscita, entrata1, entrata2, uscita1, uscita2);

--Per poter individuare lo stato in cui si trova la FSM e lo stato successivo,
--sono stati implementati i seguenti segnali:
signal current_state, next_state: stato;

--Per il conteggio delle auto in ingresso e in uscita si ricorre all'uso di un
--componente esterno chiamato contatore_auto, il quale se assume incremento 1,
--il numero delle auto viene appunto incrementato, se decremento assume valore 1,
--il numero delle auto viene decremenatato. 
component contatore_auto
	Port ( 
			  clk 			: in 		STD_LOGIC;
			  rst 			: in 		STD_LOGIC;
			  incremento 	: in  	STD_LOGIC;
           decremento 	: in  	STD_LOGIC;
           libero			: out  	STD_LOGIC);
end component;

--Dato che il valore Sem è un valore di sola uscita è stato implementato un segnale
--di supporto il quale contiene l'uscita "Libero" del componente contatore_auto.
signal valore_semaforo : std_logic;

--Sono stati implementati i segnali inc e dec, i quali sono impulsivi con valore 1.
--Essi sono passati al componente contatore_auto, il quale incrementa o decrementa il
--numero delle auto presenti
signal inc, dec : std_logic;

begin
	--Viene instanziato il componente contatore_auto
	cont_auto : contatore_auto port map (clk, rst, inc, dec, valore_semaforo);
	
	--Si effettua un primo processo sul clock
	processo_clock : process(clk)
		--Si dichiara una variabile intera locale su 4 bit (da 0 a 15) per
		--il conteggio dei colpi di clock.
		variable contatore : integer range 0 to 15;
		begin
		--Se il clock effettua un fronte di salita, allora eseguo:
		if(rising_edge(clk)) then
			--Se il mio reset è 1, allora resetto la macchina
			if(rst = '1') then
				--Il mio stato attuale è riportato al valore iniziale, cioè idle
				current_state <= idle;
				--Mi resetto il contatore dei colpi di clock
				contatore := 0;
			--Altrimenti, se non ho nessun reset, eseguo:
			else
				--Lo stato corrente, viene aggiornato con lo stato_successivo
				current_state <= next_state;
			end if;
			
			--Se mi trovo in uno stato di entrata, allora eseguo:
			if(current_state = entrata or current_state = entrata1 or current_state = entrata2) then
				--Incremento il contatore dei colpi di clock
				contatore := contatore + 1;
				--Se il contatore arriva al suo valore massimo, cioè quindi, allora:
				if (contatore = 15) then
					--Riporto il contatore al valore iniziale
					contatore := 0;
					--Sono trascorsi 15 colpi di clock quindi non devo più far entrare l'auto,
					--riportando quindi lo stato attuale, in quello iniziale
					current_state <= idle;
				end if;
			--Se non mi trovo in nessun stato di entrata, allora:
			else
				--Resetto il contatore, il quale serve solo in caso in cui l'auto sta entrando
				contatore := 0;
			end if;
			
			--Assegno il valore del Semaforo (1 verde, 0 rosso) all'uscita "Sem"
			Sem <= valore_semaforo;
		end if;
	end process;
	
	--Si effettua il processo itinerente alle transizioni di stato
	processo_FSM : process(current_state, FEE, FEI, FUE, FUI, Pulsante, valore_semaforo)	
		
		begin
		--Vado a tenere di default i valori inc e dec a 0
		inc <= '0';
		dec <= '0';
		
		--Inizializzo il case ... when per la macchina a stati sul current_state
		case current_state is
			--Se lo stato attuale è idle:
			when idle => 
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBI <= '0'; SBU <= '0';
				
				--Se l'auto sta impegnando l'uscita allora: 
				if(FUI = '1' and FUE = '0') then
					--Il mio stato successivo è quello di uscita
					next_state <= uscita;
				--Altrimenti se sta impegnando l'entrata, e ci sono posti disponibili allora:
				elsif(FEE = '1' and FEI = '0' and pulsante = '1' and valore_semaforo = '1') then
					--Il mio stato successivo è quello di entrata
					next_state <= entrata;
				--Altrimenti (in tutti gli altri casi), allora:
				else
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo idle
					next_state <= idle;
				end if;
				
			--Se lo stato attuale è entrata
			when entrata =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBU <= '0'; SBI <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FEE = '1' and FEI = '0') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo entrata
					next_state <= entrata;
				--Altrimenti se l'auto avanza, allora:
				elsif(FEE = '1' and FEI = '1') then
					--Il mio prossimo stato è entrata1
					next_state <= entrata1;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;
				
			--Se lo stato attuale è entrata1
			when entrata1 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBU <= '0'; SBI <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FEE = '1' and FEI = '1') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo entrata1
					next_state <= entrata1;
				--Altrimenti se l'auto avanza, allora:
				elsif(FEE = '0' and FEI = '1') then
					--Il mio prossimo stato è entrata2
					next_state <= entrata2;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;
				
			--Se lo stato attuale è entrata2
			when entrata2 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBU <= '0'; SBI <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FEE = '0' and FEI = '1') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo entrata2
					next_state <= entrata2;
				--Altrimenti se l'auto avanza, allora:
				elsif(FEE = '0' and FEI = '0') then
					--Incremento il numero delle auto
					inc <= '1';
					--E ritorno allo stato iniziale
					next_state <= idle;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;
				
			--Se lo stato attuale è uscita
			when uscita =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBI <= '0';	SBU <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FUI = '1' and FUE = '0') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo uscita
					next_state <= uscita;
				--Altrimenti se l'auto avanza, allora:
				elsif(FUI = '1' and FUE = '1') then
					--Il mio prossimo stato è uscita1
					next_state <= uscita1;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;
			
			--Se lo stato attuale è uscita1
			when uscita1 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBI <= '0';	SBU <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FUI = '1' and FUE = '1') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo uscita1
					next_state <= uscita1;
				--Altrimenti se l'auto avanza, allora:
				elsif(FUI = '0' and FUE = '1') then
					--Il mio prossimo stato è uscita1
					next_state <= uscita2;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;
				
			--Se lo stato attuale è uscita2
			when uscita2 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				SBI <= '0';	SBU <= '1';
				
				--Se l'auto rimane nella stessa posizione senza indietreggiare o avanzare, allora:
				if(FUI = '0' and FUE = '1') then
					--Rimango in me stesso, ovvero il prossimo stato è di nuovo uscita2
					next_state <= uscita2;
				--Altrimenti se l'auto avanza, allora:
				elsif(FUI = '0' and FUE = '0') then
					--Decremento il numero delle auto
					dec <= '1';
					--E ritorno allo stato iniziale
					next_state <= idle;
				--Altrimenti (l'auto è indietreggiata oppure si verifica uno caso anomalo), allora:
				else
					--Ritorno allo stato iniziale
					next_state <= idle;
				end if;				
		end case;		
	end process;	
end Behavioral;