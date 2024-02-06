----------------------------------------------------------------------------------
-- Company: 			Ingegneria Informatica a.a. 2019/2020
-- Engineer: 			Canzolino Gianluca 0612704462
-- 
-- Create Date:    	14:25:46 01/20/2020 
-- Design Name: 
-- Module Name:    	v_1_0_1_2020_01_20 - Behavioral 
-- Project Name: 		contatore_auto
-- Target Devices: 	Xilinx FPGA XC6SLX9-2TQG144
-- Tool versions: 
-- Description: 	
--	Contatore delle auto in ingresso e in uscita all'interno di un parcheggio
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

entity contatore_auto is
    Port ( 
			  clk 			: in 		STD_LOGIC;		--Segnale di clock	
			  rst 			: in 		STD_LOGIC;		--Segnale di reset
			  incremento 	: in  	STD_LOGIC;		--Incremento       	
																-- -> Impulsivo -> '1' per 1 colpo di clk
           decremento 	: in  	STD_LOGIC;		--Decremento       	
																-- -> Impulsivo -> '1' per 1 colpo di clk
           libero			: out  	STD_LOGIC);		--Posti liberi\		
															   -- -> '1' almeno 1 posto libero, '0' saturo
end contatore_auto;

architecture Behavioral of contatore_auto is

--Gli stati, come già descritti nell'automa del contatore_auto sono i seguenti:
type stato is (valore0, valore1, valore2);

--Per poter individuare lo stato in cui si trova la FSM e lo stato successivo,
--sono stati implementati i seguenti segnali:
signal current_state, next_state : stato;

begin

	--Si effettua un primo processo sul clock
	processo_clock_cont : process(clk)
		begin
		--Se il clock effettua un fronte di salita, allora eseguo:
		if(rising_edge(clk)) then
			--Se il mio reset è 1, allora resetto la macchina
			if(rst = '1') then
				--Il mio stato attuale è riportato al valore iniziale, cioè valore0
				current_state <= valore0;
			--Altrimenti, se non ho nessun reset, eseguo:
			else
				--Lo stato corrente, viene aggiornato con lo stato_successivo
				current_state <= next_state;
			end if;
		end if;
	end process;

	--Si effettua il processo itinerente alle transizioni di stato
	processo_FSM_2 : process(incremento, decremento, current_state)
		begin
		--Inizializzo il case ... when per la macchina a stati sul current_state
		case current_state is
			--Se lo stato attuale è valore0:
			when valore0 =>
				--Essendo un automa di Moore, le uscite sono indipendenti dagli igressi
				libero <= '1';
				
				--Se ho un incremento, allora:
				if(incremento = '1' and decremento = '0') then
					--Il mio stato successivo è valore1
					next_state <= valore1;
				--Altrimenti in tutti gli altri casi, eseguo:
				else
					--Ritorno in me stesso
					next_state <= valore0;
				end if;

			--Se lo stato attuale è valore1:
			when valore1 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				libero <= '1';
				
				--Se ho un incremento, allora:
				if(incremento = '1' and decremento = '0') then
					--Il mio stato successivo è valore2
					next_state <= valore2;
				--Altrimenti se ho un decremento, allora:
				elsif(incremento = '0' and decremento = '1') then
					--Il mio stato successivo è valore0
					next_state <= valore0;
				--Altrimenti in tutti gli altri casi, eseguo:
				else
					--Ritorno in me stesso
					next_state <= valore1;
				end if;
					
			--Se lo stato attuale è valore2:
			when valore2 =>
				--Essendo un automa di Moore, le mie uscite sono indipendenti dagli igressi
				libero <= '0';
				
				--Se ho un decremento, allora:
				if(incremento = '0' and decremento = '1') then
					--Il mio stato successivo è valore1
					next_state <= valore1;
				--Altrimenti in tutti gli altri casi, eseguo:
				else
					--Ritorno in me stesso
					next_state <= valore2;
				end if;
		end case;
	end process;
end Behavioral;

