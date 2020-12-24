`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 10:50:48
// Design Name: 
// Module Name: decoder
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


module decoder4 (    
    input   [3:0] ain,
    output reg [7:0] seg,
    output [5:0] dig
    );
    assign dig=6'b111110;
always@(ain)       
        case(ain)
        4'b0000: seg = 8'b11111100;
        4'b0001: seg = 8'b01100000;
        4'b0010: seg = 8'b11011010;
        4'b0011: seg = 8'b11110010;
        4'b0100: seg = 8'b01100110;
        4'b0101: seg = 8'b10110110;
        4'b0110: seg = 8'b10111110;
        4'b0111: seg = 8'b11100000;
        4'b1000: seg = 8'b11111110;
        4'b1001: seg = 8'b11100110;
        4'b1010: seg = 8'b11101110;
        4'b1011: seg = 8'b00111110;
        4'b1100: seg = 8'b10011100;
        4'b1101: seg = 8'b01111010;
        4'b1110: seg = 8'b10011110;
        4'b1111: seg = 8'b10001110;
          default: seg = 8'b00000000;
        endcase
 endmodule