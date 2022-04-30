`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 10:59:23 AM
// Design Name: 
// Module Name: validator_tb
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


module validator_tb();
    reg [`KB_ENCODE_OH_BITS_N-1:0] key_down;
    reg [`KB_ENCODE_BITS_N-1:0] kb_in;
    reg key_valid, clk, rst;
    wire onepulse;
    wire [`KB_ENCODE_BITS_N-1:0] kb_in_debouce;
    wire [`KB_ENCODE_OH_BITS_N-1:0] key_down_debouce;
    
    validator UV(
        .kb_in_debouce(kb_in_debouce),
        .key_down_debouce(key_down_debouce),
        .onepulse(onepulse),
        .key_down(key_down),
        .kb_in(kb_in),
        .key_valid(key_valid),
        .clk(clk),
        .rst(rst)
    );
    
    initial begin
        rst = 1;
        clk = 0;
        key_down = `KB_ENCODE_OH_BITS_N'd0;
        kb_in = `KB_ENCODE_BITS_N'd0;
        
        #20 key_down = `KB_ENCODE_OH_BITS_N'd2; kb_in = `KB_ENCODE_BITS_N'd1;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd0; kb_in = `KB_ENCODE_BITS_N'd0;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd4; kb_in = `KB_ENCODE_BITS_N'd2;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd8; kb_in = `KB_ENCODE_BITS_N'd3;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd16; kb_in = `KB_ENCODE_BITS_N'd4;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd32; kb_in = `KB_ENCODE_BITS_N'd5;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd0; kb_in = `KB_ENCODE_BITS_N'd0;
        #20 key_down = `KB_ENCODE_OH_BITS_N'd64; kb_in = `KB_ENCODE_BITS_N'd6;
    end
    
    always begin
        #1 clk = ~clk;
    end
    
endmodule
