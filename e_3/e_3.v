`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 11:00:11
// Design Name: 
// Module Name: e_3
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


module e_3(
    input clkin,
    input clr,
    output [7:0] seg,
    output [5:0] dig,
    output reg [3:0] Q
    );
    wire [3:0] w;
    wire c;
    s_div us(clkin,,c);
    counter_4bit u4(c,clr,w);
    decoder4 ud(w,seg,dig);
    always@(w)Q=w;
endmodule
