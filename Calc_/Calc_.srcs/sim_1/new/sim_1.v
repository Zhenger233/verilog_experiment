`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/17 22:14:00
// Design Name: 
// Module Name: sim_1
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


module sim_1();
reg clk = 0;
reg clk_ms = 0;
reg [9:0]btn = 0;
integer i;
initial 
begin 
    forever
        begin
            for(i=0;i<10000;i=i+1)
            begin
                if(i%10 == 0)
                    #1 clk = ~clk;
                if(i%1000==0)
                    #0 clk_ms =~clk_ms;
            end
            btn[1] = ~btn[1];
        end 
end
    Calculator_Dec calc1(.CLOCK(clk),
 .CALC_CLK(clk_ms) ,
  .DIGIT( btn )  );
endmodule
