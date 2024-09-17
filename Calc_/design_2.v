`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/17 15:37:35
// Design Name: 
// Module Name: design_2
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
//      led<=btnout[11:0];
//      for(i=0;i<=15;i=i+1)
//        if (btnout[i]==1) 
//                 showdat<=i; 
module cal(input clk,input [3:0]col,output[3:0]row,output[15:0]led,output [7:0]seg,output[5:0]an);
 wire clk_ms,clk_20ms;
 wire [15:0] btnout;
 reg [15:0]b1=0,b2=0;
 reg [15:0]led=0;
 reg [23:0] showdat=0,n1=0,n2=0,ans=0;
 reg [23:0] queue=0;
 reg [4:0]i=0,flag=0;
ip_disp a(.clk(clk),.rst(0),.dispdata(showdat),.seg(seg),.an(an));
divclk my_divclk(.clk(clk),.clk_ms(clk_ms),.btnclk(clk_20ms));
v_ajxd uut_ajxd(.clk(clk_ms),.btn_clk(clk_20ms),.col(col),.row(row),.btn_out(btnout));
always @ (posedge clk_ms)
begin
    led<=btnout;
    b1<=btnout;
    b2<=b1;
    if(b2==0&&b1!=0)begin
        for(i=0;i<=15;i=i+1)begin
            if(b1[i]==1)begin
                if(i<=9)begin
                    if(flag==0)begin
                        n1=(n1<<4)+i;
                        showdat=n1;
                    end
                    else begin
                        n2=(n2<<4)+i;
                        showdat=n2;
                    end
                end
                else if(i==10)begin
                    n1=0;n2=0;ans=0;flag=0;showdat=0;
                end
                else if(i==11)begin 
                    case (flag)
                    1:ans=n1+n2;
                    2:ans=n1-n2;
                    3:ans=n1*n2;
                    4:ans=n1/n2;
                    endcase
                    showdat=ans;
                end
                else flag=16-i;
            end
        end
    end
end
endmodule
//module v_Calc(input clk, input [11:0] sw,input [3:0] col, output [3:0] row,output [11:0] led,output [7:0] seg,output [5:0] an);
// wire clk_ms,clk_20ms;wire [15:0] btnout;reg [11:0] led;wire [23:0] showdat=0;
//     reg[4:0] i=0;
//ip_disp a( .clk(clk),.rst(0),.dispdata(showdat),.seg(seg),.an(an));
//divclk my_divclk(.clk(clk),.clk_ms(clk_ms),.btnclk(clk_20ms));    //调用分频没模块
//v_ajxd uut_ajxd(.clk(clk_ms), .btn_clk(clk_20ms), .col(col), .row(row),.btn_out(btnout));
//Calculator_Dec calc1(.CLOCK(clk),.CALC_CLK(clk_ms) , .DIGIT( btnout[11:0] ) ,.PLUS(btnout[15]) , .MINUS(btnout[14]) ,.MULTI(btnout[13]), .EQUAL(btnout[12]), .RST(btnout[11]),.DISP_DATA(showdat) );

//    always @ (posedge clk_ms)
//    begin
//    led[4:0] = calc1.OPERATOR_SIG;
//    end    
   
    
//    module Calculator_Dec(
//        input CLOCK,
//        input CALC_CLK,
//        input [9:0]DIGIT,
//        input PLUS,
//        input MINUS,
//        input MULTI,
//        input EQUAL,
//        input RST,
//        output reg [23:0]DISP_DATA,
//        output reg [3:0]OPERATOR_SIG
//    );


module divclk(
     clk,clk_ms,btnclk
  );
 input clk;
 output clk_ms,btnclk;
     reg[31:0] cnt1 = 0;             
     reg[31:0] btnclk_cnt = 0;
     reg clk_ms = 0;
     reg btnclk = 0;
          
     always@(posedge clk) //把系统时钟分频 50M/1000=50000 1000HZ
     begin
         if(cnt1==26'd25000)
         begin
             clk_ms =~ clk_ms;
             cnt1 = 0;
         end
         else
         begin
              cnt1 = cnt1+1'b1;
         end
     end
     always@(posedge clk) //20MS 50M/50=1000000 50HZ
     begin
         if(btnclk_cnt==500000)
         begin
             btnclk =~ btnclk;
             btnclk_cnt = 0;
         end
         else
         begin
              btnclk_cnt = btnclk_cnt+1'b1;
         end
     end
 
 endmodule

//module Calculator_Dec(input CLOCK,input CALC_CLK,input [9:0]DIGIT,input PLUS,input MINUS,input MULTI,input EQUAL, input RST,output reg [23:0]DISP_DATA,output reg [3:0]OPERATOR_SIG);
//reg [23:0]buff1,buff2;
//reg [1:0]operator;
//reg [1:0]prev_operator;
//initial
//    begin
//    buff1 = 0;
//    buff2 = 0;
//    end
//always @(posedge CLOCK)
//begin
//    if (RST)       //Reset
//        begin
//            buff1 = 0;
//            buff2 = 0;
//            operator=0;
//        end 
//end 
//always @(posedge CALC_CLK)
//begin 
//    begin
//        OPERATOR_SIG[0] <= ~operator[1] & ~operator[0];
//        OPERATOR_SIG[1] <= ~operator[1] & operator[0];
//        OPERATOR_SIG[2] <= operator[1] & ~operator[0];
//        OPERATOR_SIG[3] <= operator[1] & operator[0];
//    end 

//    DISP_DATA <= buff1; //Output Always Be Buff1

//    begin   //Input Operator
//        if(PLUS)
//            operator=2'b01; //Wait Plus Num
//        if(MINUS)
//            operator=2'b10;//Wait Minus Num
//        if(MULTI)
//            operator=2'b11;
//        if(EQUAL)
//            operator=2'b00;
//    end 
    
//    if(DIGIT != 10'b0)
//    begin 
//    buff1[15:12] = buff1[11:8];
//    buff1[11:8] = buff1[7:4];
//    buff1[7:4] = buff1[3:0];
//    begin
//        case (DIGIT)
//        10'b0000000001:buff1[3:0] = 0;
//        10'b0000000010:buff1[3:0] = 1;
//        10'b0000000100:buff1[3:0] = 2;
//        10'b0000001000:buff1[3:0] = 3;
//        10'b0000010000:buff1[3:0] = 4;
//        10'b0000100000:buff1[3:0] = 5;
//        10'b0001000000:buff1[3:0] = 6;
//        10'b0010000000:buff1[3:0] = 7;
//        10'b0100000000:buff1[3:0] = 8;
//        10'b1000000000:buff1[3:0] = 9;
//        endcase
//    end

//    end 
//end
//endmodule 


