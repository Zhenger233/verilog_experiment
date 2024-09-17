`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 12:28:25
// Design Name: 
// Module Name: e_6
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


module e_6(
 input sel,
 input clk,
 output [11:0]led
    );
 wire bclk;
 divclk c(.clk(clk),.btnclk(bclk));
 running_leds r(.clk(bclk),.m(sel),.led(led));
 
endmodule
