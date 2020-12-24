`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 18:55:23
// Design Name: 
// Module Name: divclk
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


module divclk(clk_in,clk_out);
	input clk_in;
	output reg clk_out=0;//��reg����always����Ҫ�ı���ֵ
 	reg[24:0] clk_div_cnt=0;
//��ƵΪ5Hz���ź�
        always @ (posedge clk_in)
        begin
            if (clk_div_cnt==24999999)//10M��Ƶ
            begin
                clk_out=~clk_out;
                clk_div_cnt=0;
            end
            else 
                clk_div_cnt=clk_div_cnt+1;
       end
 endmodule
