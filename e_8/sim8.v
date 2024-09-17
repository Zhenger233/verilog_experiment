`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/24 20:28:27
// Design Name: 
// Module Name: sim8
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


module sim8(
output clk10,clk50,clk1,clk261,
output [11:0]led,
output beep

    );
    reg clk=0;
div_clk dc(clk,clk10,clk50,clk1,clk261);
always #10 clk=~clk;
chessClock cc(clk,,,,,,,led,beep);
endmodule
