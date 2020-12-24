`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 18:57:12
// Design Name: 
// Module Name: counter10
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


module counter10(clk,clr,EN,Q,cy);
	input clk,clr;
	input EN;               //ʹ���ź�
	output cy;              //��������λ���
	output reg [3:0] Q;     // �����������
    reg [3:0]t;
         always @(posedge clk or negedge clr)  //�첽����
              begin
                  if (~clr)       //������Ч
                    begin 
                     t<=10;
                   end          //���������������������Ϊ0
                  else if(EN==1)  //ʹ����Ч
                    begin
                     if (t==1)    //����+1������λ�Ѿ��������9
                      begin 
                        t<=10;      //�����ת����С��0
                        end
                     else t<=t-1;       //�����δ�����������ֻ��1
                     end
              end
               //�Ƶ������9��ͬʱʹ����Ч�����CyΪ1
               always@(t)Q<=t%10;
              assign cy=((EN==1)&&(t==10))?1'b1:1'b0;
endmodule
