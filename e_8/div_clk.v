`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/23 19:05:18
// Design Name: 
// Module Name: div_clk
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



module div_clk(clk_in,clk_10Hz,clk_50Hz,clk_1Hz,clk_261Hz);
	input clk_in;
	output reg clk_10Hz=0;//用reg后面always中需要改变数�?
    output reg clk_50Hz=0;
    output reg clk_1Hz=0;
    output reg clk_261Hz=0;
    reg[24:0] clk_10Hz_cnt=0;
    reg[31:0] clk_50Hz_cnt = 0;//�?50M时钟1M分频的计数器 
    reg[31:0] clk_1Hz_cnt = 0;
    reg[31:0] clk_261Hz_cnt = 0;


    always @ (posedge clk_in)
    begin
        if (clk_10Hz_cnt==2499999)//10M分频
        begin
            clk_10Hz=~clk_10Hz;
            clk_10Hz_cnt=0;
        end
        else 
            clk_10Hz_cnt=clk_10Hz_cnt+1;
    end

    always@(posedge clk_in) //20ms 50M/50=1000000 50Hz
    begin
        if(clk_50Hz_cnt==499999)
        begin
            clk_50Hz =~ clk_50Hz;
            clk_50Hz_cnt = 0;
        end
        else
        begin
            clk_50Hz_cnt = clk_50Hz_cnt+1'b1;
        end
    end
    always@(posedge clk_in)
    begin
        if(clk_1Hz_cnt==24999999)
        begin
            clk_1Hz =~ clk_1Hz;
            clk_1Hz_cnt = 0;
        end
        else
        begin
            clk_1Hz_cnt = clk_1Hz_cnt+1'b1;
        end
    end
    always@(posedge clk_in)
    begin
        if(clk_261Hz_cnt==95785)
        begin
            clk_261Hz =~ clk_261Hz;
            clk_261Hz_cnt = 0;
        end
        else
        begin
            clk_261Hz_cnt = clk_261Hz_cnt+1'b1;
        end
    end
endmodule
