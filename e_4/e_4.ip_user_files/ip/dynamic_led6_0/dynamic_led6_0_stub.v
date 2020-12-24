// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec  3 10:57:42 2020
// Host        : Zhenger running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/vvd/e_4/e_4.srcs/sources_1/ip/dynamic_led6_0/dynamic_led6_0_stub.v
// Design      : dynamic_led6_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dynamic_led6,Vivado 2018.3" *)
module dynamic_led6_0(disp_data_right0, disp_data_right1, 
  disp_data_right2, disp_data_right3, disp_data_right4, disp_data_right5, clk, seg, dig)
/* synthesis syn_black_box black_box_pad_pin="disp_data_right0[3:0],disp_data_right1[3:0],disp_data_right2[3:0],disp_data_right3[3:0],disp_data_right4[3:0],disp_data_right5[3:0],clk,seg[7:0],dig[5:0]" */;
  input [3:0]disp_data_right0;
  input [3:0]disp_data_right1;
  input [3:0]disp_data_right2;
  input [3:0]disp_data_right3;
  input [3:0]disp_data_right4;
  input [3:0]disp_data_right5;
  input clk;
  output [7:0]seg;
  output [5:0]dig;
endmodule
