`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 19:02:32
// Design Name: 
// Module Name: counter4
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

module counter4(clk,clr,EN,Q,cy);
	input clk,clr;
	input EN;               //ʹ���ź�
	output cy;              //��������λ���
	output reg [1:0] Q;     // �����������
        
         always @(posedge clk or negedge clr)  //�첽����
              begin
                  if (~clr)       //������Ч
                    begin 
                     Q<=3;
                   end          //���������������������Ϊ0
                  else if(EN==1)  //ʹ����Ч
                    begin
                     if (Q==0)    //����+1������λ�Ѿ��������9
                      begin 
                        Q<=3;      //�����ת����С��0
                        end
                     else Q<=Q-1;       //�����δ�����������ֻ��1
                     end
              end
               //�Ƶ������9��ͬʱʹ����Ч�����CyΪ1
              assign cy=((EN==1)&&(Q==0))?1'b1:1'b0;
endmodule
