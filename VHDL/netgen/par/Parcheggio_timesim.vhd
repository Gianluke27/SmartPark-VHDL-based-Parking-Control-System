--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Parcheggio_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 04 12:24:23 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf Parcheggio.pcf -rpw 100 -tpw 0 -ar Structure -tm Parcheggio -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Parcheggio.ncd Parcheggio_timesim.vhd 
-- Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: Parcheggio.ncd
-- Output file	: D:\ProgettoTD_Traccia9_Canzolino_Gianluca\netgen\par\Parcheggio_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Parcheggio
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Parcheggio is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    FEE : in STD_LOGIC := 'X'; 
    FEI : in STD_LOGIC := 'X'; 
    FUE : in STD_LOGIC := 'X'; 
    FUI : in STD_LOGIC := 'X'; 
    Pulsante : in STD_LOGIC := 'X'; 
    SbI : out STD_LOGIC; 
    SbU : out STD_LOGIC; 
    Sem : out STD_LOGIC 
  );
end Parcheggio;

architecture Structure of Parcheggio is
  signal current_state_FSM_FFd2_In1_165 : STD_LOGIC; 
  signal FUE_IBUF_0 : STD_LOGIC; 
  signal FUI_IBUF_0 : STD_LOGIC; 
  signal current_state_FSM_FFd2_168 : STD_LOGIC; 
  signal current_state_FSM_FFd1_169 : STD_LOGIC; 
  signal current_state_FSM_FFd3_170 : STD_LOGIC; 
  signal current_state_FSM_FFd1_In1_171 : STD_LOGIC; 
  signal FEE_IBUF_0 : STD_LOGIC; 
  signal FEI_IBUF_0 : STD_LOGIC; 
  signal SbU_OBUF_174 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Pulsante_IBUF_0 : STD_LOGIC; 
  signal Sem_OBUF_177 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal cont_auto_current_state_FSM_FFd2_180 : STD_LOGIC; 
  signal cont_auto_current_state_FSM_FFd1_181 : STD_LOGIC; 
  signal rst_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal current_state_FSM_FFd2_rstpot_97 : STD_LOGIC; 
  signal current_state_FSM_FFd1_rstpot_94 : STD_LOGIC; 
  signal valore_semaforo : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal cont_auto_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal current_state_FSM_FFd3_In3_113 : STD_LOGIC; 
  signal processo_clock_contatore_1_rstpot_151 : STD_LOGIC; 
  signal processo_clock_contatore_0_rstpot_147 : STD_LOGIC; 
  signal processo_clock_contatore_2_rstpot_127 : STD_LOGIC; 
  signal processo_clock_contatore_3_rstpot_125 : STD_LOGIC; 
  signal N4_pack_6 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal cont_auto_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal FEI_IBUF_20 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_3 : STD_LOGIC; 
  signal FUI_IBUF_9 : STD_LOGIC; 
  signal Pulsante_IBUF_12 : STD_LOGIC; 
  signal FEE_IBUF_17 : STD_LOGIC; 
  signal rst_IBUF_23 : STD_LOGIC; 
  signal FUE_IBUF_6 : STD_LOGIC; 
  signal NlwBufferSignal_current_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_current_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Sem_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_auto_current_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_current_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_processo_clock_contatore_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_processo_clock_contatore_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_processo_clock_contatore_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_processo_clock_contatore_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SbI_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_cont_auto_current_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SbU_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Sem_OBUF_I : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal processo_clock_contatore : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_current_state_FSM_FFd2_CLK,
      I => current_state_FSM_FFd2_rstpot_97,
      O => current_state_FSM_FFd2_168,
      RST => GND,
      SET => GND
    );
  current_state_FSM_FFd2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => current_state_FSM_FFd2_In1_165,
      ADR4 => rst_0,
      O => current_state_FSM_FFd2_rstpot_97
    );
  rst_01 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"DCCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => rst_IBUF_0,
      ADR4 => processo_clock_contatore(3),
      ADR5 => processo_clock_contatore(2),
      ADR3 => processo_clock_contatore(1),
      ADR0 => processo_clock_contatore(0),
      ADR2 => current_state_FSM_FFd3_170,
      O => rst_0
    );
  current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_current_state_FSM_FFd1_CLK,
      I => current_state_FSM_FFd1_rstpot_94,
      O => current_state_FSM_FFd1_169,
      RST => GND,
      SET => GND
    );
  current_state_FSM_FFd1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => current_state_FSM_FFd1_In1_171,
      ADR3 => rst_0,
      O => current_state_FSM_FFd1_rstpot_94
    );
  Sem_48 : X_FF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Sem_CLK,
      I => valore_semaforo,
      O => Sem_OBUF_177,
      RST => GND,
      SET => GND
    );
  cont_auto_libero1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => cont_auto_current_state_FSM_FFd1_181,
      O => valore_semaforo
    );
  cont_auto_current_state_FSM_FFd1_In1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y3"
    )
    port map (
      IA => N8,
      IB => N9,
      O => cont_auto_current_state_FSM_FFd1_In,
      SEL => current_state_FSM_FFd2_168
    );
  cont_auto_current_state_FSM_FFd1_In1_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"F1F0F0F0F0F0F0F0"
    )
    port map (
      ADR3 => cont_auto_current_state_FSM_FFd2_180,
      ADR1 => FEI_IBUF_0,
      ADR4 => current_state_FSM_FFd3_170,
      ADR5 => current_state_FSM_FFd1_169,
      ADR0 => FEE_IBUF_0,
      ADR2 => cont_auto_current_state_FSM_FFd1_181,
      O => N8
    );
  cont_auto_current_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_auto_current_state_FSM_FFd1_CLK,
      I => cont_auto_current_state_FSM_FFd1_In,
      O => cont_auto_current_state_FSM_FFd1_181,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cont_auto_current_state_FSM_FFd1_In1_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FA00FF00FA00FF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => FUE_IBUF_0,
      ADR3 => cont_auto_current_state_FSM_FFd1_181,
      ADR4 => current_state_FSM_FFd1_169,
      ADR0 => FUI_IBUF_0,
      O => N9
    );
  current_state_FSM_FFd3_In3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFFFFFF00FFAAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Pulsante_IBUF_0,
      ADR0 => FUI_IBUF_0,
      ADR4 => FUE_IBUF_0,
      ADR5 => cont_auto_current_state_FSM_FFd1_181,
      O => N2
    );
  current_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_current_state_FSM_FFd3_CLK,
      I => current_state_FSM_FFd3_In3_113,
      O => current_state_FSM_FFd3_170,
      SRST => rst_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  current_state_FSM_FFd3_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"C4CAC4CA00000002"
    )
    port map (
      ADR1 => FEI_IBUF_0,
      ADR3 => current_state_FSM_FFd1_169,
      ADR0 => FEE_IBUF_0,
      ADR5 => current_state_FSM_FFd3_170,
      ADR2 => current_state_FSM_FFd2_168,
      ADR4 => N2,
      O => current_state_FSM_FFd3_In3_113
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  processo_clock_contatore_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_processo_clock_contatore_3_CLK,
      I => processo_clock_contatore_3_rstpot_125,
      O => processo_clock_contatore(3),
      RST => GND,
      SET => GND
    );
  processo_clock_contatore_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"1030200010300000"
    )
    port map (
      ADR2 => current_state_FSM_FFd3_170,
      ADR1 => rst_IBUF_0,
      ADR3 => processo_clock_contatore(1),
      ADR4 => processo_clock_contatore(3),
      ADR0 => processo_clock_contatore(2),
      ADR5 => processo_clock_contatore(0),
      O => processo_clock_contatore_3_rstpot_125
    );
  processo_clock_contatore_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_processo_clock_contatore_2_CLK,
      I => processo_clock_contatore_2_rstpot_127,
      O => processo_clock_contatore(2),
      RST => GND,
      SET => GND
    );
  processo_clock_contatore_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"0010300030300000"
    )
    port map (
      ADR2 => current_state_FSM_FFd3_170,
      ADR1 => rst_IBUF_0,
      ADR3 => processo_clock_contatore(0),
      ADR4 => processo_clock_contatore(2),
      ADR0 => processo_clock_contatore(3),
      ADR5 => processo_clock_contatore(1),
      O => processo_clock_contatore_2_rstpot_127
    );
  processo_clock_contatore_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_processo_clock_contatore_1_CLK,
      I => processo_clock_contatore_1_rstpot_151,
      O => processo_clock_contatore(1),
      RST => GND,
      SET => GND
    );
  processo_clock_contatore_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"0100220011002200"
    )
    port map (
      ADR3 => current_state_FSM_FFd3_170,
      ADR1 => rst_IBUF_0,
      ADR0 => processo_clock_contatore(0),
      ADR4 => processo_clock_contatore(1),
      ADR5 => processo_clock_contatore(2),
      ADR2 => processo_clock_contatore(3),
      O => processo_clock_contatore_1_rstpot_151
    );
  processo_clock_contatore_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_processo_clock_contatore_0_CLK,
      I => processo_clock_contatore_0_rstpot_147,
      O => processo_clock_contatore(0),
      RST => GND,
      SET => GND
    );
  processo_clock_contatore_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"C0C0D0F0C0C0F0F0"
    )
    port map (
      ADR2 => current_state_FSM_FFd3_170,
      ADR3 => processo_clock_contatore(2),
      ADR5 => processo_clock_contatore(3),
      ADR4 => processo_clock_contatore(0),
      ADR0 => processo_clock_contatore(1),
      ADR1 => rst_IBUF_0,
      O => processo_clock_contatore_0_rstpot_147
    );
  SbI_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_SbI_OBUF_I,
      O => SbI
    );
  N01_N01_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N4_pack_6,
      O => N4
    );
  current_state_FSM_FFd1_In1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"F0F0FFFFF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => FEE_IBUF_0,
      ADR4 => FEI_IBUF_0,
      ADR5 => '1',
      O => N01
    );
  current_state_FSM_FFd2_In1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => FEE_IBUF_0,
      ADR4 => FEI_IBUF_0,
      O => N4_pack_6
    );
  current_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"20FF00F02A2A8080"
    )
    port map (
      ADR3 => N01,
      ADR1 => FUI_IBUF_0,
      ADR0 => FUE_IBUF_0,
      ADR2 => current_state_FSM_FFd2_168,
      ADR4 => current_state_FSM_FFd1_169,
      ADR5 => current_state_FSM_FFd3_170,
      O => current_state_FSM_FFd1_In1_171
    );
  current_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"C0E000AACCCC5500"
    )
    port map (
      ADR0 => FUE_IBUF_0,
      ADR3 => FUI_IBUF_0,
      ADR1 => N4,
      ADR2 => current_state_FSM_FFd2_168,
      ADR5 => current_state_FSM_FFd1_169,
      ADR4 => current_state_FSM_FFd3_170,
      O => current_state_FSM_FFd2_In1_165
    );
  cont_auto_current_state_FSM_FFd2_In1 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y3"
    )
    port map (
      IA => N6,
      IB => N7,
      O => cont_auto_current_state_FSM_FFd2_In,
      SEL => current_state_FSM_FFd2_168
    );
  cont_auto_current_state_FSM_FFd2_In1_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FFFFFFFFF1F0F0F0"
    )
    port map (
      ADR2 => cont_auto_current_state_FSM_FFd2_180,
      ADR5 => cont_auto_current_state_FSM_FFd1_181,
      ADR1 => FEI_IBUF_0,
      ADR3 => current_state_FSM_FFd3_170,
      ADR4 => current_state_FSM_FFd1_169,
      ADR0 => FEE_IBUF_0,
      O => N6
    );
  cont_auto_current_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_auto_current_state_FSM_FFd2_CLK,
      I => cont_auto_current_state_FSM_FFd2_In,
      O => cont_auto_current_state_FSM_FFd2_180,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cont_auto_current_state_FSM_FFd2_In1_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FFFFFFFFFCFF0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => FUE_IBUF_0,
      ADR3 => current_state_FSM_FFd1_169,
      ADR4 => cont_auto_current_state_FSM_FFd2_180,
      ADR1 => FUI_IBUF_0,
      ADR5 => cont_auto_current_state_FSM_FFd1_181,
      O => N7
    );
  current_state_n0084_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FF000000FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => current_state_FSM_FFd1_169,
      ADR3 => current_state_FSM_FFd2_168,
      ADR5 => current_state_FSM_FFd3_170,
      O => SbU_OBUF_174
    );
  FEI_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 240 ps
    )
    port map (
      O => FEI_IBUF_20,
      I => FEI
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 240 ps
    )
    port map (
      I => FEI_IBUF_20,
      O => FEI_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_3,
      I => clk
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_3,
      O => clk_BUFGP_IBUFG_0
    );
  SbU_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_SbU_OBUF_I,
      O => SbU
    );
  FUI_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      O => FUI_IBUF_9,
      I => FUI
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      I => FUI_IBUF_9,
      O => FUI_IBUF_0
    );
  Pulsante_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      O => Pulsante_IBUF_12,
      I => Pulsante
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      I => Pulsante_IBUF_12,
      O => Pulsante_IBUF_0
    );
  FEE_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 240 ps
    )
    port map (
      O => FEE_IBUF_17,
      I => FEE
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 240 ps
    )
    port map (
      I => FEE_IBUF_17,
      O => FEE_IBUF_0
    );
  Sem_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_Sem_OBUF_I,
      O => Sem
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      O => rst_IBUF_23,
      I => rst
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      I => rst_IBUF_23,
      O => rst_IBUF_0
    );
  FUE_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 240 ps
    )
    port map (
      O => FUE_IBUF_6,
      I => FUE
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 240 ps
    )
    port map (
      I => FUE_IBUF_6,
      O => FUE_IBUF_0
    );
  NlwBufferBlock_current_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_current_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_current_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_current_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_Sem_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Sem_CLK
    );
  NlwBufferBlock_cont_auto_current_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_auto_current_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_current_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_current_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_processo_clock_contatore_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_processo_clock_contatore_3_CLK
    );
  NlwBufferBlock_processo_clock_contatore_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_processo_clock_contatore_2_CLK
    );
  NlwBufferBlock_processo_clock_contatore_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_processo_clock_contatore_1_CLK
    );
  NlwBufferBlock_processo_clock_contatore_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_processo_clock_contatore_0_CLK
    );
  NlwBufferBlock_SbI_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => current_state_FSM_FFd3_170,
      O => NlwBufferSignal_SbI_OBUF_I
    );
  NlwBufferBlock_cont_auto_current_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_auto_current_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_SbU_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => SbU_OBUF_174,
      O => NlwBufferSignal_SbU_OBUF_I
    );
  NlwBufferBlock_Sem_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Sem_OBUF_177,
      O => NlwBufferSignal_Sem_OBUF_I
    );
  NlwBlock_Parcheggio_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Parcheggio_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

