// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  7 03:06:36 2024
// Host        : omar_ragab running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/Digital design diploma/Projects/Project2/SPI_Netlist.v}
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    MISO_reg,
    clk_IBUF_BUFG,
    rx_valid,
    \rx_data_reg[9] ,
    rst_n,
    D,
    WEA,
    tx_valid_reg_0,
    Q,
    count_switch_reg,
    E);
  output tx_valid;
  output MISO_reg;
  input clk_IBUF_BUFG;
  input rx_valid;
  input \rx_data_reg[9] ;
  input rst_n;
  input [7:0]D;
  input [0:0]WEA;
  input tx_valid_reg_0;
  input [3:0]Q;
  input count_switch_reg;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire count_switch_reg;
  wire [7:0]dout;
  wire rst_n;
  wire \rx_data_reg[9] ;
  wire rx_valid;
  wire [7:0]temp_address;
  wire tx_valid;
  wire tx_valid_reg_0;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(Q[0]),
        .I2(MISO_i_4_n_0),
        .I3(tx_valid),
        .I4(count_switch_reg),
        .I5(Q[3]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(dout[1]),
        .I1(dout[5]),
        .I2(Q[1]),
        .I3(dout[3]),
        .I4(Q[2]),
        .I5(dout[7]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(dout[0]),
        .I1(dout[4]),
        .I2(Q[1]),
        .I3(dout[2]),
        .I4(Q[2]),
        .I5(dout[6]),
        .O(MISO_i_4_n_0));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,temp_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,temp_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(dout),
        .ENARDEN(rx_valid),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(temp_address[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(temp_address[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(temp_address[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(temp_address[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(temp_address[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(temp_address[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(temp_address[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \temp_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(temp_address[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module SPI
   (MISO_OBUF,
    rx_valid_reg_0,
    count_switch_reg_0,
    rx_valid,
    WEA,
    D,
    Q,
    tx_valid_reg,
    mem_reg,
    E,
    MOSI_IBUF,
    clk_IBUF_BUFG,
    \bit_count2_reg[0]_0 ,
    rst_n_IBUF,
    tx_valid,
    SS_n_IBUF);
  output MISO_OBUF;
  output rx_valid_reg_0;
  output count_switch_reg_0;
  output rx_valid;
  output [0:0]WEA;
  output [7:0]D;
  output [3:0]Q;
  output tx_valid_reg;
  output mem_reg;
  output [0:0]E;
  input MOSI_IBUF;
  input clk_IBUF_BUFG;
  input \bit_count2_reg[0]_0 ;
  input rst_n_IBUF;
  input tx_valid;
  input SS_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_ns_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_ns_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_4_n_0 ;
  wire GND_2;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MOSI_IBUF;
  wire [3:0]Q;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire [3:0]bit_count;
  wire [3:1]bit_count2;
  wire \bit_count2[0]_i_1_n_0 ;
  wire \bit_count2[3]_i_1_n_0 ;
  wire \bit_count2_reg[0]_0 ;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[1]_i_2_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[3]_i_2_n_0 ;
  wire \bit_count[3]_i_3_n_0 ;
  wire \bit_count[3]_i_4_n_0 ;
  wire \bit_count[3]_i_5_n_0 ;
  wire clk_IBUF_BUFG;
  wire count_switch_i_1_n_0;
  wire count_switch_reg_0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire [2:0]ns;
  wire read_i_1_n_0;
  wire read_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[0]_i_2_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[1]_i_2_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_2_n_0 ;
  wire \rx_data[8]_i_3_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire rx_temp;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_reg_0;
  wire tx_valid;
  wire tx_valid_reg;

  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:100,IDLE:000,READ_DATA:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(ns[0]),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:100,IDLE:000,READ_DATA:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(ns[1]),
        .Q(cs[1]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:100,IDLE:000,READ_DATA:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(ns[2]),
        .Q(cs[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[0] 
       (.CLR(GND_2),
        .D(\FSM_sequential_ns_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_ns_reg[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_sequential_ns_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_ns_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA3FFFFFFF00)) 
    \FSM_sequential_ns_reg[0]_i_2 
       (.I0(Q[3]),
        .I1(read_reg_n_0),
        .I2(MOSI_IBUF),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(cs[0]),
        .O(\FSM_sequential_ns_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[1] 
       (.CLR(GND_2),
        .D(\FSM_sequential_ns_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[1]));
  LUT6 #(
    .INIT(64'h10FF500010005000)) 
    \FSM_sequential_ns_reg[1]_i_1 
       (.I0(SS_n_IBUF),
        .I1(Q[3]),
        .I2(\FSM_sequential_ns_reg[2]_i_3_n_0 ),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(\FSM_sequential_ns_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[2] 
       (.CLR(GND_2),
        .D(\FSM_sequential_ns_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[2]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \FSM_sequential_ns_reg[2]_i_1 
       (.I0(\FSM_sequential_ns_reg[2]_i_3_n_0 ),
        .I1(SS_n_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(\FSM_sequential_ns_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_ns_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \FSM_sequential_ns_reg[2]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\FSM_sequential_ns_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_ns_reg[2]_i_3 
       (.I0(cs[1]),
        .I1(MOSI_IBUF),
        .I2(read_reg_n_0),
        .O(\FSM_sequential_ns_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \FSM_sequential_ns_reg[2]_i_4 
       (.I0(SS_n_IBUF),
        .I1(bit_count[1]),
        .I2(bit_count[2]),
        .I3(bit_count[3]),
        .O(\FSM_sequential_ns_reg[2]_i_4_n_0 ));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT3 #(
    .INIT(8'h40)) 
    MISO_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(MISO_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .CLR(rx_valid_reg_0),
        .D(\bit_count2_reg[0]_0 ),
        .Q(MISO_OBUF));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT3 #(
    .INIT(8'h54)) 
    \bit_count2[0]_i_1 
       (.I0(Q[0]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\bit_count2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \bit_count2[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(bit_count2[1]));
  LUT5 #(
    .INIT(32'h78787800)) 
    \bit_count2[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(cs[1]),
        .I4(cs[0]),
        .O(bit_count2[2]));
  LUT6 #(
    .INIT(64'h0101010141010101)) 
    \bit_count2[3]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(count_switch_reg_0),
        .I5(Q[3]),
        .O(\bit_count2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \bit_count2[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(bit_count2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count2[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\bit_count2[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count2[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(bit_count2[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count2[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(bit_count2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count2[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(bit_count2[3]),
        .Q(Q[3]));
  LUT5 #(
    .INIT(32'h000012FE)) 
    \bit_count[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(\bit_count[1]_i_2_n_0 ),
        .I4(bit_count[0]),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000012FE12FE0000)) 
    \bit_count[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(\bit_count[1]_i_2_n_0 ),
        .I4(bit_count[1]),
        .I5(bit_count[0]),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bit_count[1]_i_2 
       (.I0(tx_valid),
        .I1(count_switch_reg_0),
        .I2(Q[3]),
        .O(\bit_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[3]_i_5_n_0 ),
        .I1(bit_count[1]),
        .I2(bit_count[0]),
        .I3(bit_count[2]),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000D00)) 
    \bit_count[3]_i_1 
       (.I0(bit_count[3]),
        .I1(\bit_count[3]_i_3_n_0 ),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(count_switch_reg_0),
        .I5(\bit_count[3]_i_4_n_0 ),
        .O(\bit_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bit_count[3]_i_2 
       (.I0(\bit_count[3]_i_5_n_0 ),
        .I1(bit_count[2]),
        .I2(bit_count[0]),
        .I3(bit_count[1]),
        .I4(bit_count[3]),
        .O(\bit_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_count[3]_i_3 
       (.I0(bit_count[2]),
        .I1(bit_count[1]),
        .I2(bit_count[0]),
        .O(\bit_count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000800FF0000FFFF)) 
    \bit_count[3]_i_4 
       (.I0(tx_valid),
        .I1(count_switch_reg_0),
        .I2(Q[3]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\bit_count[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7FFF7F7FF00)) 
    \bit_count[3]_i_5 
       (.I0(tx_valid),
        .I1(count_switch_reg_0),
        .I2(Q[3]),
        .I3(cs[1]),
        .I4(cs[0]),
        .I5(cs[2]),
        .O(\bit_count[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(bit_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(bit_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(bit_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\bit_count[3]_i_2_n_0 ),
        .Q(bit_count[3]));
  LUT5 #(
    .INIT(32'hFFFC1000)) 
    count_switch_i_1
       (.I0(\rx_data[0]_i_2_n_0 ),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(count_switch_reg_0),
        .O(count_switch_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    count_switch_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(count_switch_i_1_n_0),
        .Q(count_switch_reg_0));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(mem_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .O(rx_valid_reg_0));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_3
       (.I0(rst_n_IBUF),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT4 #(
    .INIT(16'hF710)) 
    read_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(read_reg_n_0),
        .O(read_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(read_i_1_n_0),
        .Q(read_reg_n_0));
  LUT5 #(
    .INIT(32'h33320002)) 
    \rx_data[0]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[8]_i_2_n_0 ),
        .I3(\rx_data[0]_i_2_n_0 ),
        .I4(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \rx_data[0]_i_2 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[3]),
        .I3(bit_count[2]),
        .O(\rx_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \rx_data[1]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[4]_i_2_n_0 ),
        .I3(\rx_data[5]_i_2_n_0 ),
        .I4(\rx_data[1]_i_2_n_0 ),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[1]_i_2 
       (.I0(bit_count[2]),
        .I1(bit_count[3]),
        .O(\rx_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \rx_data[2]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(bit_count[2]),
        .I4(\rx_data[6]_i_2_n_0 ),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h32330200)) 
    \rx_data[3]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[7]_i_2_n_0 ),
        .I3(bit_count[2]),
        .I4(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \rx_data[4]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[4]_i_2_n_0 ),
        .I3(bit_count[2]),
        .I4(\rx_data[8]_i_3_n_0 ),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA8A)) 
    \rx_data[4]_i_2 
       (.I0(cs[0]),
        .I1(count_switch_reg_0),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \rx_data[5]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(bit_count[2]),
        .I4(\rx_data[5]_i_2_n_0 ),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[5]_i_2 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \rx_data[6]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(bit_count[2]),
        .I4(\rx_data[6]_i_2_n_0 ),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_data[6]_i_2 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h33320002)) 
    \rx_data[7]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[7]_i_2_n_0 ),
        .I3(bit_count[2]),
        .I4(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[7]_i_2 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .I2(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \rx_data[8]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[8]_i_2_n_0 ),
        .I3(bit_count[2]),
        .I4(\rx_data[8]_i_3_n_0 ),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCEFCCFFF0EF00)) 
    \rx_data[8]_i_2 
       (.I0(count_switch_reg_0),
        .I1(bit_count[3]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .I5(bit_count[2]),
        .O(\rx_data[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \rx_data[8]_i_3 
       (.I0(bit_count[3]),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .O(\rx_data[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h32330200)) 
    \rx_data[9]_i_1 
       (.I0(rx_temp),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(\bit_count[3]_i_3_n_0 ),
        .I4(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_data[9]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(\rx_data[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFEAEA)) 
    \rx_data[9]_i_3 
       (.I0(bit_count[3]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(count_switch_reg_0),
        .I4(cs[0]),
        .O(\rx_data[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]));
  FDRE #(
    .INIT(1'b0)) 
    rx_temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(MOSI_IBUF),
        .Q(rx_temp),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFAF27AA00050700)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(\bit_count[1]_i_2_n_0 ),
        .I2(\rx_data[0]_i_2_n_0 ),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_address[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF2A20000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(rx_data[9]),
        .I3(rx_data[8]),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire ram_inst_n_1;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_valid;
  wire spi_inst_n_1;
  wire spi_inst_n_13;
  wire spi_inst_n_14;
  wire spi_inst_n_15;
  wire spi_inst_n_16;
  wire spi_inst_n_17;
  wire spi_inst_n_18;
  wire spi_inst_n_19;
  wire spi_inst_n_2;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ram_inst
       (.D(rx_data),
        .E(spi_inst_n_19),
        .MISO_reg(ram_inst_n_1),
        .Q({spi_inst_n_13,spi_inst_n_14,spi_inst_n_15,spi_inst_n_16}),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_switch_reg(spi_inst_n_2),
        .rst_n(spi_inst_n_1),
        .\rx_data_reg[9] (spi_inst_n_18),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(spi_inst_n_17));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI spi_inst
       (.D(rx_data),
        .E(spi_inst_n_19),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({spi_inst_n_13,spi_inst_n_14,spi_inst_n_15,spi_inst_n_16}),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\bit_count2_reg[0]_0 (ram_inst_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_switch_reg_0(spi_inst_n_2),
        .mem_reg(spi_inst_n_18),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .rx_valid_reg_0(spi_inst_n_1),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi_inst_n_17));
endmodule
