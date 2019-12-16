`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/27 11:27:30
// Design Name: 
// Module Name: v1
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

module ip_disp(
    input clk,
    input rst,
    input [23:0] dispdata,
    output [7:0] seg,
    output [5:0] an
    );
    reg[14:0] divclk_cnt = 0;      //��Ƶ����ֵ
    reg divclk = 0;                //��Ƶ���ʱ��
    reg [7:0] seg=0;               //����
    reg [5:0] an=6'b111110;          //λ��
    reg [3:0] disp_dat=0;          //Ҫ��ʾ������    
    reg [2:0] disp_bit=0;          //Ҫ��ʾ��λ       
    parameter maxcnt=25000;
    always@(posedge clk) 
    begin
        if(divclk_cnt==maxcnt)
        begin
            divclk =~ divclk;
            divclk_cnt = 0;
        end
        else
        begin
             divclk_cnt = divclk_cnt+1'b1;
        end
    end
    always@(posedge divclk)
    begin

        if (disp_bit>=5)
            disp_bit=0;
        else
            disp_bit=disp_bit+1;
        
		case (disp_bit)
			3'h0 :
			begin
			 disp_dat=dispdata[3:0];
			 an = 6'b111110; //��ʾ��һ�������,�͵�ƽ��Ч
			end  
			3'h1 :
			begin
			 disp_dat=dispdata[7:4];
			 an = 6'b111101; //��ʾ�ڶ�������ܣ��͵�ƽ��Ч
			end
			3'h2 :
		   begin
			 disp_dat=dispdata[11:8];           
			 an = 6'b111011; //��ʾ����������ܣ��͵�ƽ��Ч
		   end
			3'h3 :
			begin
			  disp_dat=dispdata[15:12]; 
			  an = 6'b110111; //��ʾ���ĸ�����ܣ��͵�ƽ��Ч
			end
			3'h4 :
			begin
			  disp_dat=dispdata[19:16]; 
			  an = 6'b101111; //��ʾ���������ܣ��͵�ƽ��Ч
			end
			3'h5 :
			begin
			  disp_dat=dispdata[23:20];
			  an = 6'b011111; //��ʾ����������ܣ��͵�ƽ��Ч
			end
			default:
			begin
				disp_dat=0;
				an = 6'b111111;
			end
		endcase 
    end
    
    always @ (disp_dat)
    begin
		case (disp_dat)
		4'h0 : seg = 8'h3f; //��ʾ"0"
		4'h1 : seg = 8'h06; //��ʾ"1"
		4'h2 : seg = 8'h5b; //��ʾ"2"
		4'h3 : seg = 8'h4f; //��ʾ"3"
		4'h4 : seg = 8'h66; //��ʾ"4"
		4'h5 : seg = 8'h6d; //��ʾ"5" 01101101
		4'h6 : seg = 8'h7d; //��ʾ"6"
		4'h7 : seg = 8'h07; //��ʾ"7"
		4'h8 : seg = 8'h7f; //��ʾ"8"
		4'h9 : seg = 8'h6f; //��ʾ"9"
		4'ha : seg = 8'h77; //��ʾ"a"
		4'hb : seg = 8'h7c; //��ʾ"b"
		4'hc : seg = 8'h39; //��ʾ"c"
		4'hd : seg = 8'h5e; //��ʾ"d"
		4'he : seg = 8'h79; //��ʾ"e"
		4'hf : seg = 8'h71; //��ʾ"f"
		endcase
    end   
endmodule
