`timescale 1ns / 1ps
module v1(input clk,input [11:0] sw,input [3:0] col,output [3:0] row,output [15:0] led,output [7:0] seg,output [5:0] an,output beep);
 wire clk_ms,clk_20ms;
 wire [15:0] btnout;
 reg [15:0]b1=0,b2=0;
 reg [15:0]led=0;
 reg [23:0] showdat=0;
 reg [51:0] queue=0;
 reg [3:0] flag=0;
 reg[4:0] i=0;
 reg [3:0]temp=0;
 reg music,sound;
 parameter [51:0]num=52'h4101040608102;
ip_disp a(.clk(clk),.rst(0),.dispdata(showdat),.seg(seg),.an(an));
divclk my_divclk(.clk(clk),.clk_ms(clk_ms),.btnclk(clk_20ms));
v_ajxd uut_ajxd(.clk(clk_ms),.btn_clk(clk_20ms),.col(col),.row(row),.btn_out(btnout));
beep bbb(sound,music,clk,btnout,beep);
always @ (posedge clk_ms)
begin
    if(sw[0])sound=1;else sound=0;
    led[9:0]<=btnout[9:0];
    led[10]<=(btnout[15:10]==0?0:1);
    b1<=btnout;
    b2<=b1;
    if(b2==0&&b1!=0)begin 
        for(i=0;i<=15;i=i+1)begin
            if (b1[i]==1)begin
                queue=(queue<<4)+i;
                showdat=queue[19:0]; 
                temp=(num>>(4*flag))%16;
                if(i==temp)flag=flag+1; else flag=(i==2?1:0);
                showdat={flag,showdat[19:0]};
                if(flag==13)begin led[11]=1;flag=0;music=1;end else begin led[11]=0; music=0;end
            end
        end
    end
end
 endmodule
//module testled(output [16:0]led);
//reg [16:0]led=17'h1ffff;
//endmodule
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
 // 行列按键，只是用一行 消抖后得到20MS整数倍的按键波形，高有效
 //LED显示对应按键，数码管显示LED值
 //需要注意约束文件中将行作为输出，列作为输入，列必须下拉（没按时读到0）
 //卢有亮 2018.06.18
 //////////////////////////////////////////////////////////////////////////////////