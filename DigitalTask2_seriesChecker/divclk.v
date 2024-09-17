 `timescale 1ns / 1ps

module divclk(input clk,output clk_ms,output btnclk);
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
