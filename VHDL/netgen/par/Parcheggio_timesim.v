////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Parcheggio_timesim.v
// /___/   /\     Timestamp: Tue Feb 04 10:30:39 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf Parcheggio.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Parcheggio.ncd Parcheggio_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: Parcheggio.ncd
// Output file	: D:\ProgettoTD_Traccia9_Canzolino_Gianluca\netgen\par\Parcheggio_timesim.v
// # of Modules	: 1
// Design Name	: Parcheggio
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Parcheggio (
  clk, rst, FEE, FEI, FUE, FUI, Pulsante, SbI, SbU, Sem
);
  input clk;
  input rst;
  input FEE;
  input FEI;
  input FUE;
  input FUI;
  input Pulsante;
  output SbI;
  output SbU;
  output Sem;
  wire \current_state_FSM_FFd2-In1_165 ;
  wire FUE_IBUF_0;
  wire FUI_IBUF_0;
  wire current_state_FSM_FFd2_168;
  wire current_state_FSM_FFd1_169;
  wire current_state_FSM_FFd3_170;
  wire \current_state_FSM_FFd1-In1_171 ;
  wire FEE_IBUF_0;
  wire FEI_IBUF_0;
  wire SbU_OBUF_174;
  wire \clk_BUFGP/IBUFG_0 ;
  wire Pulsante_IBUF_0;
  wire Sem_OBUF_177;
  wire rst_IBUF_0;
  wire clk_BUFGP;
  wire \cont_auto/current_state_FSM_FFd2_180 ;
  wire \cont_auto/current_state_FSM_FFd1_181 ;
  wire rst_0;
  wire N4;
  wire N01;
  wire N2;
  wire FEE_IBUF_18;
  wire Pulsante_IBUF_13;
  wire \clk_BUFGP/IBUFG_4 ;
  wire FUI_IBUF_10;
  wire FUE_IBUF_7;
  wire FEI_IBUF_21;
  wire N6;
  wire \cont_auto/current_state_FSM_FFd2-In ;
  wire N7;
  wire rst_IBUF_24;
  wire valore_semaforo;
  wire current_state_FSM_FFd1_rstpot_98;
  wire current_state_FSM_FFd2_rstpot_96;
  wire N4_pack_6;
  wire \current_state_FSM_FFd3-In3_108 ;
  wire N9;
  wire \cont_auto/current_state_FSM_FFd1-In ;
  wire N8;
  wire \processo_clock.contatore_1_rstpot_153 ;
  wire \processo_clock.contatore_0_rstpot_145 ;
  wire \processo_clock.contatore_3_rstpot_131 ;
  wire \processo_clock.contatore_2_rstpot_123 ;
  wire \NlwBufferSignal_Sem_OBUF/I ;
  wire \NlwBufferSignal_SbU_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_cont_auto/current_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_SbI_OBUF/I ;
  wire \NlwBufferSignal_Sem/CLK ;
  wire \NlwBufferSignal_current_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_current_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_current_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_cont_auto/current_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_processo_clock.contatore_3/CLK ;
  wire \NlwBufferSignal_processo_clock.contatore_2/CLK ;
  wire \NlwBufferSignal_processo_clock.contatore_1/CLK ;
  wire \NlwBufferSignal_processo_clock.contatore_0/CLK ;
  wire VCC;
  wire GND;
  wire [3 : 0] \processo_clock.contatore ;
  initial $sdf_annotate("netgen/par/parcheggio_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD135" ))
  \Sem.PAD  (
    .PAD(Sem)
  );
  X_OBUF #(
    .LOC ( "PAD135" ))
  Sem_OBUF (
    .I(\NlwBufferSignal_Sem_OBUF/I ),
    .O(Sem)
  );
  X_IPAD #(
    .LOC ( "PAD138" ))
  FEE_26 (
    .PAD(FEE)
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  FEE_IBUF (
    .O(FEE_IBUF_18),
    .I(FEE)
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  \ProtoComp2.IMUX.4  (
    .I(FEE_IBUF_18),
    .O(FEE_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD136" ))
  SbU_3 (
    .PAD(SbU)
  );
  X_OBUF #(
    .LOC ( "PAD136" ))
  SbU_OBUF (
    .I(\NlwBufferSignal_SbU_OBUF/I ),
    .O(SbU)
  );
  X_IPAD #(
    .LOC ( "PAD121" ))
  Pulsante_19 (
    .PAD(Pulsante)
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  Pulsante_IBUF (
    .O(Pulsante_IBUF_13),
    .I(Pulsante)
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  \ProtoComp2.IMUX.3  (
    .I(Pulsante_IBUF_13),
    .O(Pulsante_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD172" ))
  clk_7 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_4 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \ProtoComp2.IMUX  (
    .I(\clk_BUFGP/IBUFG_4 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_IPAD #(
    .LOC ( "PAD122" ))
  FUI_15 (
    .PAD(FUI)
  );
  X_BUF #(
    .LOC ( "PAD122" ))
  FUI_IBUF (
    .O(FUI_IBUF_10),
    .I(FUI)
  );
  X_BUF #(
    .LOC ( "PAD122" ))
  \ProtoComp2.IMUX.2  (
    .I(FUI_IBUF_10),
    .O(FUI_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD134" ))
  FUE_11 (
    .PAD(FUE)
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  FUE_IBUF (
    .O(FUE_IBUF_7),
    .I(FUE)
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  \ProtoComp2.IMUX.1  (
    .I(FUE_IBUF_7),
    .O(FUE_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD144" ))
  FEI_30 (
    .PAD(FEI)
  );
  X_BUF #(
    .LOC ( "PAD144" ))
  FEI_IBUF (
    .O(FEI_IBUF_21),
    .I(FEI)
  );
  X_BUF #(
    .LOC ( "PAD144" ))
  \ProtoComp2.IMUX.5  (
    .I(FEI_IBUF_21),
    .O(FEI_IBUF_0)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y3" ))
  \cont_auto/current_state_FSM_FFd2-In1  (
    .IA(N6),
    .IB(N7),
    .O(\cont_auto/current_state_FSM_FFd2-In ),
    .SEL(current_state_FSM_FFd2_168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y3" ),
    .INIT ( 64'hFFFFFFFFF1F0F0F0 ))
  \cont_auto/current_state_FSM_FFd2-In1_F  (
    .ADR2(\cont_auto/current_state_FSM_FFd2_180 ),
    .ADR5(\cont_auto/current_state_FSM_FFd1_181 ),
    .ADR1(FEI_IBUF_0),
    .ADR3(current_state_FSM_FFd3_170),
    .ADR4(current_state_FSM_FFd1_169),
    .ADR0(FEE_IBUF_0),
    .O(N6)
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y3" ),
    .INIT ( 1'b0 ))
  \cont_auto/current_state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cont_auto/current_state_FSM_FFd2/CLK ),
    .I(\cont_auto/current_state_FSM_FFd2-In ),
    .O(\cont_auto/current_state_FSM_FFd2_180 ),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y3" ),
    .INIT ( 64'hFFFFFFFFFCFF0000 ))
  \cont_auto/current_state_FSM_FFd2-In1_G  (
    .ADR0(1'b1),
    .ADR2(FUE_IBUF_0),
    .ADR3(current_state_FSM_FFd1_169),
    .ADR4(\cont_auto/current_state_FSM_FFd2_180 ),
    .ADR1(FUI_IBUF_0),
    .ADR5(\cont_auto/current_state_FSM_FFd1_181 ),
    .O(N7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y3" ),
    .INIT ( 64'hFF000000FFFFFF00 ))
  \current_state__n0084<1>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(current_state_FSM_FFd1_169),
    .ADR3(current_state_FSM_FFd2_168),
    .ADR5(current_state_FSM_FFd3_170),
    .O(SbU_OBUF_174)
  );
  X_IPAD #(
    .LOC ( "PAD133" ))
  rst_34 (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  rst_IBUF (
    .O(rst_IBUF_24),
    .I(rst)
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  \ProtoComp2.IMUX.6  (
    .I(rst_IBUF_24),
    .O(rst_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD137" ))
  SbI_37 (
    .PAD(SbI)
  );
  X_OBUF #(
    .LOC ( "PAD137" ))
  SbI_OBUF (
    .I(\NlwBufferSignal_SbI_OBUF/I ),
    .O(SbI)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y2" ),
    .INIT ( 1'b0 ))
  Sem_48 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sem/CLK ),
    .I(valore_semaforo),
    .O(Sem_OBUF_177),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y2" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \cont_auto/libero1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(\cont_auto/current_state_FSM_FFd1_181 ),
    .O(valore_semaforo)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  current_state_FSM_FFd2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_current_state_FSM_FFd2/CLK ),
    .I(current_state_FSM_FFd2_rstpot_96),
    .O(current_state_FSM_FFd2_168),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'h0000FFFF00000000 ))
  current_state_FSM_FFd2_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\current_state_FSM_FFd2-In1_165 ),
    .ADR4(rst_0),
    .O(current_state_FSM_FFd2_rstpot_96)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'hDCCCCCCCCCCCCCCC ))
  rst_01 (
    .ADR1(rst_IBUF_0),
    .ADR4(\processo_clock.contatore [3]),
    .ADR5(\processo_clock.contatore [2]),
    .ADR3(\processo_clock.contatore [1]),
    .ADR0(\processo_clock.contatore [0]),
    .ADR2(current_state_FSM_FFd3_170),
    .O(rst_0)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  current_state_FSM_FFd1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_current_state_FSM_FFd1/CLK ),
    .I(current_state_FSM_FFd1_rstpot_98),
    .O(current_state_FSM_FFd1_169),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'h00FF000000FF0000 ))
  current_state_FSM_FFd1_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\current_state_FSM_FFd1-In1_171 ),
    .ADR3(rst_0),
    .O(current_state_FSM_FFd1_rstpot_98)
  );
  X_BUF   \N01/N01_CMUX_Delay  (
    .I(N4_pack_6),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y3" ),
    .INIT ( 64'hF0F0FFFFF0F0FFFF ))
  \current_state_FSM_FFd1-In1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(FEE_IBUF_0),
    .ADR4(FEI_IBUF_0),
    .ADR5(1'b1),
    .O(N01)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y3" ),
    .INIT ( 32'hF0F00000 ))
  \current_state_FSM_FFd2-In1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(FEE_IBUF_0),
    .ADR4(FEI_IBUF_0),
    .O(N4_pack_6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y3" ),
    .INIT ( 64'h20FF00F02A2A8080 ))
  \current_state_FSM_FFd1-In1  (
    .ADR3(N01),
    .ADR1(FUI_IBUF_0),
    .ADR0(FUE_IBUF_0),
    .ADR2(current_state_FSM_FFd2_168),
    .ADR4(current_state_FSM_FFd1_169),
    .ADR5(current_state_FSM_FFd3_170),
    .O(\current_state_FSM_FFd1-In1_171 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y3" ),
    .INIT ( 64'hC0E000AACCCC5500 ))
  \current_state_FSM_FFd2-In1  (
    .ADR0(FUE_IBUF_0),
    .ADR3(FUI_IBUF_0),
    .ADR1(N4),
    .ADR2(current_state_FSM_FFd2_168),
    .ADR5(current_state_FSM_FFd1_169),
    .ADR4(current_state_FSM_FFd3_170),
    .O(\current_state_FSM_FFd2-In1_165 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y3" ),
    .INIT ( 64'hFFFFFFFF00FFAAFF ))
  \current_state_FSM_FFd3-In3_SW0  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(Pulsante_IBUF_0),
    .ADR0(FUI_IBUF_0),
    .ADR4(FUE_IBUF_0),
    .ADR5(\cont_auto/current_state_FSM_FFd1_181 ),
    .O(N2)
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y3" ),
    .INIT ( 1'b0 ))
  current_state_FSM_FFd3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_current_state_FSM_FFd3/CLK ),
    .I(\current_state_FSM_FFd3-In3_108 ),
    .O(current_state_FSM_FFd3_170),
    .SRST(rst_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y3" ),
    .INIT ( 64'hC4CAC4CA00000002 ))
  \current_state_FSM_FFd3-In3  (
    .ADR1(FEI_IBUF_0),
    .ADR3(current_state_FSM_FFd1_169),
    .ADR0(FEE_IBUF_0),
    .ADR5(current_state_FSM_FFd3_170),
    .ADR2(current_state_FSM_FFd2_168),
    .ADR4(N2),
    .O(\current_state_FSM_FFd3-In3_108 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y3" ))
  \cont_auto/current_state_FSM_FFd1-In1  (
    .IA(N8),
    .IB(N9),
    .O(\cont_auto/current_state_FSM_FFd1-In ),
    .SEL(current_state_FSM_FFd2_168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y3" ),
    .INIT ( 64'hF1F0F0F0F0F0F0F0 ))
  \cont_auto/current_state_FSM_FFd1-In1_F  (
    .ADR3(\cont_auto/current_state_FSM_FFd2_180 ),
    .ADR1(FEI_IBUF_0),
    .ADR4(current_state_FSM_FFd3_170),
    .ADR5(current_state_FSM_FFd1_169),
    .ADR0(FEE_IBUF_0),
    .ADR2(\cont_auto/current_state_FSM_FFd1_181 ),
    .O(N8)
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y3" ),
    .INIT ( 1'b0 ))
  \cont_auto/current_state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cont_auto/current_state_FSM_FFd1/CLK ),
    .I(\cont_auto/current_state_FSM_FFd1-In ),
    .O(\cont_auto/current_state_FSM_FFd1_181 ),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y3" ),
    .INIT ( 64'hFA00FF00FA00FF00 ))
  \cont_auto/current_state_FSM_FFd1-In1_G  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(FUE_IBUF_0),
    .ADR3(\cont_auto/current_state_FSM_FFd1_181 ),
    .ADR4(current_state_FSM_FFd1_169),
    .ADR0(FUI_IBUF_0),
    .O(N9)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 1'b0 ))
  \processo_clock.contatore_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_processo_clock.contatore_3/CLK ),
    .I(\processo_clock.contatore_3_rstpot_131 ),
    .O(\processo_clock.contatore [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 64'h1030200010300000 ))
  \processo_clock.contatore_3_rstpot  (
    .ADR2(current_state_FSM_FFd3_170),
    .ADR1(rst_IBUF_0),
    .ADR3(\processo_clock.contatore [1]),
    .ADR4(\processo_clock.contatore [3]),
    .ADR0(\processo_clock.contatore [2]),
    .ADR5(\processo_clock.contatore [0]),
    .O(\processo_clock.contatore_3_rstpot_131 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 1'b0 ))
  \processo_clock.contatore_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_processo_clock.contatore_2/CLK ),
    .I(\processo_clock.contatore_2_rstpot_123 ),
    .O(\processo_clock.contatore [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 64'h0010300030300000 ))
  \processo_clock.contatore_2_rstpot  (
    .ADR2(current_state_FSM_FFd3_170),
    .ADR1(rst_IBUF_0),
    .ADR3(\processo_clock.contatore [0]),
    .ADR4(\processo_clock.contatore [2]),
    .ADR0(\processo_clock.contatore [3]),
    .ADR5(\processo_clock.contatore [1]),
    .O(\processo_clock.contatore_2_rstpot_123 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 1'b0 ))
  \processo_clock.contatore_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_processo_clock.contatore_1/CLK ),
    .I(\processo_clock.contatore_1_rstpot_153 ),
    .O(\processo_clock.contatore [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 64'h0100220011002200 ))
  \processo_clock.contatore_1_rstpot  (
    .ADR3(current_state_FSM_FFd3_170),
    .ADR1(rst_IBUF_0),
    .ADR0(\processo_clock.contatore [0]),
    .ADR4(\processo_clock.contatore [1]),
    .ADR5(\processo_clock.contatore [2]),
    .ADR2(\processo_clock.contatore [3]),
    .O(\processo_clock.contatore_1_rstpot_153 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 1'b0 ))
  \processo_clock.contatore_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_processo_clock.contatore_0/CLK ),
    .I(\processo_clock.contatore_0_rstpot_145 ),
    .O(\processo_clock.contatore [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y4" ),
    .INIT ( 64'hC0C0D0F0C0C0F0F0 ))
  \processo_clock.contatore_0_rstpot  (
    .ADR2(current_state_FSM_FFd3_170),
    .ADR3(\processo_clock.contatore [2]),
    .ADR5(\processo_clock.contatore [3]),
    .ADR4(\processo_clock.contatore [0]),
    .ADR0(\processo_clock.contatore [1]),
    .ADR1(rst_IBUF_0),
    .O(\processo_clock.contatore_0_rstpot_145 )
  );
  X_BUF   \NlwBufferBlock_Sem_OBUF/I  (
    .I(Sem_OBUF_177),
    .O(\NlwBufferSignal_Sem_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_SbU_OBUF/I  (
    .I(SbU_OBUF_174),
    .O(\NlwBufferSignal_SbU_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_cont_auto/current_state_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_cont_auto/current_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_SbI_OBUF/I  (
    .I(current_state_FSM_FFd3_170),
    .O(\NlwBufferSignal_SbI_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sem/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sem/CLK )
  );
  X_BUF   \NlwBufferBlock_current_state_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_current_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_current_state_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_current_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_current_state_FSM_FFd3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_current_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_cont_auto/current_state_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_cont_auto/current_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_processo_clock.contatore_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_processo_clock.contatore_3/CLK )
  );
  X_BUF   \NlwBufferBlock_processo_clock.contatore_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_processo_clock.contatore_2/CLK )
  );
  X_BUF   \NlwBufferBlock_processo_clock.contatore_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_processo_clock.contatore_1/CLK )
  );
  X_BUF   \NlwBufferBlock_processo_clock.contatore_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_processo_clock.contatore_0/CLK )
  );
  X_ONE   NlwBlock_Parcheggio_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Parcheggio_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

