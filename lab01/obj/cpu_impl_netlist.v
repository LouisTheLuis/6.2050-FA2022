// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Sep 12 17:40:24 2022
// Host        : EECS-DIGITAL-14 running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force obj/cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (out,
    gt_out,
    eq_out,
    \sw[7] ,
    DI,
    O,
    res_out_inferred_i_199_0,
    res_out_inferred_i_199_1,
    sw_IBUF,
    CO,
    res_out_inferred_i_42_0,
    res_out_inferred_i_47_0,
    res_out_inferred_i_42_1,
    res_out_inferred_i_42_2,
    btnr_IBUF,
    btnu_IBUF,
    btnl_IBUF);
  output [15:0]out;
  output gt_out;
  output eq_out;
  output [0:0]\sw[7] ;
  output [3:0]DI;
  output [1:0]O;
  output [1:0]res_out_inferred_i_199_0;
  output [0:0]res_out_inferred_i_199_1;
  input [15:0]sw_IBUF;
  input [0:0]CO;
  input [0:0]res_out_inferred_i_42_0;
  input [2:0]res_out_inferred_i_47_0;
  input [3:0]res_out_inferred_i_42_1;
  input [0:0]res_out_inferred_i_42_2;
  input btnr_IBUF;
  input btnu_IBUF;
  input btnl_IBUF;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [1:0]O;
  wire btnl_IBUF;
  wire btnr_IBUF;
  wire btnu_IBUF;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [15:0]data2;
  wire [6:0]data3;
  (* RTL_KEEP = "true" *) wire eq_out;
  wire eq_out_inferred_i_2_n_0;
  wire eq_out_inferred_i_3_n_0;
  wire eq_out_inferred_i_4_n_0;
  wire eq_out_inferred_i_5_n_0;
  (* RTL_KEEP = "true" *) wire gt_out;
  wire in00_carry_i_1_n_0;
  wire in00_carry_i_2_n_0;
  wire in00_carry_i_3_n_0;
  wire in00_carry_i_4_n_0;
  wire in00_carry_i_5_n_0;
  wire in00_carry_i_6_n_0;
  wire in00_carry_i_7_n_0;
  wire in00_carry_i_8_n_0;
  (* RTL_KEEP = "true" *) wire [15:0]out;
  wire res_out0__121_carry__0_i_1_n_0;
  wire res_out0__121_carry__0_i_2_n_0;
  wire res_out0__121_carry__0_i_3_n_0;
  wire res_out0__121_carry__0_i_4_n_0;
  wire res_out0__121_carry__0_i_5_n_0;
  wire res_out0__121_carry__0_i_6_n_0;
  wire res_out0__121_carry__0_n_0;
  wire res_out0__121_carry__0_n_4;
  wire res_out0__121_carry__0_n_5;
  wire res_out0__121_carry__0_n_6;
  wire res_out0__121_carry__0_n_7;
  wire res_out0__121_carry__1_i_1_n_0;
  wire res_out0__121_carry__1_i_2_n_0;
  wire res_out0__121_carry__1_n_3;
  wire res_out0__121_carry_i_1_n_0;
  wire res_out0__121_carry_i_2_n_0;
  wire res_out0__121_carry_i_3_n_0;
  wire res_out0__121_carry_i_4_n_0;
  wire res_out0__121_carry_i_5_n_0;
  wire res_out0__121_carry_i_6_n_0;
  wire res_out0__121_carry_n_0;
  wire res_out0__121_carry_n_4;
  wire res_out0__121_carry_n_5;
  wire res_out0__121_carry_n_6;
  wire res_out0__122_carry__0_i_1_n_0;
  wire res_out0__122_carry__0_i_2_n_0;
  wire res_out0__122_carry__0_i_3_n_0;
  wire res_out0__122_carry__0_i_4_n_0;
  wire res_out0__122_carry__0_i_5_n_0;
  wire res_out0__122_carry__0_i_6_n_0;
  wire res_out0__122_carry__0_i_7_n_0;
  wire res_out0__122_carry__0_i_8_n_0;
  wire res_out0__122_carry__0_i_9_n_0;
  wire res_out0__122_carry__0_n_0;
  wire res_out0__122_carry__0_n_4;
  wire res_out0__122_carry__0_n_5;
  wire res_out0__122_carry__0_n_6;
  wire res_out0__122_carry__0_n_7;
  wire res_out0__122_carry__1_i_1_n_0;
  wire res_out0__122_carry__1_i_2_n_0;
  wire res_out0__122_carry_i_1_n_0;
  wire res_out0__122_carry_i_2_n_0;
  wire res_out0__122_carry_i_3_n_0;
  wire res_out0__122_carry_i_4_n_0;
  wire res_out0__122_carry_i_5_n_0;
  wire res_out0__122_carry_i_6_n_0;
  wire res_out0__122_carry_i_7_n_0;
  wire res_out0__122_carry_i_8_n_0;
  wire res_out0__122_carry_i_9_n_0;
  wire res_out0__122_carry_n_0;
  wire res_out0__122_carry_n_4;
  wire res_out0__122_carry_n_5;
  wire res_out0__122_carry_n_6;
  wire res_out0__122_carry_n_7;
  wire res_out0__24_carry__0_i_10_n_0;
  wire res_out0__24_carry__0_i_11_n_0;
  wire res_out0__24_carry__0_i_12_n_0;
  wire res_out0__24_carry__0_i_1_n_0;
  wire res_out0__24_carry__0_i_2_n_0;
  wire res_out0__24_carry__0_i_3_n_0;
  wire res_out0__24_carry__0_i_4_n_0;
  wire res_out0__24_carry__0_i_5_n_0;
  wire res_out0__24_carry__0_i_6_n_0;
  wire res_out0__24_carry__0_i_7_n_0;
  wire res_out0__24_carry__0_i_8_n_0;
  wire res_out0__24_carry__0_i_9_n_0;
  wire res_out0__24_carry__0_n_0;
  wire res_out0__24_carry__0_n_4;
  wire res_out0__24_carry__0_n_5;
  wire res_out0__24_carry__0_n_6;
  wire res_out0__24_carry__0_n_7;
  wire res_out0__24_carry__1_i_1_n_0;
  wire res_out0__24_carry__1_i_2_n_0;
  wire res_out0__24_carry__1_i_3_n_0;
  wire res_out0__24_carry__1_i_4_n_0;
  wire res_out0__24_carry__1_n_1;
  wire res_out0__24_carry__1_n_6;
  wire res_out0__24_carry__1_n_7;
  wire res_out0__24_carry_i_1_n_0;
  wire res_out0__24_carry_i_2_n_0;
  wire res_out0__24_carry_i_3_n_0;
  wire res_out0__24_carry_i_4_n_0;
  wire res_out0__24_carry_i_5_n_0;
  wire res_out0__24_carry_i_6_n_0;
  wire res_out0__24_carry_i_7_n_0;
  wire res_out0__24_carry_i_8_n_0;
  wire res_out0__24_carry_n_0;
  wire res_out0__24_carry_n_4;
  wire res_out0__54_carry__0_i_10_n_0;
  wire res_out0__54_carry__0_i_11_n_0;
  wire res_out0__54_carry__0_i_12_n_0;
  wire res_out0__54_carry__0_i_1_n_0;
  wire res_out0__54_carry__0_i_2_n_0;
  wire res_out0__54_carry__0_i_3_n_0;
  wire res_out0__54_carry__0_i_4_n_0;
  wire res_out0__54_carry__0_i_5_n_0;
  wire res_out0__54_carry__0_i_6_n_0;
  wire res_out0__54_carry__0_i_7_n_0;
  wire res_out0__54_carry__0_i_8_n_0;
  wire res_out0__54_carry__0_i_9_n_0;
  wire res_out0__54_carry__0_n_0;
  wire res_out0__54_carry__0_n_4;
  wire res_out0__54_carry__0_n_5;
  wire res_out0__54_carry__0_n_6;
  wire res_out0__54_carry__0_n_7;
  wire res_out0__54_carry__1_i_1_n_0;
  wire res_out0__54_carry__1_i_2_n_0;
  wire res_out0__54_carry__1_i_3_n_0;
  wire res_out0__54_carry__1_i_4_n_0;
  wire res_out0__54_carry__1_n_1;
  wire res_out0__54_carry__1_n_6;
  wire res_out0__54_carry__1_n_7;
  wire res_out0__54_carry_i_1_n_0;
  wire res_out0__54_carry_i_2_n_0;
  wire res_out0__54_carry_i_3_n_0;
  wire res_out0__54_carry_i_4_n_0;
  wire res_out0__54_carry_i_5_n_0;
  wire res_out0__54_carry_i_6_n_0;
  wire res_out0__54_carry_i_7_n_0;
  wire res_out0__54_carry_i_8_n_0;
  wire res_out0__54_carry_n_0;
  wire res_out0__54_carry_n_4;
  wire res_out0__54_carry_n_5;
  wire res_out0__54_carry_n_6;
  wire res_out0__54_carry_n_7;
  wire res_out0__84_carry__0_i_10_n_0;
  wire res_out0__84_carry__0_i_11_n_0;
  wire res_out0__84_carry__0_i_12_n_0;
  wire res_out0__84_carry__0_i_13_n_0;
  wire res_out0__84_carry__0_i_1_n_0;
  wire res_out0__84_carry__0_i_2_n_0;
  wire res_out0__84_carry__0_i_3_n_0;
  wire res_out0__84_carry__0_i_4_n_0;
  wire res_out0__84_carry__0_i_5_n_0;
  wire res_out0__84_carry__0_i_6_n_0;
  wire res_out0__84_carry__0_i_7_n_0;
  wire res_out0__84_carry__0_i_8_n_0;
  wire res_out0__84_carry__0_i_9_n_0;
  wire res_out0__84_carry__0_n_0;
  wire res_out0__84_carry__1_i_10_n_0;
  wire res_out0__84_carry__1_i_11_n_0;
  wire res_out0__84_carry__1_i_12_n_0;
  wire res_out0__84_carry__1_i_13_n_0;
  wire res_out0__84_carry__1_i_14_n_0;
  wire res_out0__84_carry__1_i_1_n_0;
  wire res_out0__84_carry__1_i_2_n_0;
  wire res_out0__84_carry__1_i_3_n_0;
  wire res_out0__84_carry__1_i_4_n_0;
  wire res_out0__84_carry__1_i_5_n_0;
  wire res_out0__84_carry__1_i_6_n_0;
  wire res_out0__84_carry__1_i_7_n_0;
  wire res_out0__84_carry__1_i_8_n_0;
  wire res_out0__84_carry__1_i_9_n_0;
  wire res_out0__84_carry__1_n_0;
  wire res_out0__84_carry__2_i_1_n_0;
  wire res_out0__84_carry_i_1_n_0;
  wire res_out0__84_carry_i_2_n_0;
  wire res_out0__84_carry_i_3_n_0;
  wire res_out0__84_carry_i_4_n_0;
  wire res_out0__84_carry_i_5_n_0;
  wire res_out0__84_carry_n_0;
  wire res_out0_carry__0_i_1_n_0;
  wire res_out0_carry__0_i_2_n_0;
  wire res_out0_carry__0_i_3_n_0;
  wire res_out0_carry__0_i_4_n_0;
  wire res_out0_carry__0_n_0;
  wire res_out0_carry_i_1_n_0;
  wire res_out0_carry_i_2_n_0;
  wire res_out0_carry_i_3_n_0;
  wire res_out0_carry_i_4_n_0;
  wire res_out0_carry_n_0;
  wire res_out_inferred_i_112_n_0;
  wire res_out_inferred_i_112_n_4;
  wire res_out_inferred_i_112_n_5;
  wire res_out_inferred_i_112_n_6;
  wire res_out_inferred_i_113_n_0;
  wire res_out_inferred_i_114_n_0;
  wire res_out_inferred_i_115_n_0;
  wire res_out_inferred_i_116_n_0;
  wire res_out_inferred_i_117_n_0;
  wire res_out_inferred_i_117_n_4;
  wire res_out_inferred_i_117_n_5;
  wire res_out_inferred_i_117_n_6;
  wire res_out_inferred_i_118_n_0;
  wire res_out_inferred_i_119_n_0;
  wire res_out_inferred_i_120_n_0;
  wire res_out_inferred_i_121_n_0;
  wire res_out_inferred_i_122_n_0;
  wire res_out_inferred_i_122_n_4;
  wire res_out_inferred_i_122_n_5;
  wire res_out_inferred_i_122_n_6;
  wire res_out_inferred_i_123_n_0;
  wire res_out_inferred_i_124_n_0;
  wire res_out_inferred_i_125_n_0;
  wire res_out_inferred_i_126_n_0;
  wire res_out_inferred_i_127_n_0;
  wire res_out_inferred_i_127_n_4;
  wire res_out_inferred_i_127_n_5;
  wire res_out_inferred_i_127_n_6;
  wire res_out_inferred_i_128_n_0;
  wire res_out_inferred_i_129_n_0;
  wire res_out_inferred_i_130_n_0;
  wire res_out_inferred_i_131_n_0;
  wire res_out_inferred_i_132_n_0;
  wire res_out_inferred_i_132_n_4;
  wire res_out_inferred_i_132_n_5;
  wire res_out_inferred_i_132_n_6;
  wire res_out_inferred_i_133_n_0;
  wire res_out_inferred_i_134_n_0;
  wire res_out_inferred_i_135_n_0;
  wire res_out_inferred_i_136_n_0;
  wire res_out_inferred_i_137_n_0;
  wire res_out_inferred_i_138_n_0;
  wire res_out_inferred_i_139_n_0;
  wire res_out_inferred_i_140_n_0;
  wire res_out_inferred_i_141_n_0;
  wire res_out_inferred_i_154_n_0;
  wire res_out_inferred_i_155_n_0;
  wire res_out_inferred_i_156_n_0;
  wire res_out_inferred_i_157_n_0;
  wire res_out_inferred_i_158_n_0;
  wire res_out_inferred_i_159_n_0;
  wire res_out_inferred_i_160_n_0;
  wire res_out_inferred_i_161_n_0;
  wire res_out_inferred_i_162_n_0;
  wire res_out_inferred_i_163_n_0;
  wire res_out_inferred_i_164_n_0;
  wire res_out_inferred_i_165_n_0;
  wire res_out_inferred_i_166_n_0;
  wire res_out_inferred_i_167_n_0;
  wire res_out_inferred_i_168_n_0;
  wire res_out_inferred_i_169_n_0;
  wire res_out_inferred_i_170_n_0;
  wire res_out_inferred_i_171_n_0;
  wire res_out_inferred_i_172_n_0;
  wire res_out_inferred_i_173_n_0;
  wire res_out_inferred_i_17_n_3;
  wire res_out_inferred_i_187_n_0;
  wire res_out_inferred_i_190_n_0;
  wire res_out_inferred_i_198_n_0;
  wire [1:0]res_out_inferred_i_199_0;
  wire [0:0]res_out_inferred_i_199_1;
  wire res_out_inferred_i_199_n_0;
  wire res_out_inferred_i_19_n_0;
  wire res_out_inferred_i_200_n_0;
  wire res_out_inferred_i_201_n_0;
  wire res_out_inferred_i_202_n_0;
  wire res_out_inferred_i_203_n_0;
  wire res_out_inferred_i_204_n_0;
  wire res_out_inferred_i_205_n_0;
  wire res_out_inferred_i_206_n_0;
  wire res_out_inferred_i_20_n_0;
  wire res_out_inferred_i_21_n_0;
  wire res_out_inferred_i_22_n_0;
  wire res_out_inferred_i_23_n_0;
  wire res_out_inferred_i_24_n_0;
  wire res_out_inferred_i_25_n_0;
  wire res_out_inferred_i_26_n_0;
  wire res_out_inferred_i_27_n_0;
  wire res_out_inferred_i_28_n_0;
  wire res_out_inferred_i_29_n_0;
  wire res_out_inferred_i_30_n_0;
  wire res_out_inferred_i_31_n_0;
  wire res_out_inferred_i_32_n_0;
  wire res_out_inferred_i_33_n_0;
  wire res_out_inferred_i_34_n_0;
  wire res_out_inferred_i_35_n_0;
  wire res_out_inferred_i_36_n_0;
  wire res_out_inferred_i_37_n_0;
  wire res_out_inferred_i_38_n_0;
  wire res_out_inferred_i_39_n_0;
  wire res_out_inferred_i_40_n_0;
  wire [0:0]res_out_inferred_i_42_0;
  wire [3:0]res_out_inferred_i_42_1;
  wire [0:0]res_out_inferred_i_42_2;
  wire res_out_inferred_i_42_n_2;
  wire res_out_inferred_i_42_n_7;
  wire res_out_inferred_i_43_n_0;
  wire res_out_inferred_i_44_n_0;
  wire res_out_inferred_i_45_n_0;
  wire res_out_inferred_i_46_n_0;
  wire [2:0]res_out_inferred_i_47_0;
  wire res_out_inferred_i_47_n_0;
  wire res_out_inferred_i_47_n_4;
  wire res_out_inferred_i_47_n_5;
  wire res_out_inferred_i_47_n_6;
  wire res_out_inferred_i_47_n_7;
  wire res_out_inferred_i_48_n_7;
  wire res_out_inferred_i_49_n_0;
  wire res_out_inferred_i_50_n_7;
  wire res_out_inferred_i_51_n_7;
  wire res_out_inferred_i_52_n_0;
  wire res_out_inferred_i_53_n_0;
  wire res_out_inferred_i_54_n_7;
  wire res_out_inferred_i_55_n_0;
  wire res_out_inferred_i_56_n_7;
  wire res_out_inferred_i_57_n_0;
  wire res_out_inferred_i_59_n_0;
  wire res_out_inferred_i_59_n_4;
  wire res_out_inferred_i_59_n_5;
  wire res_out_inferred_i_59_n_6;
  wire res_out_inferred_i_60_n_0;
  wire res_out_inferred_i_61_n_0;
  wire res_out_inferred_i_62_n_0;
  wire res_out_inferred_i_63_n_0;
  wire res_out_inferred_i_66_n_0;
  wire res_out_inferred_i_67_n_0;
  wire res_out_inferred_i_68_n_0;
  wire res_out_inferred_i_69_n_0;
  wire res_out_inferred_i_70_n_0;
  wire res_out_inferred_i_72_n_0;
  wire res_out_inferred_i_73_n_0;
  wire res_out_inferred_i_74_n_0;
  wire res_out_inferred_i_75_n_0;
  wire res_out_inferred_i_76_n_0;
  wire res_out_inferred_i_76_n_4;
  wire res_out_inferred_i_76_n_5;
  wire res_out_inferred_i_76_n_6;
  wire res_out_inferred_i_76_n_7;
  wire res_out_inferred_i_77_n_0;
  wire res_out_inferred_i_78_n_0;
  wire res_out_inferred_i_79_n_0;
  wire res_out_inferred_i_79_n_4;
  wire res_out_inferred_i_79_n_5;
  wire res_out_inferred_i_79_n_6;
  wire res_out_inferred_i_79_n_7;
  wire res_out_inferred_i_80_n_0;
  wire res_out_inferred_i_81_n_0;
  wire res_out_inferred_i_82_n_0;
  wire res_out_inferred_i_82_n_4;
  wire res_out_inferred_i_82_n_5;
  wire res_out_inferred_i_82_n_6;
  wire res_out_inferred_i_82_n_7;
  wire res_out_inferred_i_83_n_0;
  wire res_out_inferred_i_84_n_0;
  wire res_out_inferred_i_85_n_0;
  wire res_out_inferred_i_86_n_0;
  wire res_out_inferred_i_87_n_0;
  wire res_out_inferred_i_88_n_0;
  wire res_out_inferred_i_89_n_0;
  wire res_out_inferred_i_89_n_4;
  wire res_out_inferred_i_89_n_5;
  wire res_out_inferred_i_89_n_6;
  wire res_out_inferred_i_89_n_7;
  wire res_out_inferred_i_90_n_0;
  wire res_out_inferred_i_91_n_0;
  wire res_out_inferred_i_92_n_0;
  wire res_out_inferred_i_92_n_4;
  wire res_out_inferred_i_92_n_5;
  wire res_out_inferred_i_92_n_6;
  wire res_out_inferred_i_92_n_7;
  wire res_out_inferred_i_93_n_0;
  wire res_out_inferred_i_94_n_0;
  wire res_out_inferred_i_95_n_0;
  wire res_out_inferred_i_96_n_0;
  wire res_out_inferred_i_97_n_0;
  wire res_out_inferred_i_98_n_0;
  wire res_out_inferred_i_99_n_0;
  wire [0:0]\sw[7] ;
  wire [15:0]sw_IBUF;
  wire [2:0]NLW_in00_carry_CO_UNCONNECTED;
  wire [3:0]NLW_in00_carry_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__121_carry_CO_UNCONNECTED;
  wire [0:0]NLW_res_out0__121_carry_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__121_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__121_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__121_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__122_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__122_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__122_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__122_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__24_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__24_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_res_out0__24_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__54_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__54_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__54_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_res_out0__54_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__84_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__84_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_res_out0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_112_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_112_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_117_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_117_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_122_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_122_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_127_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_127_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_132_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_132_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_137_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_137_O_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_17_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_17_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_186_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_186_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_187_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_190_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_190_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_41_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_42_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_42_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_47_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_48_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_48_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_50_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_50_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_51_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_51_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_52_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_54_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_54_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_56_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_56_O_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_58_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_58_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_59_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_59_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_76_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_79_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_82_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_89_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_92_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_95_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_95_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h4100000000000000)) 
    eq_out_inferred_i_1
       (.I0(eq_out_inferred_i_2_n_0),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[2]),
        .I3(eq_out_inferred_i_3_n_0),
        .I4(eq_out_inferred_i_4_n_0),
        .I5(eq_out_inferred_i_5_n_0),
        .O(eq_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    eq_out_inferred_i_2
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .O(eq_out_inferred_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eq_out_inferred_i_3
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[8]),
        .I3(sw_IBUF[0]),
        .O(eq_out_inferred_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eq_out_inferred_i_4
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[4]),
        .O(eq_out_inferred_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eq_out_inferred_i_5
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[14]),
        .I3(sw_IBUF[6]),
        .O(eq_out_inferred_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 in00_carry
       (.CI(1'b0),
        .CO({gt_out,NLW_in00_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({in00_carry_i_1_n_0,in00_carry_i_2_n_0,in00_carry_i_3_n_0,in00_carry_i_4_n_0}),
        .O(NLW_in00_carry_O_UNCONNECTED[3:0]),
        .S({in00_carry_i_5_n_0,in00_carry_i_6_n_0,in00_carry_i_7_n_0,in00_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h4F04)) 
    in00_carry_i_1
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[7]),
        .I3(sw_IBUF[15]),
        .O(in00_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    in00_carry_i_2
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[13]),
        .O(in00_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    in00_carry_i_3
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[11]),
        .O(in00_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    in00_carry_i_4
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[8]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[9]),
        .O(in00_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in00_carry_i_5
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[14]),
        .I3(sw_IBUF[6]),
        .O(in00_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in00_carry_i_6
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[4]),
        .O(in00_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in00_carry_i_7
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[2]),
        .O(in00_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in00_carry_i_8
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[8]),
        .I3(sw_IBUF[0]),
        .O(in00_carry_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__121_carry
       (.CI(1'b0),
        .CO({res_out0__121_carry_n_0,NLW_res_out0__121_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out0__122_carry_i_1_n_0),
        .DI({res_out0__122_carry_i_2_n_0,res_out0__121_carry_i_1_n_0,res_out0__121_carry_i_2_n_0,sw_IBUF[14]}),
        .O({res_out0__121_carry_n_4,res_out0__121_carry_n_5,res_out0__121_carry_n_6,NLW_res_out0__121_carry_O_UNCONNECTED[0]}),
        .S({res_out0__121_carry_i_3_n_0,res_out0__121_carry_i_4_n_0,res_out0__121_carry_i_5_n_0,res_out0__121_carry_i_6_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__121_carry__0
       (.CI(res_out0__121_carry_n_0),
        .CO({res_out0__121_carry__0_n_0,NLW_res_out0__121_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__121_carry__0_i_1_n_0,res_out0__121_carry__0_i_2_n_0,res_out0__122_carry__0_i_3_n_0,res_out0__122_carry__0_i_4_n_0}),
        .O({res_out0__121_carry__0_n_4,res_out0__121_carry__0_n_5,res_out0__121_carry__0_n_6,res_out0__121_carry__0_n_7}),
        .S({res_out0__121_carry__0_i_3_n_0,res_out0__121_carry__0_i_4_n_0,res_out0__121_carry__0_i_5_n_0,res_out0__121_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry__0_i_1
       (.I0(sw_IBUF[7]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__121_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__121_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA957)) 
    res_out0__121_carry__0_i_3
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[6]),
        .O(res_out0__121_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hC33D)) 
    res_out0__121_carry__0_i_4
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[6]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[5]),
        .O(res_out0__121_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hCC3333CD)) 
    res_out0__121_carry__0_i_5
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[6]),
        .I3(res_out0__122_carry__0_i_9_n_0),
        .I4(sw_IBUF[4]),
        .O(res_out0__121_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAA99A955556656)) 
    res_out0__121_carry__0_i_6
       (.I0(res_out0__122_carry__0_i_4_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[3]),
        .O(res_out0__121_carry__0_i_6_n_0));
  CARRY4 res_out0__121_carry__1
       (.CI(res_out0__121_carry__0_n_0),
        .CO({NLW_res_out0__121_carry__1_CO_UNCONNECTED[3:1],res_out0__121_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,res_out0__121_carry__1_i_1_n_0}),
        .O(NLW_res_out0__121_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,res_out0__121_carry__1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    res_out0__121_carry__1_i_1
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[6]),
        .O(res_out0__121_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    res_out0__121_carry__1_i_2
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[7]),
        .O(res_out0__121_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry_i_1
       (.I0(sw_IBUF[2]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__121_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry_i_2
       (.I0(sw_IBUF[1]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__121_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6966696996999696)) 
    res_out0__121_carry_i_3
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[2]),
        .O(res_out0__121_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    res_out0__121_carry_i_4
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .O(res_out0__121_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    res_out0__121_carry_i_5
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .O(res_out0__121_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out0__121_carry_i_6
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[14]),
        .O(res_out0__121_carry_i_6_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__122_carry
       (.CI(1'b0),
        .CO({res_out0__122_carry_n_0,NLW_res_out0__122_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out0__122_carry_i_1_n_0),
        .DI({res_out0__122_carry_i_2_n_0,res_out0__122_carry_i_3_n_0,res_out0__122_carry_i_4_n_0,sw_IBUF[14]}),
        .O({res_out0__122_carry_n_4,res_out0__122_carry_n_5,res_out0__122_carry_n_6,res_out0__122_carry_n_7}),
        .S({res_out0__122_carry_i_5_n_0,res_out0__122_carry_i_6_n_0,res_out0__122_carry_i_7_n_0,res_out0__122_carry_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__122_carry__0
       (.CI(res_out0__122_carry_n_0),
        .CO({res_out0__122_carry__0_n_0,NLW_res_out0__122_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__122_carry__0_i_1_n_0,res_out0__122_carry__0_i_2_n_0,res_out0__122_carry__0_i_3_n_0,res_out0__122_carry__0_i_4_n_0}),
        .O({res_out0__122_carry__0_n_4,res_out0__122_carry__0_n_5,res_out0__122_carry__0_n_6,res_out0__122_carry__0_n_7}),
        .S({res_out0__122_carry__0_i_5_n_0,res_out0__122_carry__0_i_6_n_0,res_out0__122_carry__0_i_7_n_0,res_out0__122_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_1
       (.I0(sw_IBUF[7]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_3
       (.I0(sw_IBUF[5]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_4
       (.I0(sw_IBUF[4]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hA957)) 
    res_out0__122_carry__0_i_5
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[6]),
        .O(res_out0__122_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hC33D)) 
    res_out0__122_carry__0_i_6
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[6]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[5]),
        .O(res_out0__122_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hCC3333CD)) 
    res_out0__122_carry__0_i_7
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[6]),
        .I3(res_out0__122_carry__0_i_9_n_0),
        .I4(sw_IBUF[4]),
        .O(res_out0__122_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAA99A955556656)) 
    res_out0__122_carry__0_i_8
       (.I0(res_out0__122_carry__0_i_4_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[3]),
        .O(res_out0__122_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    res_out0__122_carry__0_i_9
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[2]),
        .O(res_out0__122_carry__0_i_9_n_0));
  CARRY4 res_out0__122_carry__1
       (.CI(res_out0__122_carry__0_n_0),
        .CO({NLW_res_out0__122_carry__1_CO_UNCONNECTED[3:1],data3[6]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,res_out0__122_carry__1_i_1_n_0}),
        .O(NLW_res_out0__122_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,res_out0__122_carry__1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    res_out0__122_carry__1_i_1
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[6]),
        .O(res_out0__122_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    res_out0__122_carry__1_i_2
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[7]),
        .O(res_out0__122_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    res_out0__122_carry_i_1
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[6]),
        .O(res_out0__122_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_2
       (.I0(sw_IBUF[3]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_3
       (.I0(sw_IBUF[2]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_4
       (.I0(sw_IBUF[1]),
        .I1(res_out0__122_carry_i_1_n_0),
        .O(res_out0__122_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6966696996999696)) 
    res_out0__122_carry_i_5
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[2]),
        .O(res_out0__122_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    res_out0__122_carry_i_6
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .O(res_out0__122_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    res_out0__122_carry_i_7
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .O(res_out0__122_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out0__122_carry_i_8
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[14]),
        .O(res_out0__122_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    res_out0__122_carry_i_9
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[3]),
        .O(res_out0__122_carry_i_9_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 res_out0__24_carry
       (.CI(1'b0),
        .CO({res_out0__24_carry_n_0,NLW_res_out0__24_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__24_carry_i_1_n_0,res_out0__24_carry_i_2_n_0,res_out0__24_carry_i_3_n_0,1'b0}),
        .O({res_out0__24_carry_n_4,data2[2:0]}),
        .S({res_out0__24_carry_i_4_n_0,res_out0__24_carry_i_5_n_0,res_out0__24_carry_i_6_n_0,res_out0__24_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__24_carry__0
       (.CI(res_out0__24_carry_n_0),
        .CO({res_out0__24_carry__0_n_0,NLW_res_out0__24_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__24_carry__0_i_1_n_0,res_out0__24_carry__0_i_2_n_0,res_out0__24_carry__0_i_3_n_0,res_out0__24_carry__0_i_4_n_0}),
        .O({res_out0__24_carry__0_n_4,res_out0__24_carry__0_n_5,res_out0__24_carry__0_n_6,res_out0__24_carry__0_n_7}),
        .S({res_out0__24_carry__0_i_5_n_0,res_out0__24_carry__0_i_6_n_0,res_out0__24_carry__0_i_7_n_0,res_out0__24_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_1
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_10
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_11
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_12
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_2
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_3
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_4
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[11]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_5
       (.I0(res_out0__24_carry__0_i_1_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[13]),
        .I3(res_out0__24_carry__0_i_9_n_0),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_6
       (.I0(res_out0__24_carry__0_i_2_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__24_carry__0_i_10_n_0),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_7
       (.I0(res_out0__24_carry__0_i_3_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__24_carry__0_i_11_n_0),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    res_out0__24_carry__0_i_8
       (.I0(res_out0__24_carry__0_i_4_n_0),
        .I1(res_out0__24_carry__0_i_12_n_0),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_9
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__24_carry__1
       (.CI(res_out0__24_carry__0_n_0),
        .CO({NLW_res_out0__24_carry__1_CO_UNCONNECTED[3],res_out0__24_carry__1_n_1,NLW_res_out0__24_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__24_carry__1_i_1_n_0,res_out0__24_carry__1_i_2_n_0}),
        .O({NLW_res_out0__24_carry__1_O_UNCONNECTED[3:2],res_out0__24_carry__1_n_6,res_out0__24_carry__1_n_7}),
        .S({1'b0,1'b1,res_out0__24_carry__1_i_3_n_0,res_out0__24_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__1_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__1_i_2
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    res_out0__24_carry__1_i_3
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[15]),
        .O(res_out0__24_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    res_out0__24_carry__1_i_4
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[2]),
        .O(res_out0__24_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__24_carry_i_1
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[9]),
        .I5(sw_IBUF[2]),
        .O(res_out0__24_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__24_carry_i_2
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[8]),
        .O(res_out0__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_3
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    res_out0__24_carry_i_4
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[1]),
        .I5(res_out0__24_carry_i_8_n_0),
        .O(res_out0__24_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__24_carry_i_5
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[10]),
        .O(res_out0__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__24_carry_i_6
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[8]),
        .O(res_out0__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_7
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[0]),
        .O(res_out0__24_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_8
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry_i_8_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 res_out0__54_carry
       (.CI(1'b0),
        .CO({res_out0__54_carry_n_0,NLW_res_out0__54_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__54_carry_i_1_n_0,res_out0__54_carry_i_2_n_0,res_out0__54_carry_i_3_n_0,1'b0}),
        .O({res_out0__54_carry_n_4,res_out0__54_carry_n_5,res_out0__54_carry_n_6,res_out0__54_carry_n_7}),
        .S({res_out0__54_carry_i_4_n_0,res_out0__54_carry_i_5_n_0,res_out0__54_carry_i_6_n_0,res_out0__54_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__54_carry__0
       (.CI(res_out0__54_carry_n_0),
        .CO({res_out0__54_carry__0_n_0,NLW_res_out0__54_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__54_carry__0_i_1_n_0,res_out0__54_carry__0_i_2_n_0,res_out0__54_carry__0_i_3_n_0,res_out0__54_carry__0_i_4_n_0}),
        .O({res_out0__54_carry__0_n_4,res_out0__54_carry__0_n_5,res_out0__54_carry__0_n_6,res_out0__54_carry__0_n_7}),
        .S({res_out0__54_carry__0_i_5_n_0,res_out0__54_carry__0_i_6_n_0,res_out0__54_carry__0_i_7_n_0,res_out0__54_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_1
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_10
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_11
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_12
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_2
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_3
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_4
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[11]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    res_out0__54_carry__0_i_5
       (.I0(res_out0__54_carry__0_i_1_n_0),
        .I1(res_out0__54_carry__0_i_9_n_0),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_6
       (.I0(res_out0__54_carry__0_i_2_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__54_carry__0_i_10_n_0),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_7
       (.I0(res_out0__54_carry__0_i_3_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__54_carry__0_i_11_n_0),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_8
       (.I0(res_out0__54_carry__0_i_4_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[10]),
        .I3(res_out0__54_carry__0_i_12_n_0),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_9
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry__0_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__54_carry__1
       (.CI(res_out0__54_carry__0_n_0),
        .CO({NLW_res_out0__54_carry__1_CO_UNCONNECTED[3],res_out0__54_carry__1_n_1,NLW_res_out0__54_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__54_carry__1_i_1_n_0,res_out0__54_carry__1_i_2_n_0}),
        .O({NLW_res_out0__54_carry__1_O_UNCONNECTED[3:2],res_out0__54_carry__1_n_6,res_out0__54_carry__1_n_7}),
        .S({1'b0,1'b1,res_out0__54_carry__1_i_3_n_0,res_out0__54_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__1_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__1_i_2
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    res_out0__54_carry__1_i_3
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[15]),
        .O(res_out0__54_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    res_out0__54_carry__1_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[5]),
        .O(res_out0__54_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__54_carry_i_1
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[9]),
        .I5(sw_IBUF[5]),
        .O(res_out0__54_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__54_carry_i_2
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[8]),
        .O(res_out0__54_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_3
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    res_out0__54_carry_i_4
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[4]),
        .I5(res_out0__54_carry_i_8_n_0),
        .O(res_out0__54_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__54_carry_i_5
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[3]),
        .I5(sw_IBUF[10]),
        .O(res_out0__54_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__54_carry_i_6
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[8]),
        .O(res_out0__54_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_7
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[3]),
        .O(res_out0__54_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_8
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__84_carry
       (.CI(1'b0),
        .CO({res_out0__84_carry_n_0,NLW_res_out0__84_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry_i_1_n_0,res_out0__24_carry__0_n_6,res_out0__24_carry__0_n_7,res_out0__24_carry_n_4}),
        .O(data2[6:3]),
        .S({res_out0__84_carry_i_2_n_0,res_out0__84_carry_i_3_n_0,res_out0__84_carry_i_4_n_0,res_out0__84_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__84_carry__0
       (.CI(res_out0__84_carry_n_0),
        .CO({res_out0__84_carry__0_n_0,NLW_res_out0__84_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry__0_i_1_n_0,res_out0__84_carry__0_i_2_n_0,res_out0__84_carry__0_i_3_n_0,res_out0__84_carry__0_i_4_n_0}),
        .O(data2[10:7]),
        .S({res_out0__84_carry__0_i_5_n_0,res_out0__84_carry__0_i_6_n_0,res_out0__84_carry__0_i_7_n_0,res_out0__84_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hD540)) 
    res_out0__84_carry__0_i_1
       (.I0(res_out0__84_carry__0_i_9_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__84_carry__0_i_10_n_0),
        .O(res_out0__84_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_10
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[10]),
        .I2(res_out0__24_carry__1_n_6),
        .I3(res_out0__54_carry__0_n_5),
        .O(res_out0__84_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_11
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[9]),
        .I2(res_out0__24_carry__1_n_7),
        .I3(res_out0__54_carry__0_n_6),
        .O(res_out0__84_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__0_i_12
       (.I0(res_out0__54_carry__0_n_5),
        .I1(res_out0__24_carry__1_n_6),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_13
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[11]),
        .I2(res_out0__24_carry__1_n_1),
        .I3(res_out0__54_carry__0_n_4),
        .O(res_out0__84_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hA880808080808080)) 
    res_out0__84_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[10]),
        .I2(res_out0__84_carry__0_i_11_n_0),
        .I3(sw_IBUF[9]),
        .I4(res_out0__54_carry_n_4),
        .I5(res_out0__24_carry__0_n_5),
        .O(res_out0__84_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h807F7F80FF00FF00)) 
    res_out0__84_carry__0_i_3
       (.I0(res_out0__24_carry__0_n_5),
        .I1(res_out0__54_carry_n_4),
        .I2(sw_IBUF[9]),
        .I3(res_out0__84_carry__0_i_11_n_0),
        .I4(sw_IBUF[10]),
        .I5(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_4
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[8]),
        .I2(res_out0__24_carry__0_n_4),
        .I3(res_out0__54_carry__0_n_7),
        .O(res_out0__84_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__0_i_5
       (.I0(res_out0__84_carry__0_i_1_n_0),
        .I1(res_out0__84_carry__0_i_12_n_0),
        .I2(res_out0__84_carry__0_i_13_n_0),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__0_i_6
       (.I0(res_out0__84_carry__0_i_2_n_0),
        .I1(res_out0__84_carry__0_i_9_n_0),
        .I2(res_out0__84_carry__0_i_10_n_0),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    res_out0__84_carry__0_i_7
       (.I0(res_out0__84_carry__0_i_3_n_0),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[8]),
        .I3(res_out0__24_carry__0_n_4),
        .I4(res_out0__54_carry__0_n_7),
        .O(res_out0__84_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    res_out0__84_carry__0_i_8
       (.I0(res_out0__84_carry__0_i_4_n_0),
        .I1(res_out0__24_carry__0_n_5),
        .I2(res_out0__54_carry_n_4),
        .I3(sw_IBUF[9]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__0_i_9
       (.I0(res_out0__54_carry__0_n_6),
        .I1(res_out0__24_carry__1_n_7),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0__84_carry__1
       (.CI(res_out0__84_carry__0_n_0),
        .CO({res_out0__84_carry__1_n_0,NLW_res_out0__84_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry__1_i_1_n_0,res_out0__84_carry__1_i_2_n_0,res_out0__84_carry__1_i_3_n_0,res_out0__84_carry__1_i_4_n_0}),
        .O(data2[14:11]),
        .S({res_out0__84_carry__1_i_5_n_0,res_out0__84_carry__1_i_6_n_0,res_out0__84_carry__1_i_7_n_0,res_out0__84_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hBAE02A802A802A80)) 
    res_out0__84_carry__1_i_1
       (.I0(res_out0__84_carry__1_i_9_n_0),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_1),
        .I4(res_out0__54_carry__1_n_6),
        .I5(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__1_i_10
       (.I0(res_out0__54_carry__0_n_4),
        .I1(res_out0__24_carry__1_n_1),
        .I2(sw_IBUF[11]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    res_out0__84_carry__1_i_11
       (.I0(res_out0__54_carry__1_n_6),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_12
       (.I0(res_out0__54_carry__1_n_1),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[14]),
        .O(res_out0__84_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_13
       (.I0(res_out0__54_carry__1_n_6),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_14
       (.I0(res_out0__54_carry__1_n_7),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hBAE02A802A802A80)) 
    res_out0__84_carry__1_i_2
       (.I0(res_out_inferred_i_26_n_0),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_6),
        .I4(res_out0__54_carry__1_n_7),
        .I5(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h40D5D5D5D5404040)) 
    res_out0__84_carry__1_i_3
       (.I0(res_out0__84_carry__1_i_10_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[13]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[7]),
        .I5(res_out0__54_carry__1_n_7),
        .O(res_out0__84_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hD540)) 
    res_out0__84_carry__1_i_4
       (.I0(res_out0__84_carry__0_i_12_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__84_carry__0_i_13_n_0),
        .O(res_out0__84_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8FEA1A801AEA7080)) 
    res_out0__84_carry__1_i_5
       (.I0(res_out0__84_carry__1_i_11_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[7]),
        .I4(res_out0__54_carry__1_n_1),
        .I5(sw_IBUF[14]),
        .O(res_out0__84_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    res_out0__84_carry__1_i_6
       (.I0(res_out0__84_carry__1_i_2_n_0),
        .I1(res_out0__84_carry__1_i_9_n_0),
        .I2(res_out0__84_carry__1_i_12_n_0),
        .I3(res_out0__54_carry__1_n_6),
        .I4(sw_IBUF[7]),
        .I5(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    res_out0__84_carry__1_i_7
       (.I0(res_out0__84_carry__1_i_3_n_0),
        .I1(res_out_inferred_i_26_n_0),
        .I2(res_out0__84_carry__1_i_13_n_0),
        .I3(res_out0__54_carry__1_n_7),
        .I4(sw_IBUF[7]),
        .I5(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__1_i_8
       (.I0(res_out0__84_carry__1_i_4_n_0),
        .I1(res_out0__84_carry__1_i_10_n_0),
        .I2(res_out0__84_carry__1_i_14_n_0),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__84_carry__1_i_9
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[6]),
        .O(res_out0__84_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 res_out0__84_carry__2
       (.CI(res_out0__84_carry__1_n_0),
        .CO(NLW_res_out0__84_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_res_out0__84_carry__2_O_UNCONNECTED[3:1],data2[15]}),
        .S({1'b0,1'b0,1'b0,res_out0__84_carry__2_i_1_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    res_out0__84_carry__2_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_1),
        .O(res_out0__84_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_1
       (.I0(res_out0__24_carry__0_n_5),
        .I1(res_out0__54_carry_n_4),
        .O(res_out0__84_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    res_out0__84_carry_i_2
       (.I0(res_out0__54_carry_n_4),
        .I1(res_out0__24_carry__0_n_5),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[8]),
        .O(res_out0__84_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_3
       (.I0(res_out0__24_carry__0_n_6),
        .I1(res_out0__54_carry_n_5),
        .O(res_out0__84_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_4
       (.I0(res_out0__24_carry__0_n_7),
        .I1(res_out0__54_carry_n_6),
        .O(res_out0__84_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_5
       (.I0(res_out0__24_carry_n_4),
        .I1(res_out0__54_carry_n_7),
        .O(res_out0__84_carry_i_5_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0_carry
       (.CI(1'b0),
        .CO({res_out0_carry_n_0,NLW_res_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(sw_IBUF[11:8]),
        .O(data1[3:0]),
        .S({res_out0_carry_i_1_n_0,res_out0_carry_i_2_n_0,res_out0_carry_i_3_n_0,res_out0_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out0_carry__0
       (.CI(res_out0_carry_n_0),
        .CO({res_out0_carry__0_n_0,NLW_res_out0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[15:12]),
        .O(data1[7:4]),
        .S({res_out0_carry__0_i_1_n_0,res_out0_carry__0_i_2_n_0,res_out0_carry__0_i_3_n_0,res_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[7]),
        .O(res_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_2
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[6]),
        .O(res_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_3
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .O(res_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_4
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[4]),
        .O(res_out0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_1
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[3]),
        .O(res_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_2
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[2]),
        .O(res_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_3
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .O(res_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_4
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[0]),
        .O(res_out0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_1
       (.I0(btnl_IBUF),
        .I1(data2[15]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[15]));
  LUT6 #(
    .INIT(64'h8A8A888A8888888A)) 
    res_out_inferred_i_10
       (.I0(res_out_inferred_i_23_n_0),
        .I1(res_out_inferred_i_24_n_0),
        .I2(btnu_IBUF),
        .I3(res_out_inferred_i_25_n_0),
        .I4(btnr_IBUF),
        .I5(res_out_inferred_i_26_n_0),
        .O(out[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    res_out_inferred_i_11
       (.I0(res_out_inferred_i_27_n_0),
        .I1(btnu_IBUF),
        .I2(res_out_inferred_i_28_n_0),
        .I3(btnl_IBUF),
        .I4(res_out_inferred_i_29_n_0),
        .O(out[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_112
       (.CI(1'b0),
        .CO({res_out_inferred_i_112_n_0,NLW_res_out_inferred_i_112_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[6]),
        .DI({res_out0__122_carry_n_6,res_out_inferred_i_154_n_0,sw_IBUF[13],1'b0}),
        .O({res_out_inferred_i_112_n_4,res_out_inferred_i_112_n_5,res_out_inferred_i_112_n_6,NLW_res_out_inferred_i_112_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_155_n_0,res_out_inferred_i_156_n_0,res_out_inferred_i_157_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_113
       (.I0(data3[6]),
        .I1(sw_IBUF[6]),
        .I2(res_out0__122_carry__0_n_6),
        .O(res_out_inferred_i_113_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_114
       (.I0(data3[6]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry__0_n_7),
        .O(res_out_inferred_i_114_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_115
       (.I0(data3[6]),
        .I1(sw_IBUF[4]),
        .I2(res_out0__122_carry_n_4),
        .O(res_out_inferred_i_115_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_116
       (.I0(data3[6]),
        .I1(sw_IBUF[3]),
        .I2(res_out0__122_carry_n_5),
        .O(res_out_inferred_i_116_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_117
       (.CI(1'b0),
        .CO({res_out_inferred_i_117_n_0,NLW_res_out_inferred_i_117_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[5]),
        .DI({res_out_inferred_i_112_n_5,res_out_inferred_i_112_n_6,sw_IBUF[12],1'b0}),
        .O({res_out_inferred_i_117_n_4,res_out_inferred_i_117_n_5,res_out_inferred_i_117_n_6,NLW_res_out_inferred_i_117_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_158_n_0,res_out_inferred_i_159_n_0,res_out_inferred_i_160_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_118
       (.I0(data3[5]),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_76_n_5),
        .O(res_out_inferred_i_118_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_119
       (.I0(data3[5]),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_76_n_6),
        .O(res_out_inferred_i_119_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    res_out_inferred_i_12
       (.I0(res_out_inferred_i_30_n_0),
        .I1(btnu_IBUF),
        .I2(res_out_inferred_i_31_n_0),
        .I3(btnl_IBUF),
        .I4(res_out_inferred_i_32_n_0),
        .O(out[4]));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_120
       (.I0(data3[5]),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_76_n_7),
        .O(res_out_inferred_i_120_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_121
       (.I0(data3[5]),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_112_n_4),
        .O(res_out_inferred_i_121_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_122
       (.CI(1'b0),
        .CO({res_out_inferred_i_122_n_0,NLW_res_out_inferred_i_122_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[4]),
        .DI({res_out_inferred_i_117_n_5,res_out_inferred_i_117_n_6,sw_IBUF[11],1'b0}),
        .O({res_out_inferred_i_122_n_4,res_out_inferred_i_122_n_5,res_out_inferred_i_122_n_6,NLW_res_out_inferred_i_122_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_161_n_0,res_out_inferred_i_162_n_0,res_out_inferred_i_163_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_123
       (.I0(data3[4]),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_79_n_5),
        .O(res_out_inferred_i_123_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_124
       (.I0(data3[4]),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_79_n_6),
        .O(res_out_inferred_i_124_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_125
       (.I0(data3[4]),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_79_n_7),
        .O(res_out_inferred_i_125_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_126
       (.I0(data3[4]),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_117_n_4),
        .O(res_out_inferred_i_126_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_127
       (.CI(1'b0),
        .CO({res_out_inferred_i_127_n_0,NLW_res_out_inferred_i_127_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[3]),
        .DI({res_out_inferred_i_122_n_5,res_out_inferred_i_122_n_6,sw_IBUF[10],1'b0}),
        .O({res_out_inferred_i_127_n_4,res_out_inferred_i_127_n_5,res_out_inferred_i_127_n_6,NLW_res_out_inferred_i_127_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_164_n_0,res_out_inferred_i_165_n_0,res_out_inferred_i_166_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_128
       (.I0(data3[3]),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_82_n_5),
        .O(res_out_inferred_i_128_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_129
       (.I0(data3[3]),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_82_n_6),
        .O(res_out_inferred_i_129_n_0));
  MUXF7 res_out_inferred_i_13
       (.I0(res_out_inferred_i_33_n_0),
        .I1(res_out_inferred_i_34_n_0),
        .O(out[3]),
        .S(btnl_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_130
       (.I0(data3[3]),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_82_n_7),
        .O(res_out_inferred_i_130_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_131
       (.I0(data3[3]),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_122_n_4),
        .O(res_out_inferred_i_131_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_132
       (.CI(1'b0),
        .CO({res_out_inferred_i_132_n_0,NLW_res_out_inferred_i_132_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[2]),
        .DI({res_out_inferred_i_127_n_5,res_out_inferred_i_127_n_6,sw_IBUF[9],1'b0}),
        .O({res_out_inferred_i_132_n_4,res_out_inferred_i_132_n_5,res_out_inferred_i_132_n_6,NLW_res_out_inferred_i_132_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_167_n_0,res_out_inferred_i_168_n_0,res_out_inferred_i_169_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_133
       (.I0(data3[2]),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_89_n_5),
        .O(res_out_inferred_i_133_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_134
       (.I0(data3[2]),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_89_n_6),
        .O(res_out_inferred_i_134_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_135
       (.I0(data3[2]),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_89_n_7),
        .O(res_out_inferred_i_135_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_136
       (.I0(data3[2]),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_127_n_4),
        .O(res_out_inferred_i_136_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_137
       (.CI(1'b0),
        .CO({res_out_inferred_i_137_n_0,NLW_res_out_inferred_i_137_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[1]),
        .DI({res_out_inferred_i_132_n_4,res_out_inferred_i_132_n_5,res_out_inferred_i_132_n_6,sw_IBUF[8]}),
        .O(NLW_res_out_inferred_i_137_O_UNCONNECTED[3:0]),
        .S({res_out_inferred_i_170_n_0,res_out_inferred_i_171_n_0,res_out_inferred_i_172_n_0,res_out_inferred_i_173_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_138
       (.I0(data3[1]),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_92_n_4),
        .O(res_out_inferred_i_138_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_139
       (.I0(data3[1]),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_92_n_5),
        .O(res_out_inferred_i_139_n_0));
  MUXF7 res_out_inferred_i_14
       (.I0(res_out_inferred_i_35_n_0),
        .I1(res_out_inferred_i_36_n_0),
        .O(out[2]),
        .S(btnl_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_140
       (.I0(data3[1]),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_92_n_6),
        .O(res_out_inferred_i_140_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_141
       (.I0(data3[1]),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_92_n_7),
        .O(res_out_inferred_i_141_n_0));
  MUXF7 res_out_inferred_i_15
       (.I0(res_out_inferred_i_37_n_0),
        .I1(res_out_inferred_i_38_n_0),
        .O(out[1]),
        .S(btnl_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_154
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[0]),
        .O(res_out_inferred_i_154_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_155
       (.I0(data3[6]),
        .I1(sw_IBUF[2]),
        .I2(res_out0__122_carry_n_6),
        .O(res_out_inferred_i_155_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    res_out_inferred_i_156
       (.I0(data3[6]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[14]),
        .O(res_out_inferred_i_156_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_157
       (.I0(data3[6]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[13]),
        .O(res_out_inferred_i_157_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_158
       (.I0(data3[5]),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_112_n_5),
        .O(res_out_inferred_i_158_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_159
       (.I0(data3[5]),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_112_n_6),
        .O(res_out_inferred_i_159_n_0));
  MUXF7 res_out_inferred_i_16
       (.I0(res_out_inferred_i_39_n_0),
        .I1(res_out_inferred_i_40_n_0),
        .O(out[0]),
        .S(btnl_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_160
       (.I0(data3[5]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[12]),
        .O(res_out_inferred_i_160_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_161
       (.I0(data3[4]),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_117_n_5),
        .O(res_out_inferred_i_161_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_162
       (.I0(data3[4]),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_117_n_6),
        .O(res_out_inferred_i_162_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_163
       (.I0(data3[4]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[11]),
        .O(res_out_inferred_i_163_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_164
       (.I0(data3[3]),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_122_n_5),
        .O(res_out_inferred_i_164_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_165
       (.I0(data3[3]),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_122_n_6),
        .O(res_out_inferred_i_165_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_166
       (.I0(data3[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[10]),
        .O(res_out_inferred_i_166_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_167
       (.I0(data3[2]),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_127_n_5),
        .O(res_out_inferred_i_167_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_168
       (.I0(data3[2]),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_127_n_6),
        .O(res_out_inferred_i_168_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_169
       (.I0(data3[2]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[9]),
        .O(res_out_inferred_i_169_n_0));
  CARRY4 res_out_inferred_i_17
       (.CI(res_out0_carry__0_n_0),
        .CO({NLW_res_out_inferred_i_17_CO_UNCONNECTED[3:1],res_out_inferred_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_res_out_inferred_i_17_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_170
       (.I0(data3[1]),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_132_n_4),
        .O(res_out_inferred_i_170_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_171
       (.I0(data3[1]),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_132_n_5),
        .O(res_out_inferred_i_171_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_172
       (.I0(data3[1]),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_132_n_6),
        .O(res_out_inferred_i_172_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_173
       (.I0(data3[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[8]),
        .O(res_out_inferred_i_173_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_186
       (.CI(res_out_inferred_i_187_n_0),
        .CO({NLW_res_out_inferred_i_186_CO_UNCONNECTED[3:2],res_out_inferred_i_199_0[1],NLW_res_out_inferred_i_186_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__121_carry__1_n_3,res_out0__121_carry__0_n_5}),
        .O({NLW_res_out_inferred_i_186_O_UNCONNECTED[3:1],res_out_inferred_i_199_1}),
        .S({1'b0,1'b0,res_out_inferred_i_198_n_0,res_out_inferred_i_199_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_187
       (.CI(res_out_inferred_i_190_n_0),
        .CO({res_out_inferred_i_187_n_0,NLW_res_out_inferred_i_187_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__121_carry__0_n_6,res_out0__121_carry__0_n_7,res_out0__121_carry_n_4,res_out0__121_carry_n_5}),
        .O({res_out_inferred_i_199_0[0],DI[3:1]}),
        .S({res_out_inferred_i_200_n_0,res_out_inferred_i_201_n_0,res_out_inferred_i_202_n_0,res_out_inferred_i_203_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7C00FFFF)) 
    res_out_inferred_i_19
       (.I0(btnr_IBUF),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[7]),
        .I3(btnu_IBUF),
        .I4(btnl_IBUF),
        .O(res_out_inferred_i_19_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_190
       (.CI(1'b0),
        .CO({res_out_inferred_i_190_n_0,NLW_res_out_inferred_i_190_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out0__121_carry__1_n_3),
        .DI({res_out0__121_carry_n_6,res_out0__122_carry_n_7,sw_IBUF[13],1'b0}),
        .O({DI[0],O,NLW_res_out_inferred_i_190_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_204_n_0,res_out_inferred_i_205_n_0,res_out_inferred_i_206_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_198
       (.I0(res_out0__121_carry__1_n_3),
        .I1(res_out0__121_carry__0_n_4),
        .O(res_out_inferred_i_198_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_199
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[7]),
        .I2(res_out0__121_carry__0_n_5),
        .O(res_out_inferred_i_199_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_2
       (.I0(btnl_IBUF),
        .I1(data2[14]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[14]));
  LUT6 #(
    .INIT(64'hCCCC999C9999CCC9)) 
    res_out_inferred_i_20
       (.I0(res_out_inferred_i_42_n_2),
        .I1(res_out_inferred_i_42_n_7),
        .I2(res_out_inferred_i_43_n_0),
        .I3(res_out_inferred_i_44_n_0),
        .I4(res_out_inferred_i_45_n_0),
        .I5(sw_IBUF[7]),
        .O(res_out_inferred_i_20_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_200
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[6]),
        .I2(res_out0__121_carry__0_n_6),
        .O(res_out_inferred_i_200_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_201
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[5]),
        .I2(res_out0__121_carry__0_n_7),
        .O(res_out_inferred_i_201_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_202
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[4]),
        .I2(res_out0__121_carry_n_4),
        .O(res_out_inferred_i_202_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_203
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[3]),
        .I2(res_out0__121_carry_n_5),
        .O(res_out_inferred_i_203_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_204
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[2]),
        .I2(res_out0__121_carry_n_6),
        .O(res_out_inferred_i_204_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_205
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[1]),
        .I2(res_out0__122_carry_n_7),
        .O(res_out_inferred_i_205_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_206
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[13]),
        .O(res_out_inferred_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    res_out_inferred_i_21
       (.I0(btnu_IBUF),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[7]),
        .I3(btnr_IBUF),
        .O(res_out_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_22
       (.I0(res_out0__122_carry_i_1_n_0),
        .I1(data2[7]),
        .I2(btnu_IBUF),
        .I3(data1[7]),
        .I4(btnr_IBUF),
        .I5(data0[7]),
        .O(res_out_inferred_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_out_inferred_i_23
       (.I0(btnl_IBUF),
        .I1(res_out_inferred_i_46_n_0),
        .O(res_out_inferred_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AA0FFFF)) 
    res_out_inferred_i_24
       (.I0(btnu_IBUF),
        .I1(btnr_IBUF),
        .I2(sw_IBUF[14]),
        .I3(sw_IBUF[6]),
        .I4(btnl_IBUF),
        .O(res_out_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000718EFFFF8E71)) 
    res_out_inferred_i_25
       (.I0(res_out_inferred_i_47_n_5),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_43_n_0),
        .I3(sw_IBUF[6]),
        .I4(res_out_inferred_i_42_n_2),
        .I5(res_out_inferred_i_47_n_4),
        .O(res_out_inferred_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out_inferred_i_26
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[6]),
        .O(res_out_inferred_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    res_out_inferred_i_27
       (.I0(btnr_IBUF),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[5]),
        .O(res_out_inferred_i_27_n_0));
  LUT6 #(
    .INIT(64'hB8BB8B8833300003)) 
    res_out_inferred_i_28
       (.I0(sw_IBUF[13]),
        .I1(btnr_IBUF),
        .I2(res_out_inferred_i_42_n_2),
        .I3(res_out_inferred_i_43_n_0),
        .I4(res_out_inferred_i_47_n_5),
        .I5(sw_IBUF[5]),
        .O(res_out_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_29
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(btnu_IBUF),
        .I3(data1[5]),
        .I4(btnr_IBUF),
        .I5(data0[5]),
        .O(res_out_inferred_i_29_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_3
       (.I0(btnl_IBUF),
        .I1(data2[13]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    res_out_inferred_i_30
       (.I0(btnr_IBUF),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[4]),
        .O(res_out_inferred_i_30_n_0));
  LUT6 #(
    .INIT(64'hFF000000A6A6A9A9)) 
    res_out_inferred_i_31
       (.I0(res_out_inferred_i_47_n_6),
        .I1(res_out_inferred_i_49_n_0),
        .I2(res_out_inferred_i_42_n_2),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[4]),
        .I5(btnr_IBUF),
        .O(res_out_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_32
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(btnu_IBUF),
        .I3(data1[4]),
        .I4(btnr_IBUF),
        .I5(data0[4]),
        .O(res_out_inferred_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_33
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(btnu_IBUF),
        .I3(data1[3]),
        .I4(btnr_IBUF),
        .I5(data0[3]),
        .O(res_out_inferred_i_33_n_0));
  LUT5 #(
    .INIT(32'h68FD68A8)) 
    res_out_inferred_i_34
       (.I0(btnu_IBUF),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[3]),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_53_n_0),
        .O(res_out_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_35
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(btnu_IBUF),
        .I3(data1[2]),
        .I4(btnr_IBUF),
        .I5(data0[2]),
        .O(res_out_inferred_i_35_n_0));
  LUT5 #(
    .INIT(32'h7CFF7C00)) 
    res_out_inferred_i_36
       (.I0(btnr_IBUF),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[2]),
        .I3(btnu_IBUF),
        .I4(res_out_inferred_i_55_n_0),
        .O(res_out_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_37
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(btnu_IBUF),
        .I3(data1[1]),
        .I4(btnr_IBUF),
        .I5(data0[1]),
        .O(res_out_inferred_i_37_n_0));
  LUT5 #(
    .INIT(32'h6E6E808F)) 
    res_out_inferred_i_38
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .I2(btnr_IBUF),
        .I3(res_out_inferred_i_57_n_0),
        .I4(btnu_IBUF),
        .O(res_out_inferred_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_39
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(btnu_IBUF),
        .I3(data1[0]),
        .I4(btnr_IBUF),
        .I5(data0[0]),
        .O(res_out_inferred_i_39_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_4
       (.I0(btnl_IBUF),
        .I1(data2[12]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[12]));
  LUT6 #(
    .INIT(64'h6F6A6A6F8D888D88)) 
    res_out_inferred_i_40
       (.I0(btnu_IBUF),
        .I1(sw_IBUF[8]),
        .I2(btnr_IBUF),
        .I3(res_out_inferred_i_59_n_6),
        .I4(res_out_inferred_i_42_n_2),
        .I5(sw_IBUF[0]),
        .O(res_out_inferred_i_40_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_41
       (.CI(res_out_inferred_i_52_n_0),
        .CO({\sw[7] ,NLW_res_out_inferred_i_41_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[7:4]),
        .O(data0[7:4]),
        .S({res_out_inferred_i_60_n_0,res_out_inferred_i_61_n_0,res_out_inferred_i_62_n_0,res_out_inferred_i_63_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_42
       (.CI(res_out_inferred_i_47_n_0),
        .CO({NLW_res_out_inferred_i_42_CO_UNCONNECTED[3:2],res_out_inferred_i_42_n_2,NLW_res_out_inferred_i_42_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out_inferred_i_42_0,res_out_inferred_i_42_1[3]}),
        .O({NLW_res_out_inferred_i_42_O_UNCONNECTED[3:1],res_out_inferred_i_42_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_66_n_0,res_out_inferred_i_67_n_0}));
  LUT5 #(
    .INIT(32'h11117771)) 
    res_out_inferred_i_43
       (.I0(sw_IBUF[4]),
        .I1(res_out_inferred_i_47_n_6),
        .I2(res_out_inferred_i_68_n_0),
        .I3(res_out_inferred_i_69_n_0),
        .I4(res_out_inferred_i_70_n_0),
        .O(res_out_inferred_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    res_out_inferred_i_44
       (.I0(res_out_inferred_i_47_n_4),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_47_n_5),
        .I3(sw_IBUF[5]),
        .O(res_out_inferred_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    res_out_inferred_i_45
       (.I0(sw_IBUF[5]),
        .I1(res_out_inferred_i_47_n_5),
        .I2(sw_IBUF[6]),
        .I3(res_out_inferred_i_47_n_4),
        .O(res_out_inferred_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    res_out_inferred_i_46
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(btnu_IBUF),
        .I3(data1[6]),
        .I4(btnr_IBUF),
        .I5(data0[6]),
        .O(res_out_inferred_i_46_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_47
       (.CI(res_out_inferred_i_59_n_0),
        .CO({res_out_inferred_i_47_n_0,NLW_res_out_inferred_i_47_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_42_1[2:0],res_out_inferred_i_47_0[2]}),
        .O({res_out_inferred_i_47_n_4,res_out_inferred_i_47_n_5,res_out_inferred_i_47_n_6,res_out_inferred_i_47_n_7}),
        .S({res_out_inferred_i_72_n_0,res_out_inferred_i_73_n_0,res_out_inferred_i_74_n_0,res_out_inferred_i_75_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_48
       (.CI(res_out_inferred_i_76_n_0),
        .CO({NLW_res_out_inferred_i_48_CO_UNCONNECTED[3:2],data3[5],NLW_res_out_inferred_i_48_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[6],res_out0__122_carry__0_n_5}),
        .O({NLW_res_out_inferred_i_48_O_UNCONNECTED[3:1],res_out_inferred_i_48_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_77_n_0,res_out_inferred_i_78_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h032B2B3F)) 
    res_out_inferred_i_49
       (.I0(res_out_inferred_i_68_n_0),
        .I1(res_out_inferred_i_47_n_7),
        .I2(sw_IBUF[3]),
        .I3(res_out_inferred_i_59_n_4),
        .I4(sw_IBUF[2]),
        .O(res_out_inferred_i_49_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_5
       (.I0(btnl_IBUF),
        .I1(data2[11]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_50
       (.CI(res_out_inferred_i_79_n_0),
        .CO({NLW_res_out_inferred_i_50_CO_UNCONNECTED[3:2],data3[4],NLW_res_out_inferred_i_50_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[5],res_out_inferred_i_76_n_4}),
        .O({NLW_res_out_inferred_i_50_O_UNCONNECTED[3:1],res_out_inferred_i_50_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_80_n_0,res_out_inferred_i_81_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_51
       (.CI(res_out_inferred_i_82_n_0),
        .CO({NLW_res_out_inferred_i_51_CO_UNCONNECTED[3:2],data3[3],NLW_res_out_inferred_i_51_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[4],res_out_inferred_i_79_n_4}),
        .O({NLW_res_out_inferred_i_51_O_UNCONNECTED[3:1],res_out_inferred_i_51_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_83_n_0,res_out_inferred_i_84_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_52
       (.CI(1'b0),
        .CO({res_out_inferred_i_52_n_0,NLW_res_out_inferred_i_52_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[3:0]),
        .O(data0[3:0]),
        .S({res_out_inferred_i_85_n_0,res_out_inferred_i_86_n_0,res_out_inferred_i_87_n_0,res_out_inferred_i_88_n_0}));
  LUT6 #(
    .INIT(64'hEAFE1501BFAB4054)) 
    res_out_inferred_i_53
       (.I0(res_out_inferred_i_42_n_2),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_59_n_4),
        .I3(res_out_inferred_i_68_n_0),
        .I4(res_out_inferred_i_47_n_7),
        .I5(sw_IBUF[3]),
        .O(res_out_inferred_i_53_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_54
       (.CI(res_out_inferred_i_89_n_0),
        .CO({NLW_res_out_inferred_i_54_CO_UNCONNECTED[3:2],data3[2],NLW_res_out_inferred_i_54_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[3],res_out_inferred_i_82_n_4}),
        .O({NLW_res_out_inferred_i_54_O_UNCONNECTED[3:1],res_out_inferred_i_54_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_90_n_0,res_out_inferred_i_91_n_0}));
  LUT6 #(
    .INIT(64'hB8BB8B8833300003)) 
    res_out_inferred_i_55
       (.I0(sw_IBUF[10]),
        .I1(btnr_IBUF),
        .I2(res_out_inferred_i_42_n_2),
        .I3(res_out_inferred_i_68_n_0),
        .I4(res_out_inferred_i_59_n_4),
        .I5(sw_IBUF[2]),
        .O(res_out_inferred_i_55_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_56
       (.CI(res_out_inferred_i_92_n_0),
        .CO({NLW_res_out_inferred_i_56_CO_UNCONNECTED[3:2],data3[1],NLW_res_out_inferred_i_56_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[2],res_out_inferred_i_89_n_4}),
        .O({NLW_res_out_inferred_i_56_O_UNCONNECTED[3:1],res_out_inferred_i_56_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_93_n_0,res_out_inferred_i_94_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55556999)) 
    res_out_inferred_i_57
       (.I0(res_out_inferred_i_59_n_5),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_59_n_6),
        .I3(sw_IBUF[0]),
        .I4(res_out_inferred_i_42_n_2),
        .O(res_out_inferred_i_57_n_0));
  CARRY4 res_out_inferred_i_58
       (.CI(res_out_inferred_i_95_n_0),
        .CO({NLW_res_out_inferred_i_58_CO_UNCONNECTED[3:1],data3[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data3[1]}),
        .O(NLW_res_out_inferred_i_58_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,res_out_inferred_i_96_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_59
       (.CI(1'b0),
        .CO({res_out_inferred_i_59_n_0,NLW_res_out_inferred_i_59_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out_inferred_i_42_0),
        .DI({res_out_inferred_i_47_0[1:0],sw_IBUF[8],1'b0}),
        .O({res_out_inferred_i_59_n_4,res_out_inferred_i_59_n_5,res_out_inferred_i_59_n_6,NLW_res_out_inferred_i_59_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_97_n_0,res_out_inferred_i_98_n_0,res_out_inferred_i_99_n_0,1'b1}));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_6
       (.I0(btnl_IBUF),
        .I1(data2[10]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[10]));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_60
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[15]),
        .O(res_out_inferred_i_60_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_61
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[14]),
        .O(res_out_inferred_i_61_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_62
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .O(res_out_inferred_i_62_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_63
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[12]),
        .O(res_out_inferred_i_63_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_66
       (.I0(res_out_inferred_i_42_0),
        .I1(res_out_inferred_i_42_2),
        .O(res_out_inferred_i_66_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_67
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_42_1[3]),
        .O(res_out_inferred_i_67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    res_out_inferred_i_68
       (.I0(sw_IBUF[0]),
        .I1(res_out_inferred_i_59_n_6),
        .I2(sw_IBUF[1]),
        .I3(res_out_inferred_i_59_n_5),
        .O(res_out_inferred_i_68_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    res_out_inferred_i_69
       (.I0(res_out_inferred_i_59_n_4),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_47_n_7),
        .I3(sw_IBUF[3]),
        .O(res_out_inferred_i_69_n_0));
  LUT5 #(
    .INIT(32'h00400540)) 
    res_out_inferred_i_7
       (.I0(btnl_IBUF),
        .I1(data2[9]),
        .I2(btnu_IBUF),
        .I3(btnr_IBUF),
        .I4(res_out_inferred_i_17_n_3),
        .O(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    res_out_inferred_i_70
       (.I0(sw_IBUF[2]),
        .I1(res_out_inferred_i_59_n_4),
        .I2(sw_IBUF[3]),
        .I3(res_out_inferred_i_47_n_7),
        .O(res_out_inferred_i_70_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_72
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_42_1[2]),
        .O(res_out_inferred_i_72_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_73
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_42_1[1]),
        .O(res_out_inferred_i_73_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_74
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_42_1[0]),
        .O(res_out_inferred_i_74_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_75
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_47_0[2]),
        .O(res_out_inferred_i_75_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_76
       (.CI(res_out_inferred_i_112_n_0),
        .CO({res_out_inferred_i_76_n_0,NLW_res_out_inferred_i_76_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__122_carry__0_n_6,res_out0__122_carry__0_n_7,res_out0__122_carry_n_4,res_out0__122_carry_n_5}),
        .O({res_out_inferred_i_76_n_4,res_out_inferred_i_76_n_5,res_out_inferred_i_76_n_6,res_out_inferred_i_76_n_7}),
        .S({res_out_inferred_i_113_n_0,res_out_inferred_i_114_n_0,res_out_inferred_i_115_n_0,res_out_inferred_i_116_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_77
       (.I0(data3[6]),
        .I1(res_out0__122_carry__0_n_4),
        .O(res_out_inferred_i_77_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_78
       (.I0(data3[6]),
        .I1(sw_IBUF[7]),
        .I2(res_out0__122_carry__0_n_5),
        .O(res_out_inferred_i_78_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_79
       (.CI(res_out_inferred_i_117_n_0),
        .CO({res_out_inferred_i_79_n_0,NLW_res_out_inferred_i_79_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_76_n_5,res_out_inferred_i_76_n_6,res_out_inferred_i_76_n_7,res_out_inferred_i_112_n_4}),
        .O({res_out_inferred_i_79_n_4,res_out_inferred_i_79_n_5,res_out_inferred_i_79_n_6,res_out_inferred_i_79_n_7}),
        .S({res_out_inferred_i_118_n_0,res_out_inferred_i_119_n_0,res_out_inferred_i_120_n_0,res_out_inferred_i_121_n_0}));
  LUT6 #(
    .INIT(64'h0000454005054540)) 
    res_out_inferred_i_8
       (.I0(btnl_IBUF),
        .I1(data2[8]),
        .I2(btnu_IBUF),
        .I3(CO),
        .I4(btnr_IBUF),
        .I5(res_out_inferred_i_17_n_3),
        .O(out[8]));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_80
       (.I0(data3[5]),
        .I1(res_out_inferred_i_48_n_7),
        .O(res_out_inferred_i_80_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_81
       (.I0(data3[5]),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_76_n_4),
        .O(res_out_inferred_i_81_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_82
       (.CI(res_out_inferred_i_122_n_0),
        .CO({res_out_inferred_i_82_n_0,NLW_res_out_inferred_i_82_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_79_n_5,res_out_inferred_i_79_n_6,res_out_inferred_i_79_n_7,res_out_inferred_i_117_n_4}),
        .O({res_out_inferred_i_82_n_4,res_out_inferred_i_82_n_5,res_out_inferred_i_82_n_6,res_out_inferred_i_82_n_7}),
        .S({res_out_inferred_i_123_n_0,res_out_inferred_i_124_n_0,res_out_inferred_i_125_n_0,res_out_inferred_i_126_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_83
       (.I0(data3[4]),
        .I1(res_out_inferred_i_50_n_7),
        .O(res_out_inferred_i_83_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_84
       (.I0(data3[4]),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_79_n_4),
        .O(res_out_inferred_i_84_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_85
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .O(res_out_inferred_i_85_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_86
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[10]),
        .O(res_out_inferred_i_86_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_87
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[9]),
        .O(res_out_inferred_i_87_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_88
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[8]),
        .O(res_out_inferred_i_88_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_89
       (.CI(res_out_inferred_i_127_n_0),
        .CO({res_out_inferred_i_89_n_0,NLW_res_out_inferred_i_89_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_82_n_5,res_out_inferred_i_82_n_6,res_out_inferred_i_82_n_7,res_out_inferred_i_122_n_4}),
        .O({res_out_inferred_i_89_n_4,res_out_inferred_i_89_n_5,res_out_inferred_i_89_n_6,res_out_inferred_i_89_n_7}),
        .S({res_out_inferred_i_128_n_0,res_out_inferred_i_129_n_0,res_out_inferred_i_130_n_0,res_out_inferred_i_131_n_0}));
  LUT6 #(
    .INIT(64'hAAFEAAFEAAFE0000)) 
    res_out_inferred_i_9
       (.I0(res_out_inferred_i_19_n_0),
        .I1(res_out_inferred_i_20_n_0),
        .I2(btnr_IBUF),
        .I3(res_out_inferred_i_21_n_0),
        .I4(res_out_inferred_i_22_n_0),
        .I5(btnl_IBUF),
        .O(out[7]));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_90
       (.I0(data3[3]),
        .I1(res_out_inferred_i_51_n_7),
        .O(res_out_inferred_i_90_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_91
       (.I0(data3[3]),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_82_n_4),
        .O(res_out_inferred_i_91_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_92
       (.CI(res_out_inferred_i_132_n_0),
        .CO({res_out_inferred_i_92_n_0,NLW_res_out_inferred_i_92_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_89_n_5,res_out_inferred_i_89_n_6,res_out_inferred_i_89_n_7,res_out_inferred_i_127_n_4}),
        .O({res_out_inferred_i_92_n_4,res_out_inferred_i_92_n_5,res_out_inferred_i_92_n_6,res_out_inferred_i_92_n_7}),
        .S({res_out_inferred_i_133_n_0,res_out_inferred_i_134_n_0,res_out_inferred_i_135_n_0,res_out_inferred_i_136_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_93
       (.I0(data3[2]),
        .I1(res_out_inferred_i_54_n_7),
        .O(res_out_inferred_i_93_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_94
       (.I0(data3[2]),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_89_n_4),
        .O(res_out_inferred_i_94_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_95
       (.CI(res_out_inferred_i_137_n_0),
        .CO({res_out_inferred_i_95_n_0,NLW_res_out_inferred_i_95_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_92_n_4,res_out_inferred_i_92_n_5,res_out_inferred_i_92_n_6,res_out_inferred_i_92_n_7}),
        .O(NLW_res_out_inferred_i_95_O_UNCONNECTED[3:0]),
        .S({res_out_inferred_i_138_n_0,res_out_inferred_i_139_n_0,res_out_inferred_i_140_n_0,res_out_inferred_i_141_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_96
       (.I0(data3[1]),
        .I1(res_out_inferred_i_56_n_7),
        .O(res_out_inferred_i_96_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_97
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_47_0[1]),
        .O(res_out_inferred_i_97_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_98
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_47_0[0]),
        .O(res_out_inferred_i_98_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_99
       (.I0(res_out_inferred_i_42_0),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[8]),
        .O(res_out_inferred_i_99_n_0));
endmodule

(* ECO_CHECKSUM = "6c64b24" *) 
(* NotValidForBitStream *)
module top_level
   (sw,
    btnl,
    btnu,
    btnr,
    led,
    led17_r,
    led16_b,
    an,
    ca,
    cb,
    cc,
    cd,
    ce,
    cf,
    cg);
  input [15:0]sw;
  input btnl;
  input btnu;
  input btnr;
  output [15:0]led;
  output led17_r;
  output led16_b;
  output [7:0]an;
  output ca;
  output cb;
  output cc;
  output cd;
  output ce;
  output cf;
  output cg;

  wire [7:0]an;
  wire btnl;
  wire btnl_IBUF;
  wire btnr;
  wire btnr_IBUF;
  wire btnu;
  wire btnu_IBUF;
  wire ca;
  wire cb;
  wire cc;
  wire cd;
  wire ce;
  wire cf;
  wire cg;
  wire changes_n_18;
  wire changes_n_19;
  wire changes_n_20;
  wire changes_n_21;
  wire changes_n_22;
  wire changes_n_23;
  wire changes_n_24;
  wire changes_n_25;
  wire changes_n_26;
  wire changes_n_27;
  wire [8:8]data0;
  (* RTL_KEEP = "changes " *) wire eq_out;
  (* RTL_KEEP = "changes " *) wire gt_out;
  wire [15:0]led;
  wire led16_b;
  wire led17_r;
  (* RTL_KEEP = "changes " *) wire [15:0]res_out;
  wire res_out_inferred_i_100_n_2;
  wire res_out_inferred_i_100_n_7;
  wire res_out_inferred_i_101_n_0;
  wire res_out_inferred_i_101_n_4;
  wire res_out_inferred_i_101_n_5;
  wire res_out_inferred_i_101_n_6;
  wire res_out_inferred_i_101_n_7;
  wire res_out_inferred_i_102_n_0;
  wire res_out_inferred_i_103_n_0;
  wire res_out_inferred_i_104_n_0;
  wire res_out_inferred_i_104_n_4;
  wire res_out_inferred_i_104_n_5;
  wire res_out_inferred_i_104_n_6;
  wire res_out_inferred_i_105_n_0;
  wire res_out_inferred_i_106_n_0;
  wire res_out_inferred_i_107_n_0;
  wire res_out_inferred_i_108_n_0;
  wire res_out_inferred_i_109_n_0;
  wire res_out_inferred_i_110_n_0;
  wire res_out_inferred_i_111_n_0;
  wire res_out_inferred_i_142_n_2;
  wire res_out_inferred_i_142_n_7;
  wire res_out_inferred_i_143_n_0;
  wire res_out_inferred_i_143_n_4;
  wire res_out_inferred_i_143_n_5;
  wire res_out_inferred_i_143_n_6;
  wire res_out_inferred_i_143_n_7;
  wire res_out_inferred_i_144_n_0;
  wire res_out_inferred_i_145_n_0;
  wire res_out_inferred_i_146_n_0;
  wire res_out_inferred_i_146_n_4;
  wire res_out_inferred_i_146_n_5;
  wire res_out_inferred_i_146_n_6;
  wire res_out_inferred_i_147_n_0;
  wire res_out_inferred_i_148_n_0;
  wire res_out_inferred_i_149_n_0;
  wire res_out_inferred_i_150_n_0;
  wire res_out_inferred_i_151_n_0;
  wire res_out_inferred_i_152_n_0;
  wire res_out_inferred_i_153_n_0;
  wire res_out_inferred_i_174_n_2;
  wire res_out_inferred_i_174_n_7;
  wire res_out_inferred_i_175_n_0;
  wire res_out_inferred_i_175_n_4;
  wire res_out_inferred_i_175_n_5;
  wire res_out_inferred_i_175_n_6;
  wire res_out_inferred_i_175_n_7;
  wire res_out_inferred_i_176_n_0;
  wire res_out_inferred_i_177_n_0;
  wire res_out_inferred_i_178_n_0;
  wire res_out_inferred_i_178_n_4;
  wire res_out_inferred_i_178_n_5;
  wire res_out_inferred_i_178_n_6;
  wire res_out_inferred_i_179_n_0;
  wire res_out_inferred_i_180_n_0;
  wire res_out_inferred_i_181_n_0;
  wire res_out_inferred_i_182_n_0;
  wire res_out_inferred_i_183_n_0;
  wire res_out_inferred_i_184_n_0;
  wire res_out_inferred_i_185_n_0;
  wire res_out_inferred_i_188_n_0;
  wire res_out_inferred_i_189_n_0;
  wire res_out_inferred_i_191_n_0;
  wire res_out_inferred_i_192_n_0;
  wire res_out_inferred_i_193_n_0;
  wire res_out_inferred_i_194_n_0;
  wire res_out_inferred_i_195_n_0;
  wire res_out_inferred_i_196_n_0;
  wire res_out_inferred_i_197_n_0;
  wire res_out_inferred_i_64_n_2;
  wire res_out_inferred_i_64_n_7;
  wire res_out_inferred_i_65_n_0;
  wire res_out_inferred_i_65_n_4;
  wire res_out_inferred_i_65_n_5;
  wire res_out_inferred_i_65_n_6;
  wire res_out_inferred_i_65_n_7;
  wire res_out_inferred_i_71_n_0;
  wire res_out_inferred_i_71_n_4;
  wire res_out_inferred_i_71_n_5;
  wire res_out_inferred_i_71_n_6;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire [3:0]NLW_res_out_inferred_i_100_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_100_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_101_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_104_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_104_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_142_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_142_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_143_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_146_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_146_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_174_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_174_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_175_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_178_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_178_O_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_18_CO_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_18_O_UNCONNECTED;
  wire [3:0]NLW_res_out_inferred_i_64_CO_UNCONNECTED;
  wire [3:1]NLW_res_out_inferred_i_64_O_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_65_CO_UNCONNECTED;
  wire [2:0]NLW_res_out_inferred_i_71_CO_UNCONNECTED;
  wire [0:0]NLW_res_out_inferred_i_71_O_UNCONNECTED;

initial begin
 $sdf_annotate("cpu_impl_netlist.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(1'b1),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(1'b1),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(1'b1),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(1'b1),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(1'b1),
        .O(an[7]));
  IBUF btnl_IBUF_inst
       (.I(btnl),
        .O(btnl_IBUF));
  IBUF btnr_IBUF_inst
       (.I(btnr),
        .O(btnr_IBUF));
  IBUF btnu_IBUF_inst
       (.I(btnu),
        .O(btnu_IBUF));
  OBUFT ca_OBUF_inst
       (.I(1'b0),
        .O(ca),
        .T(1'b1));
  OBUFT cb_OBUF_inst
       (.I(1'b0),
        .O(cb),
        .T(1'b1));
  OBUFT cc_OBUF_inst
       (.I(1'b0),
        .O(cc),
        .T(1'b1));
  OBUFT cd_OBUF_inst
       (.I(1'b0),
        .O(cd),
        .T(1'b1));
  OBUFT ce_OBUF_inst
       (.I(1'b0),
        .O(ce),
        .T(1'b1));
  OBUFT cf_OBUF_inst
       (.I(1'b0),
        .O(cf),
        .T(1'b1));
  OBUFT cg_OBUF_inst
       (.I(1'b0),
        .O(cg),
        .T(1'b1));
  alu changes
       (.CO(data0),
        .DI({changes_n_19,changes_n_20,changes_n_21,changes_n_22}),
        .O({changes_n_23,changes_n_24}),
        .btnl_IBUF(btnl_IBUF),
        .btnr_IBUF(btnr_IBUF),
        .btnu_IBUF(btnu_IBUF),
        .eq_out(eq_out),
        .gt_out(gt_out),
        .out(res_out),
        .res_out_inferred_i_199_0({changes_n_25,changes_n_26}),
        .res_out_inferred_i_199_1(changes_n_27),
        .res_out_inferred_i_42_0(res_out_inferred_i_64_n_2),
        .res_out_inferred_i_42_1({res_out_inferred_i_65_n_4,res_out_inferred_i_65_n_5,res_out_inferred_i_65_n_6,res_out_inferred_i_65_n_7}),
        .res_out_inferred_i_42_2(res_out_inferred_i_64_n_7),
        .res_out_inferred_i_47_0({res_out_inferred_i_71_n_4,res_out_inferred_i_71_n_5,res_out_inferred_i_71_n_6}),
        .\sw[7] (changes_n_18),
        .sw_IBUF(sw_IBUF));
  OBUF led16_b_OBUF_inst
       (.I(eq_out),
        .O(led16_b));
  OBUF led17_r_OBUF_inst
       (.I(gt_out),
        .O(led17_r));
  OBUF \led_OBUF[0]_inst 
       (.I(res_out[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(res_out[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(res_out[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(res_out[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(res_out[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(res_out[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(res_out[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(res_out[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(res_out[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(res_out[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(res_out[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(res_out[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(res_out[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(res_out[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(res_out[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(res_out[9]),
        .O(led[9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_100
       (.CI(res_out_inferred_i_101_n_0),
        .CO({NLW_res_out_inferred_i_100_CO_UNCONNECTED[3:2],res_out_inferred_i_100_n_2,NLW_res_out_inferred_i_100_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out_inferred_i_142_n_2,res_out_inferred_i_143_n_4}),
        .O({NLW_res_out_inferred_i_100_O_UNCONNECTED[3:1],res_out_inferred_i_100_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_144_n_0,res_out_inferred_i_145_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_101
       (.CI(res_out_inferred_i_104_n_0),
        .CO({res_out_inferred_i_101_n_0,NLW_res_out_inferred_i_101_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_143_n_5,res_out_inferred_i_143_n_6,res_out_inferred_i_143_n_7,res_out_inferred_i_146_n_4}),
        .O({res_out_inferred_i_101_n_4,res_out_inferred_i_101_n_5,res_out_inferred_i_101_n_6,res_out_inferred_i_101_n_7}),
        .S({res_out_inferred_i_147_n_0,res_out_inferred_i_148_n_0,res_out_inferred_i_149_n_0,res_out_inferred_i_150_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_102
       (.I0(res_out_inferred_i_100_n_2),
        .I1(res_out_inferred_i_100_n_7),
        .O(res_out_inferred_i_102_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_103
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_101_n_4),
        .O(res_out_inferred_i_103_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_104
       (.CI(1'b0),
        .CO({res_out_inferred_i_104_n_0,NLW_res_out_inferred_i_104_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out_inferred_i_142_n_2),
        .DI({res_out_inferred_i_146_n_5,res_out_inferred_i_146_n_6,sw_IBUF[10],1'b0}),
        .O({res_out_inferred_i_104_n_4,res_out_inferred_i_104_n_5,res_out_inferred_i_104_n_6,NLW_res_out_inferred_i_104_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_151_n_0,res_out_inferred_i_152_n_0,res_out_inferred_i_153_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_105
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_101_n_5),
        .O(res_out_inferred_i_105_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_106
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_101_n_6),
        .O(res_out_inferred_i_106_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_107
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_101_n_7),
        .O(res_out_inferred_i_107_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_108
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_104_n_4),
        .O(res_out_inferred_i_108_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_109
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_104_n_5),
        .O(res_out_inferred_i_109_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_110
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_104_n_6),
        .O(res_out_inferred_i_110_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_111
       (.I0(res_out_inferred_i_100_n_2),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[9]),
        .O(res_out_inferred_i_111_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_142
       (.CI(res_out_inferred_i_143_n_0),
        .CO({NLW_res_out_inferred_i_142_CO_UNCONNECTED[3:2],res_out_inferred_i_142_n_2,NLW_res_out_inferred_i_142_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out_inferred_i_174_n_2,res_out_inferred_i_175_n_4}),
        .O({NLW_res_out_inferred_i_142_O_UNCONNECTED[3:1],res_out_inferred_i_142_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_176_n_0,res_out_inferred_i_177_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_143
       (.CI(res_out_inferred_i_146_n_0),
        .CO({res_out_inferred_i_143_n_0,NLW_res_out_inferred_i_143_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_175_n_5,res_out_inferred_i_175_n_6,res_out_inferred_i_175_n_7,res_out_inferred_i_178_n_4}),
        .O({res_out_inferred_i_143_n_4,res_out_inferred_i_143_n_5,res_out_inferred_i_143_n_6,res_out_inferred_i_143_n_7}),
        .S({res_out_inferred_i_179_n_0,res_out_inferred_i_180_n_0,res_out_inferred_i_181_n_0,res_out_inferred_i_182_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_144
       (.I0(res_out_inferred_i_142_n_2),
        .I1(res_out_inferred_i_142_n_7),
        .O(res_out_inferred_i_144_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_145
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_143_n_4),
        .O(res_out_inferred_i_145_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_146
       (.CI(1'b0),
        .CO({res_out_inferred_i_146_n_0,NLW_res_out_inferred_i_146_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out_inferred_i_174_n_2),
        .DI({res_out_inferred_i_178_n_5,res_out_inferred_i_178_n_6,sw_IBUF[11],1'b0}),
        .O({res_out_inferred_i_146_n_4,res_out_inferred_i_146_n_5,res_out_inferred_i_146_n_6,NLW_res_out_inferred_i_146_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_183_n_0,res_out_inferred_i_184_n_0,res_out_inferred_i_185_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_147
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_143_n_5),
        .O(res_out_inferred_i_147_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_148
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_143_n_6),
        .O(res_out_inferred_i_148_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_149
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_143_n_7),
        .O(res_out_inferred_i_149_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_150
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_146_n_4),
        .O(res_out_inferred_i_150_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_151
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_146_n_5),
        .O(res_out_inferred_i_151_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_152
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_146_n_6),
        .O(res_out_inferred_i_152_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_153
       (.I0(res_out_inferred_i_142_n_2),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[10]),
        .O(res_out_inferred_i_153_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_174
       (.CI(res_out_inferred_i_175_n_0),
        .CO({NLW_res_out_inferred_i_174_CO_UNCONNECTED[3:2],res_out_inferred_i_174_n_2,NLW_res_out_inferred_i_174_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,changes_n_25,changes_n_26}),
        .O({NLW_res_out_inferred_i_174_O_UNCONNECTED[3:1],res_out_inferred_i_174_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_188_n_0,res_out_inferred_i_189_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_175
       (.CI(res_out_inferred_i_178_n_0),
        .CO({res_out_inferred_i_175_n_0,NLW_res_out_inferred_i_175_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({changes_n_19,changes_n_20,changes_n_21,changes_n_22}),
        .O({res_out_inferred_i_175_n_4,res_out_inferred_i_175_n_5,res_out_inferred_i_175_n_6,res_out_inferred_i_175_n_7}),
        .S({res_out_inferred_i_191_n_0,res_out_inferred_i_192_n_0,res_out_inferred_i_193_n_0,res_out_inferred_i_194_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_176
       (.I0(res_out_inferred_i_174_n_2),
        .I1(res_out_inferred_i_174_n_7),
        .O(res_out_inferred_i_176_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_177
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[7]),
        .I2(res_out_inferred_i_175_n_4),
        .O(res_out_inferred_i_177_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_178
       (.CI(1'b0),
        .CO({res_out_inferred_i_178_n_0,NLW_res_out_inferred_i_178_CO_UNCONNECTED[2:0]}),
        .CYINIT(changes_n_25),
        .DI({changes_n_23,changes_n_24,sw_IBUF[12],1'b0}),
        .O({res_out_inferred_i_178_n_4,res_out_inferred_i_178_n_5,res_out_inferred_i_178_n_6,NLW_res_out_inferred_i_178_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_195_n_0,res_out_inferred_i_196_n_0,res_out_inferred_i_197_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_179
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[6]),
        .I2(res_out_inferred_i_175_n_5),
        .O(res_out_inferred_i_179_n_0));
  CARRY4 res_out_inferred_i_18
       (.CI(changes_n_18),
        .CO({NLW_res_out_inferred_i_18_CO_UNCONNECTED[3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_res_out_inferred_i_18_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_180
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[5]),
        .I2(res_out_inferred_i_175_n_6),
        .O(res_out_inferred_i_180_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_181
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[4]),
        .I2(res_out_inferred_i_175_n_7),
        .O(res_out_inferred_i_181_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_182
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[3]),
        .I2(res_out_inferred_i_178_n_4),
        .O(res_out_inferred_i_182_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_183
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[2]),
        .I2(res_out_inferred_i_178_n_5),
        .O(res_out_inferred_i_183_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_184
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[1]),
        .I2(res_out_inferred_i_178_n_6),
        .O(res_out_inferred_i_184_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_185
       (.I0(res_out_inferred_i_174_n_2),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[11]),
        .O(res_out_inferred_i_185_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out_inferred_i_188
       (.I0(changes_n_25),
        .I1(changes_n_27),
        .O(res_out_inferred_i_188_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_189
       (.I0(changes_n_25),
        .I1(sw_IBUF[7]),
        .I2(changes_n_26),
        .O(res_out_inferred_i_189_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_191
       (.I0(changes_n_25),
        .I1(sw_IBUF[6]),
        .I2(changes_n_19),
        .O(res_out_inferred_i_191_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_192
       (.I0(changes_n_25),
        .I1(sw_IBUF[5]),
        .I2(changes_n_20),
        .O(res_out_inferred_i_192_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_193
       (.I0(changes_n_25),
        .I1(sw_IBUF[4]),
        .I2(changes_n_21),
        .O(res_out_inferred_i_193_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_194
       (.I0(changes_n_25),
        .I1(sw_IBUF[3]),
        .I2(changes_n_22),
        .O(res_out_inferred_i_194_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_195
       (.I0(changes_n_25),
        .I1(sw_IBUF[2]),
        .I2(changes_n_23),
        .O(res_out_inferred_i_195_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_196
       (.I0(changes_n_25),
        .I1(sw_IBUF[1]),
        .I2(changes_n_24),
        .O(res_out_inferred_i_196_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out_inferred_i_197
       (.I0(changes_n_25),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[12]),
        .O(res_out_inferred_i_197_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_64
       (.CI(res_out_inferred_i_65_n_0),
        .CO({NLW_res_out_inferred_i_64_CO_UNCONNECTED[3:2],res_out_inferred_i_64_n_2,NLW_res_out_inferred_i_64_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out_inferred_i_100_n_2,res_out_inferred_i_101_n_4}),
        .O({NLW_res_out_inferred_i_64_O_UNCONNECTED[3:1],res_out_inferred_i_64_n_7}),
        .S({1'b0,1'b0,res_out_inferred_i_102_n_0,res_out_inferred_i_103_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_65
       (.CI(res_out_inferred_i_71_n_0),
        .CO({res_out_inferred_i_65_n_0,NLW_res_out_inferred_i_65_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out_inferred_i_101_n_5,res_out_inferred_i_101_n_6,res_out_inferred_i_101_n_7,res_out_inferred_i_104_n_4}),
        .O({res_out_inferred_i_65_n_4,res_out_inferred_i_65_n_5,res_out_inferred_i_65_n_6,res_out_inferred_i_65_n_7}),
        .S({res_out_inferred_i_105_n_0,res_out_inferred_i_106_n_0,res_out_inferred_i_107_n_0,res_out_inferred_i_108_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_out_inferred_i_71
       (.CI(1'b0),
        .CO({res_out_inferred_i_71_n_0,NLW_res_out_inferred_i_71_CO_UNCONNECTED[2:0]}),
        .CYINIT(res_out_inferred_i_100_n_2),
        .DI({res_out_inferred_i_104_n_5,res_out_inferred_i_104_n_6,sw_IBUF[9],1'b0}),
        .O({res_out_inferred_i_71_n_4,res_out_inferred_i_71_n_5,res_out_inferred_i_71_n_6,NLW_res_out_inferred_i_71_O_UNCONNECTED[0]}),
        .S({res_out_inferred_i_109_n_0,res_out_inferred_i_110_n_0,res_out_inferred_i_111_n_0,1'b1}));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
