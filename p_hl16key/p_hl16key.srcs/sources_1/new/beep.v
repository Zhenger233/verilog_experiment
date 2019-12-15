`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/15 13:24:08
// Design Name: 
// Module Name: beep
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


module beep(input flag,input clk,input [15:0]key,output beep);
reg [20:0]ii,k,drivclk_cnt;
reg beep;
reg[22:0]i;reg clk_4hz;
reg[16:0]count,div_num;//
reg[6:0]music;//justforatest;
    always @ (posedge clk )
    begin
        casex(key)
        0:begin ii = 20'd500_000;k = 20'd0;end
        1:begin ii = 20'd191_130;k = 20'd95_565;end
        2:begin ii = 20'd170_299;k = 20'd85_150;end
        4:begin ii = 20'd151_515;k = 20'd75_757;end
        8:begin ii = 20'd143_266;k = 20'd71_633;end
        16:begin ii = 20'd127_551;k = 20'd63_775;end
        32:begin ii = 20'd113_636;k = 20'd56_818;end
        64:begin ii = 20'd101_214;k = 20'd50_607;end 
        128:begin ii = 20'd90_252;k = 20'd45_126;end
        256:begin ii = 20'd85_178;k = 20'd42_589;end
        512:begin ii = 20'd75_872;k = 20'd37_936;end
        default:begin ii = 20'd67_567;k = 20'd33_783;end
        endcase
    end
    
    always @(posedge clk)
    begin
    if(drivclk_cnt<ii)drivclk_cnt<=drivclk_cnt+1'b1;
    else drivclk_cnt<=0;
    end
    
    always @ (posedge clk)
    begin
        if(flag)begin 
            if(count==div_num)
            begin count<=0;beep=~beep;end
            else count<=count+1'b1;
        end
        else beep<=(drivclk_cnt<k?1'b1:1'b0);
    end
//module beyond(input clk,output beep);

always @ (posedge clk)//4hz
begin
    if(i==23'h47868c)
    begin
    i<=0;
    clk_4hz=~clk_4hz;end
    else
    i=i+1'b1;
end

always@(posedge clk_4hz)
begin
if(music==7'd90)////////////////////notice
music<=0;else
music<=music+1'b1;
end



parameter L1=17'h1754e,
L2=17'h14c81,
L3=17'h1284a,
L4=17'h117A8,
L5=17'h14e70,
L6=17'h0ddf2,
L7=17'h0c5ba,
M1=17'h0ba9e,
M2=17'h0a648,
M3=17'h0941f,
M4=17'h08bcf,
M5=17'h07c90,
M6=17'h06ef9,
M7=17'h062dd,
H1=17'h05d68,
H2=17'h05322,
H3=17'h04a11,
H4=17'h045e9,
H5=17'h3e48,
H6=17'h377d,
H7=17'h316f;
always@(posedge clk_4hz)begin
case(music)
7'd0:div_num=M7;
7'd1:div_num=M7;
7'd2:div_num=H1;
7'd3:div_num=H1;
7'd4:div_num=H2;
7'd5:div_num=H2;
7'd6:div_num=H2;
7'd7:div_num=H3;
7'd8:div_num=H3;
7'd9:div_num=H3;
7'd10:div_num=H3;
7'd11:div_num=H2;
7'd12:div_num=H2;
7'd13:div_num=H2;
7'd14:div_num=H2;
7'd15:div_num=H2;
7'd16:div_num=H1;
7'd17:div_num=M7;
7'd18:div_num=M5;
7'd19:div_num=M6;
7'd20:div_num=M6;
7'd21:div_num=M6;
7'd22:div_num=M3;
7'd23:div_num=M2;
7'd24:div_num=M3;
7'd25:div_num=M3;
7'd26:div_num=M3;
7'd27:div_num=M3;
7'd28:div_num=M5;
7'd29:div_num=M5;
7'd30:div_num=M5;
7'd31:div_num=M6;
7'd32:div_num=M6;
7'd33:div_num=M6;
7'd34:div_num=H1;
7'd35:div_num=M7;
7'd36:div_num=H1;
7'd37:div_num=H1;
7'd38:div_num=H7;
7'd39:div_num=H7;
7'd40:div_num=H1;
7'd41:div_num=H1;
7'd42:div_num=H1;
7'd43:div_num=H1;//repeat
7'd44:div_num=M7;
7'd45:div_num=M7;
7'd46:div_num=H1;
7'd47:div_num=H1;
7'd48:div_num=H2;
7'd49:div_num=H2;
7'd50:div_num=H2;
7'd51:div_num=H3;
7'd52:div_num=H3;
7'd53:div_num=H3;
7'd54:div_num=H3;
7'd55:div_num=H2;
7'd56:div_num=H2;
7'd57:div_num=H2;
7'd58:div_num=H2;
7'd59:div_num=H2;
7'd60:div_num=H1;
7'd61:div_num=M7;
7'd62:div_num=H1;
7'd63:div_num=H1;
7'd64:div_num=M7;
7'd65:div_num=M7;
7'd66:div_num=M7;
7'd67:div_num=M7;
7'd68:div_num=M3;
7'd69:div_num=M2;
7'd70:div_num=M3;
7'd71:div_num=M3;
7'd72:div_num=M3;
7'd73:div_num=M3;
7'd74:div_num=M5;
7'd75:div_num=M5;
7'd76:div_num=M5;
7'd77:div_num=M6;
7'd78:div_num=M6;
7'd79:div_num=M6;
7'd80:div_num=L5;
7'd81:div_num=L6;
7'd82:div_num=M1;
7'd83:div_num=M2;
7'd84:div_num=M3;
7'd85:div_num=M5;
7'd86:div_num=H1;
7'd87:div_num=H1;
7'd88:div_num=H1;
7'd89:div_num=H1;
endcase
end

endmodule