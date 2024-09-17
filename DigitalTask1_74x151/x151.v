`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 14:06:29
// Design Name: 
// Module Name: x151
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
//case (a)
//    0:y=d[0];
//    1:y=d[1];
//    2:y=d[2];
//    3:y=d[3];
//    4:y=d[4];
//    5:y=d[5];
//    6:y=d[6];
//    7:y=d[7];
//endcase

module x151(input en_l,input [2:0]a,input [7:0]d,output y,output y_l);
    assign y=en_l?0:d[a],y_l=~y;
endmodule

