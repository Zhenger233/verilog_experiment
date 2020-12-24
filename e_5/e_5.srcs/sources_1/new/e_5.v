`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 11:07:18
// Design Name: 
// Module Name: e_5
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


module e_5(
    input clk,
    input clr,//�������첽�����ź�
    input col, //1�� ����
    output [3:0] row,//4 row,���
    output [7:0] seg, //segment
    output [5:0] dig   //dig
    );
assign row[3:0]=0001;  //�̶�һ��row3 
 wire clk_20ms;  //20ms clk
 wire  btnout0;  //������İ����ź�
 wire [11:0] showdat_d;  //�����������Ҫ��ʾ������
 wire [11:0] showdat_nod;  //δ����������Ҫ��ʾ������
 dynamic_led6 a(  //����6λ��̬��ʾģ��ʵ����ʾ
   .clk(clk),
   .disp_data_right0(showdat_d[3:0]),//������������ļ��������ÿ4λһ�飬�ֱ���ʾ���ұ�3λLED
   .disp_data_right1(showdat_d[7:4]),
   .disp_data_right2(showdat_d[11:8]),
   .disp_data_right3(showdat_nod[3:0]),//��δ���������ļ��������ÿ4λһ�飬�ֱ���ʾ�����3λLED
   .disp_data_right4(showdat_nod[7:4]),
   .disp_data_right5(showdat_nod[11:8]),
    .seg(seg),
    .dig(dig)
    );
 divclk divclk(.clk(clk),.btnclk(clk_20ms));    //���÷�Ƶ��ģ��
//������������Ϊ������ʱ�ӵĳ���  
 reg[11:0] cnt1=0;  //12λ�ļ���ֵ����ʼΪ0
 assign showdat_d[11:0]=cnt1[11:0];//����ֵ����ʾ
//������д���ð�������ģ�����
 ajxd aj(.btn_in(col),.btn_clk(clk_20ms),.btn_out(btnout0));




//������д���ð�������ģ�����
always@(posedge btnout0)// �������İ�����ʱ�ӵļ���������
 if(clr==1)
    begin 
      cnt1<=0;
      end
 else
     begin
        cnt1<=cnt1+1;
     end 
//����������ֱ����Ϊ������ʱ�ӵĳ��� 
  reg[11:0] cnt2=0;  //12λ�ļ���ֵ����ʼΪ0
 assign showdat_nod[11:0]=cnt2[11:0];//����ֵ��ʾ
 always@(posedge col)// ��δ�����İ���������
  if(clr==1)
      begin 
       cnt2<=0;
       end
   else
      begin
         cnt2<=cnt2+1;
      end 
  endmodule
