`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 19:53:57
// Design Name: 
// Module Name: buzzer_control
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


module buzzer_control(
    input clk, // clock from crystal
    input rst_n, // active low reset
    input left, 
    input center,
    input right,
    input up,
    input down,
    output reg [3:0]count,
    output [15:0] audio_left, // left sound audio
    output [15:0] audio_right // right sound audio
);

// Declare internal signals
reg [21:0] clk_cnt_next, clk_cnt;
reg b_clk, b_clk_next;
reg [21:0]note_div;
reg [3:0]temp_count;
// Note frequency generation

always@*
    if (left && ~center && ~right)
        note_div = 22'd151699;
    else if (~left && center && ~right)
        note_div = 22'd170241;
    else if (~left && ~center && right)
        note_div = 22'd191131;
    else 
        note_div = 22'd2;


always @(posedge clk or posedge rst_n)
if (rst_n)
begin
clk_cnt <= 22'd0;
b_clk <= 1'b0;
end
else
begin
clk_cnt <= clk_cnt_next;
b_clk <= b_clk_next;
end
always @*
if (clk_cnt == note_div)
begin
clk_cnt_next = 22'd0;
b_clk_next = ~b_clk;
end
else
begin
clk_cnt_next = clk_cnt + 1'b1;
b_clk_next = b_clk;
end

always@*
    if (up)
        temp_count = count + 1'b1;
    else if (down)
        temp_count = count - 1'b1;
    else 
        temp_count = count;
        
always@(posedge clk or posedge rst_n)
    if (rst_n)
        count <= 4'b0;
    else 
        count <= temp_count;
        
// Assign the amplitude of the note
assign audio_left = (b_clk == 1'b0)? 16'hB000 : 16'hB000 + 1280 * count;        
assign audio_right = (b_clk == 1'b0)? 16'hB000 : 16'hB000 + 1280 * count;


endmodule
