`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 11:01:36
// Design Name: 
// Module Name: s_div
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


module s_div (clkin,clr,clkout);
 input	clkin,clr;
 output    reg   clkout=0;//用reg后面always中需要改变数值。
 integer    qout=0;
 //用行为描述实现
 always@(posedge clkin)
 begin    
    if(clr)    
    begin   
           qout<=0;    clkout<=0;  
    end 
    else  if(qout==24999999) 
    	begin
     		qout<=0;    clkout<=~clkout;
     	end
     	else    qout<=qout+1;
 end
 endmodule
