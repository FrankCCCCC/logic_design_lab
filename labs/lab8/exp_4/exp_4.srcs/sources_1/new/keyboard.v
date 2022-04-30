`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 10:56:30 PM
// Design Name: 
// Module Name: keyboard
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

module keyboard(
    output wire [511:0] key_down,
	output wire [8:0] last_change,
	output wire key_valid,
	output wire [`KB_ENCODE_BITS_N-1:0] kb_in_debouce,
    output wire [`KB_ENCODE_OH_BITS_N-1:0] key_down_debouce,
    output reg [`KB_ENCODE_BITS_N-1:0] kb_in_onepulse,
    output reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_onepulse,
    output wire onepulse,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
);
    
    KeyboardDecoder UKD(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(~rst),
        .clk(clk)
    );
    
    validator UVAL(
        .kb_in_debouce(kb_in_debouce),
        .key_down_debouce(key_down_debouce),
        .onepulse(onepulse),
        .kb_in(last_change),
        .key_down(key_down),
        .key_valid(key_valid),
        .clk(clk),
        .rst(rst)
    );
    
    always@(*) begin
        if(onepulse) begin
            kb_in_onepulse <= kb_in_debouce;
            key_down_onepulse <= key_down_debouce;
        end else begin
            kb_in_onepulse <= `KB_ENCODE_BITS_N'd0;
            key_down_onepulse <= `KB_ENCODE_OH_BITS_N'd0;
        end
    end
endmodule
