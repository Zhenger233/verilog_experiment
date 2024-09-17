`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 20:50:31
// Design Name: 
// Module Name: dsbjq_x151
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


//module dsbjq_x151(i1,i2,i3,i4,o);
//    input i1=0,i2=0,i3=0,i4=0;
//    output o;
//    reg d=8'b10000000;
//    always @(i4) d=d|i4<<3|i4<<6;
//    x151 u151(.en_l(0),.a({i1,i2,i3}),.d(d),.y(o),.y_l());
//endmodule
//    assign temp1=i[3:1];
//    assign temp2=(8'b10000000)|(i[0]<<3)|(i[0]<<6);

//module dsbjq4_x151(input [3:0]i,output o);
//    x151 u151(0,i[3:1],8'b10000000|i[0]<<3|i[0]<<5|i[0]<<6,o,);
//endmodule

module f(input [4:0]i,output o);
    x151 u151(i[4],i[3:1],{~i[0],i[0],4'd2,{2{i[0]}}},o,);
endmodule