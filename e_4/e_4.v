`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 10:55:03
// Design Name: 
// Module Name: e_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module e_4(
input clk,
output [7:0] seg,
output [5:0] dig
    );
    dynamic_led6_0 uu0(
    .clk(clk),
    .disp_data_right0(5),
    .disp_data_right1(4),
    .disp_data_right2(3),
    .disp_data_right3(2),
    .disp_data_right4(1),
    .disp_data_right5(0),
    .seg(seg),
    .dig(dig)
    );    
endmodule
