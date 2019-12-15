`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 14:26:19
// Design Name: 
// Module Name: sim1
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


module sim1;
    reg en_l=0;
    reg [2:0]a=0;
    reg [7:0]d=0;
    wire y;
    wire y_l;
    x151 u151(en_l,a,d,y,y_l);
    always #10 begin
    a=a+1;
    d=0;#10
    d=1;
    repeat(7)begin #10 d=d<<1; end
    end

//    reg [3:0]i=0;
//    wire o;
//    dsbjq4_x151 uut(i,o);
//    always #10 i=i+1;
    
    reg [4:0]i=0;
    wire o;
    f uut(i,o);
    always #10 i=i+1;
endmodule
