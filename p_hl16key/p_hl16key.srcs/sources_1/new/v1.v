`timescale 1ns / 1ps
//module v1(input clk,input [11:0] sw,input [3:0] col,output [3:0] row,output [15:0] led,output [7:0] seg,output [5:0] an);
// wire clk_ms,clk_20ms;
// wire [15:0] btnout;
// reg [15:0]b1=0,b2=0;
// reg [15:0]led=0;
// reg [23:0] showdat=0;
// reg [51:0] queue=0;
// reg [3:0] flag=0;
// reg[4:0] i=0;
// parameter [51:0]num=52'h4101040608102;
//reg [3:0]temp=0;
//ip_disp a(.clk(clk),.rst(0),.dispdata(showdat),.seg(seg),.an(an));
//divclk my_divclk(.clk(clk),.clk_ms(clk_ms),.btnclk(clk_20ms));    //���÷�Ƶģ��
//v_ajxd uut_ajxd(.clk(clk_ms),.btn_clk(clk_20ms),.col(col),.row(row),.btn_out(btnout));
 
//always @ (posedge clk_ms)
//begin
//    led[9:0]<=btnout[9:0];
//    led[10]<=(btnout[15:10]==0?0:1);
//    b1<=btnout;
//    b2<=b1;
//    if(b2==0&&b1!=0)begin 
//        for(i=0;i<=15;i=i+1)begin
//            if (b1[i]==1)begin
//                queue=(queue<<4)+i;
//                showdat=queue[23:0]; 
//                temp=num>>(4*flag)%16;
//                if(i==temp)begin 
//                    flag=flag+1;
//                    led[15:12]<=flag;
//                    if(flag==13)begin flag=0;led[11]=1;end else led[11]=0;
//                end
//                else flag=0;
//            end
//        end
//    end
//end
// endmodule
module testled(output [16:0]led);
assign led=17'h1ffff;
endmodule
// module v2(input clk,input [11:0]sw,output [7:0] seg,output [5:0] an);
// reg [23:0] showdat=24'h654321;
// ip_disp a(.clk(clk),.rst(0),.dispdata(showdat),.seg(seg),.an(an));
// endmodule
 
 // reg[15:0] r1,r2;
 // always @ (posedge clk_ms)
 // begin
 //     r1<=btnout;
 //     r2<=r1;
 //     if (r1&~r2)
 //      your process of key;     
 // end
 //////////////////////////////////////////////////////////////////////////////////
 // ���а�����ֻ����һ�� ������õ�20MS�������İ������Σ�����Ч
 //LED��ʾ��Ӧ�������������ʾLEDֵ
 //��Ҫע��Լ���ļ��н�����Ϊ���������Ϊ���룬�б���������û��ʱ����0��
 //¬���� 2018.06.18
 //////////////////////////////////////////////////////////////////////////////////