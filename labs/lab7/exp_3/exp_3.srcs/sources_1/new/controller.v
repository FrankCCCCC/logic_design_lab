`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 06:49:11 PM
// Design Name: 
// Module Name: controller
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

`include "global.v"

`define DO_DIV `NOTE_GEN_FREQ_BITS_N'd383141
`define RE_DIV `NOTE_GEN_FREQ_BITS_N'd341296
`define MI_DIV `NOTE_GEN_FREQ_BITS_N'd303030
`define FA_DIV `NOTE_GEN_FREQ_BITS_N'd286532
`define SO_DIV `NOTE_GEN_FREQ_BITS_N'd255102
`define LA_DIV `NOTE_GEN_FREQ_BITS_N'd227272
`define SI_DIV `NOTE_GEN_FREQ_BITS_N'd202429
`define DEFAULT_DIV `NOTE_GEN_FREQ_BITS_N'd4194303

`define BTN_COUNTER_BITS_N 30

module controller(
    input clk,
    input rst_n,
    input switch,
    input btn_l,
    input btn_m,
    input btn_r,
    input btn_u,
    input btn_d,
    output [`AUDIO_LEVEL_BITS_N-1:0] audio_level_left,
    output [`AUDIO_LEVEL_BITS_N-1:0] audio_level_right,
    output reg [`NOTE_GEN_FREQ_BITS_N-1:0] note_div_left,
    output reg [`NOTE_GEN_FREQ_BITS_N-1:0] note_div_right
    );
    
    reg [`AUDIO_LEVEL_BITS_N-1:0] audio_level;
    wire btn_r_debounced, btn_m_debounced, btn_l_debounced, btn_u_debounced, btn_d_debounced;
    onepulse RBtn(.rst(rst_n), .clk(clk), .push(btn_r), .push_debounced(btn_r_debounced));
    onepulse MBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_debounced(btn_m_debounced));
    onepulse LBtn(.rst(rst_n), .clk(clk), .push(btn_l), .push_debounced(btn_l_debounced));
    
    onepulse UBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_debounced(btn_u_debounced));
    onepulse DBtn(.rst(rst_n), .clk(clk), .push(btn_l), .push_debounced(btn_d_debounced));
    
    assign audio_level_left = `AUDIO_LEVEL_BITS_N'd15;
    assign audio_level_right = `AUDIO_LEVEL_BITS_N'd15; 
    
    initial begin
        audio_level = `AUDIO_LEVEL_BITS_N'd0;
    end
    
    always@(*) begin
        if(switch == 1) begin
            case({btn_l_debounced, btn_m_debounced, btn_r_debounced, btn_u_debounced, btn_d_debounced})
                5'b10000: begin
                    // 261 Hz Do
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd383141;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd383141;
                    note_div_left = `DO_DIV;
                    note_div_right = `MI_DIV;
                end
                5'b01000: begin
                    // 293 Hz Re
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd341296;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd341296;
                    note_div_left = `RE_DIV;
                    note_div_right = `FA_DIV;
                end
                5'b00100: begin
                    // 330 Hz Mi
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd303030;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd303030;
                    note_div_left = `MI_DIV;
                    note_div_right = `SO_DIV;
                end
                5'b00010: begin
                    // 349 Hz Fa
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd286532;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd286532;
                    note_div_left = `FA_DIV;
                    note_div_right = `LA_DIV;
                end
                5'b00001: begin
                    // 392 Hz So
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd255102;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd255102;
                    note_div_left = `SO_DIV;
                    note_div_right = `SI_DIV;
                end
                default: begin
                    // 20 Hz
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd4194303;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd4194303;
                    note_div_left = `DEFAULT_DIV;
                    note_div_right = `DEFAULT_DIV;
                end
            endcase        
        end else begin
            case({btn_l_debounced, btn_m_debounced, btn_r_debounced, btn_u_debounced, btn_d_debounced})
                5'b10000: begin
                    // 261 Hz Do
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd383141;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd383141;
                    note_div_left = `DO_DIV;
                    note_div_right = `DO_DIV;
                end
                5'b01000: begin
                    // 293 Hz Re
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd341296;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd341296;
                    note_div_left = `RE_DIV;
                    note_div_right = `RE_DIV;
                end
                5'b00100: begin
                    // 330 Hz Mi
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd303030;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd303030;
                    note_div_left = `MI_DIV;
                    note_div_right = `MI_DIV;
                end
                5'b00010: begin
                    // 349 Hz Fa
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd286532;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd286532;
                    note_div_left = `FA_DIV;
                    note_div_right = `FA_DIV;
                end
                5'b00001: begin
                    // 392 Hz So
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd255102;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd255102;
                    note_div_left = `SO_DIV;
                    note_div_right = `SO_DIV;
                end
                default: begin
                    // 20 Hz
//                    note_div_left = `NOTE_GEN_FREQ_BITS_N'd4194303;
//                    note_div_right = `NOTE_GEN_FREQ_BITS_N'd4194303;
                    note_div_left = `DEFAULT_DIV;
                    note_div_right = `DEFAULT_DIV;
                end
            endcase 
        end
    end
endmodule
