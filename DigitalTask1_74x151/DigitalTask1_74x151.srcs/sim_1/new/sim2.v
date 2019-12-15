`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 21:15:58
// Design Name: 
// Module Name: sim2
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


module sim2();
    reg [2:0]i;
    reg ii;
    wire o;
    integer tempcount=0;
    dsbjq_x151(i,ii,o);
    
    initial begin
    i=0;
    ii=0;
    end
    
    always #10 begin
    ii=tempcount%2;
    i=tempcount%16/2;
    tempcount=tempcount+1;
    end
endmodule
