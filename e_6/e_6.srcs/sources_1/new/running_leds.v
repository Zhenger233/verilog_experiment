`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 12:39:04
// Design Name: 
// Module Name: running_leds
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

module running_leds(
 input clk,
 input m,
 output reg [11:0]led
    );
    reg[3:0]s_present=0;
    reg[3:0]s_next;
    always@(m,s_present)
        if(m&(s_present==6)|(s_present==9))s_next=0;
        else s_next=s_present+1;
    always@(negedge clk)s_present<=s_next;
    always@(m,s_present)
        if(m)
            case(s_present)
                0:led=12'b0;
                1:led=12'h60;
                2:led=12'hf0;
                3:led=12'h1f8;
                4:led=12'h3fc;
                5:led=12'h7fe;
                6:led=12'hfff;
                default: led=12'bxxxxxxxxxxxx;
            endcase
        else
            case(s_present)
                0:led=12'h801;
                1:led=12'h402;
                2:led=12'h204;
                3:led=12'h108;
                4:led=12'h90;
                5:led=12'h60;
                6:led=12'h90;
                7:led=12'h108;
                8:led=12'h204;
                9:led=12'h402;
                default:led=12'bxxxxxxxxxxxx;
            endcase
endmodule

