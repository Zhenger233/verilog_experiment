`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/24 00:28:05
// Design Name: 
// Module Name: ajxd
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


module ajxd(
    input btn_in,
    input btn_clk,
    output btn_out
    );  
    reg  btn0=0;//定义了btn0寄存�?
    reg  btn1=0;//定义了btn1寄存�?
    reg  btn2=0;//定义了btn2寄存�?
  //在下面参考课件程序，自己填写对按键btn_in的消抖程�?
    always@(posedge btn_clk)
    begin
        btn0<=btn_in;
        btn1<=btn0;
        btn2<=btn1;
    end
    assign btn_out=(btn2&btn1&btn0)|(~btn2&btn1&btn0); 
 
 
 //上面须填写对按键btn_in的消抖程�?
endmodule
