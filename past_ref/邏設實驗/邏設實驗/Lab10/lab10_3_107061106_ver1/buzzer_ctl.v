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
    input [3:0]sound,
    input [511:0]key_down,
    input [8:0]last_change,
    input channel,
    output [15:0] audio_left, // left sound audio
    output [15:0] audio_right // right sound audio
);

// Declare internal signals
reg [21:0] clk_cnt_next, clk_cnt;
reg b_clk, b_clk_next;
reg [21:0] clk_cnt_next_l, clk_cnt_l;
reg b_clk_l, b_clk_next_l;
reg [21:0]note_div;
reg [21:0]note_div_l;
// Note frequency generation
        
    always@*
        if(~key_down[last_change])
            begin
                note_div = 22'd2;
                note_div_l = 22'd2;
            end
        else if(~channel)
            begin
               note_div_l = note_div;
                case(sound)
                    4'd1: note_div = 22'd191571;
                    4'd2: note_div = 22'd170241;
                    4'd3: note_div = 22'd151699;
                    4'd4: note_div = 22'd143266;
                    4'd5: note_div = 22'd127511;
                    4'd6: note_div = 22'd113636;
                    4'd7: note_div = 22'd101214;
                    4'd8: note_div = 22'd95419;
                    4'd9: note_div = 22'd85034;
                    4'd10: note_div = 22'd75758;
                    4'd11: note_div = 22'd71633;
                    4'd12: note_div = 22'd63776;
                    4'd13: note_div = 22'd56818;
                    4'd14: note_div = 22'd50607;
                    default: note_div = 22'd2;
                endcase
            end
        else
            case(sound)
                4'd1: 
                    begin
                        note_div = 22'd191571;
                        note_div_l = 22'd151699;
                    end
                4'd2: 
                    begin
                        note_div = 22'd170241;
                        note_div_l = 22'd143266;
                    end
                4'd3: 
                    begin
                        note_div = 22'd151699;
                        note_div_l = 22'd127511;
                    end
                4'd4: 
                    begin
                        note_div = 22'd143266;
                        note_div_l = 22'd113636;
                     end
                4'd5: 
                    begin
                        note_div = 22'd127511;
                        note_div_l = 22'd101214;
                    end
                default: 
                    begin
                        note_div = 22'd2;
                        note_div_l = 22'd2;
                    end
            endcase
                  
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
            
    always @(posedge clk or posedge rst_n)
        if (rst_n)
            begin
                clk_cnt_l <= 22'd0;
                b_clk_l <= 1'b0;
            end
        else
            begin
                clk_cnt_l <= clk_cnt_next_l;
                b_clk_l <= b_clk_next_l;
            end
    always @*
        if (clk_cnt_l == note_div_l)
            begin
                clk_cnt_next_l = 22'd0;
                b_clk_next_l = ~b_clk_l;
            end
        else
            begin
                clk_cnt_next_l = clk_cnt_l + 1'b1;
                b_clk_next_l = b_clk_l;
            end

        
// Assign the amplitude of the note
assign audio_left = (b_clk_l == 1'b0) ? 16'hB000 : 16'h5FFF; 
assign audio_right = (b_clk == 1'b0) ? 16'hB000 : 16'h5FFF;



endmodule
