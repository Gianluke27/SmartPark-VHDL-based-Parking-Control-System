----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:59:51 01/30/2020 
-- Design Name: 
-- Module Name:    contatore_auto - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contatore_auto is
    Port ( 
			  clk 			: in 		STD_LOGIC;
			  rst 			: in 		STD_LOGIC;
			  incremento 	: in  	STD_LOGIC;
           decremento 	: in  	STD_LOGIC;
           libero			: out  	STD_LOGIC);
end contatore_auto;

architecture Behavioral of contatore_auto is

type stato is (valore0, valore1, valore2);

signal current_state, next_state : stato;

begin

	processo_clock_2 : process(clk)
		begin
		if(rising_edge(clk)) then
			if(rst = '1') then
				current_state <= valore0;
			else
				current_state <= next_state;
			end if;
		end if;
	end process;

	processo_stati_2 : process(incremento, decremento, current_state)
		begin
		case current_state is
			when valore0 =>
				libero <= '1';
				if(incremento = '1' and decremento = '0') then
					next_state <= valore1;
				else
					next_state <= current_state;
				end if;

			when valore1 =>
				libero <= '1';
				if(incremento = '1' and decremento = '0') then
					next_state <= valore2;
				elsif(incremento = '0' and decremento = '1') then
					next_state <= valore0;
				else
					next_state <= current_state;
				end if;
					
			when valore2 =>
				libero <= '0';
				if(incremento = '0' and decremento = '1') then
					next_state <= valore1;
				else
					next_state <= current_state;
				end if;
		end case;
	end process;
end Behavioral;

