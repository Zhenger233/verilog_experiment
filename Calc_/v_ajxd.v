`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/18 14:09:38
// Design Name: 
// Module Name: v_ajxd
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


module v_ajxd(
    input clk,
    input btn_clk,
    input [3:0] col,
    output [3:0] row,
    output [15:0] btn_out
    );
    reg[15:0] btn=0;    
    reg[15:0] btn0=0;
    reg[15:0] btn1=0;
    reg[15:0] btn2=0;
    reg[3:0] row=4'b0001;
    always @ (posedge clk)
    begin
    	if (row[3:0]==4'b1000)
    	    row[3:0]=4'b0001;
    	else
    		row[3:0]=row[3:0]<<1; 
  		     
    end    
    always @ (negedge clk)
    begin
        case (row[3:0])
    	4'b0001:
    	   begin
    	   		btn[3:0]=col;
    	   end
    	4'b0010:
    	   begin
    	      	btn[7:4]=col;
    	   end
    	4'b0100:
    	   begin
    	        btn[11:8]=col;
    	   end
    	4'b1000:
    	   begin
    	        btn[15:12]=col;
    	   end 
    	default:btn=0;   		   
        endcase
    end  
    assign btn_out=(btn2&btn1&btn0)|(~btn2&btn1&btn0);
       
    always@ (posedge btn_clk)
    begin
        btn0<=btn;
        btn1<=btn0;
        btn2<=btn1;
    end
endmodule
