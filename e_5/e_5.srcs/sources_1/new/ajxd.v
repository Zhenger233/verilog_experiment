`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 11:11:49
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
    reg  btn0=0;//������btn0�Ĵ���
    reg  btn1=0;//������btn1�Ĵ���
    reg  btn2=0;//������btn2�Ĵ���
  //������ο��μ������Լ���д�԰���btn_in����������
    always@(posedge btn_clk)
    begin
        btn0<=btn_in;
        btn1<=btn0;
        btn2<=btn1;
    end
    assign btn_out=(btn2&btn1&btn0)|(~btn2&btn1&btn0); 
 
 
 //��������д�԰���btn_in����������
endmodule
