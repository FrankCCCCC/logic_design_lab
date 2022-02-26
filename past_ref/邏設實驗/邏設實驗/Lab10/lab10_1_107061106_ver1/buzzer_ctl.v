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


module buzzer_ctl(
    input clk, // clock from crystal
    input rst_n, // active low reset
    output [15:0] audio_left, // left sound audio
    output [15:0] audio_right // right sound audio
);

// Declare internal signals
reg [21:0] clk_cnt_next, clk_cnt;
reg b_clk, b_clk_next;
reg [21:0]note_div;
reg [21:0]note_tmp[13:0];
reg [21:0]note_tmp_in;
reg [3:0]i;
reg clk_s;
reg [25:0]cnt;
// clk_s
always@(posedge clk or posedge rst_n)
        if (rst_n)
            begin
                cnt<=26'd0;
                clk_s<= 1'b0;
            end
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                clk_s<=(~clk_s);
            end
        else 
            begin
                cnt<=cnt + 1'b1;
                clk_s <= clk_s;
            end
// Note frequency generation

    always@*
        begin
            note_tmp[0] = 22'd191571;
            note_tmp[1] = 22'd170241;
            note_tmp[2] = 22'd151699;
            note_tmp[3] = 22'd143266;
            note_tmp[4] = 22'd127511;
            note_tmp[5] = 22'd113636;
            note_tmp[6] = 22'd101214;
            note_tmp[7] = 22'd95419;
            note_tmp[8] = 22'd85034;
            note_tmp[9] = 22'd75758;
            note_tmp[10] = 22'd71633;
            note_tmp[11] = 22'd63776;
            note_tmp[12] = 22'd56818;
            note_tmp[13] = 22'd50607;
        end
        
always@*
        note_tmp_in = note_tmp[i];
    
always@(posedge clk_s or posedge rst_n)
    if (rst_n)
        begin
            note_div <= 22'd2;
            i <= 4'd0;
        end
    else
        begin
            note_div <= note_tmp_in;
            i <= i + 1'b1;
        end


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

        
// Assign the amplitude of the note
assign audio_left = (b_clk == 1'b0) ? 16'hB000 : 16'h5FFF; 
assign audio_right = (b_clk == 1'b0) ? 16'hB000 : 16'h5FFF;



endmodule
