`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 11:14:10
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(clk,clr,qout);
input clk,clr;
output reg [3:0] qout=0;
always@(posedge clk)
begin
//    if (clr==1 || qout==9) 
//        qout=0;
//        else    qout=qout+1;
    qout<=(clr==1 || qout==9)?0:qout+1;
end
endmodule
