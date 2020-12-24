`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 18:41:27
// Design Name: 
// Module Name: e_7
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
// module counter10(clk,clr,EN,Q,cy);
//////////////////////////////////////////////////////////////////////////////////


module e_7(
    input clk_50M,
    input CLR_L,
    input start_stop,
    output [7:0] seg,
    output [1:0] dig
    );
    reg EN=1;
    wire clk_s;
    divclk c(.clk_in(clk_50M),.clk_out(clk_s));
    wire [3:0]Q0;
    wire cy0;
    reg en;
    always@(EN or start_stop)en=EN&start_stop;
    counter10 c10(.clk(clk_s),.clr(CLR_L),.EN(en),.cy(cy0),.Q(Q0));
    wire [1:0]Q1;
    wire cy1;
    counter4 c4(.clk(clk_s),.clr(CLR_L),.EN(cy0),.cy(cy1),.Q(Q1));
    
    wire [3:0] disp_data_right0,disp_data_right1,disp_data_right2;
    assign disp_data_right0=Q0;
    assign disp_data_right1={2'h0,Q1};
    always@(Q0 or Q1)if(Q0==0&&Q1==0)EN=0;else EN=1;
    
    dynamic_led2 l(.disp_data_right0(disp_data_right0),.disp_data_right1(disp_data_right1),.clk(clk_50M),.seg(seg),.dig(dig));
endmodule
                                                    
                                          
