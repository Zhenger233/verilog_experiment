`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 11:08:17
// Design Name: 
// Module Name: sim
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


module sim;
    reg  [3:0] ain;
    wire [7:0] seg;
    wire [5:0] dig;
    
    decoder  uut(ain,seg,dig);
    initial
       begin 
        ain = 0;
       end    
    always #10 ain = ain+1;
endmodule
