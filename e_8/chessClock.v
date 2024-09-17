`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/23 18:50:10
// Design Name: 
// Module Name: chessClock
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


module chessClock(
    input clk_50M,
    input switch_10or25,
    input silence,
    input [1:0] col,
    output [7:0] seg,
    output [5:0] dig,
    output [3:0] row,
    output reg [11:0] led,
    output beep
    );

    wire clk_50Hz, clk_10Hz, clk_1Hz, clk_261Hz, btn0, btn1;
    wire [7:0] timeLimit;
    wire [5:0] points;
    wire [3:0] tl0,tl1,tl2, ct0,ct1,ct2;
    wire [11:0] tl, ct;
    wire [3:0] disp_data_right0,disp_data_right1,disp_data_right2,disp_data_right3,disp_data_right4,disp_data_right5;
    reg player = 0;
    reg beep_enable = 0;
    reg led_enable = 0;
    reg [11:0] cnt = 100;
    reg [23:0] disp_data;

    assign timeLimit = switch_10or25 ? 100 : 250;
    assign tl0 = timeLimit%10, tl1 = timeLimit/10%10, tl2 = timeLimit/100%10;
    assign ct0 = cnt%10, ct1 = cnt/10%10, ct2 = cnt/100%10;
    assign row = 4'b0001;
    assign points = cnt==0?6'b111111:6'b010010;
    assign beep = silence & beep_enable & clk_261Hz;
    //assign led = {led_enable, player, clk_1Hz, clk_10Hz, cnt};
    assign tl = {tl2, tl1, tl0}, ct = {ct2, ct1, ct0};
    assign {disp_data_right5,disp_data_right4,disp_data_right3,disp_data_right2,disp_data_right1,disp_data_right0}=disp_data;

    div_clk c(.clk_in(clk_50M), .clk_10Hz(clk_10Hz), .clk_50Hz(clk_50Hz), .clk_1Hz(clk_1Hz),.clk_261Hz(clk_261Hz));
    ajxd aj0(.btn_in(col[0]), .btn_clk(clk_50Hz), .btn_out(btn0));
    ajxd aj1(.btn_in(col[1]), .btn_clk(clk_50Hz), .btn_out(btn1));
    dynamic_led6 dl6(points,disp_data_right0,disp_data_right1,disp_data_right2,disp_data_right3,disp_data_right4,disp_data_right5,clk_50M,seg,dig);


    always@(posedge clk_10Hz) begin 
        case ({player,btn0,btn1})
            3'b010: begin cnt = timeLimit; player = 1; beep_enable = 0; led_enable = 0; end
            3'b101: begin cnt = timeLimit; player = 0; beep_enable = 0; led_enable = 0; end
        endcase
        if(cnt != 0) begin 
            cnt = cnt - 1;
            if(cnt < 50 && cnt > 0) begin
                led_enable = clk_1Hz;
                beep_enable = clk_1Hz;
            end 
            disp_data = player == 0?{ct,tl}:{tl,ct};
        end else begin
            led_enable = clk_1Hz;
            beep_enable = 1;
            disp_data = {6{4'd10+player}};
        end
    end

    always @(led_enable)led[11] = led_enable;
    always @(player)led[10] = player;
    always @(clk_1Hz)led[9] = clk_1Hz;
    always @(clk_10Hz)led[8] = clk_10Hz;
    always @(cnt)led[7:0] = cnt;

endmodule

