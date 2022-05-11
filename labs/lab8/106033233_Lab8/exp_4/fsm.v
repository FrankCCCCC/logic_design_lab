`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 09:32:02
// Design Name: 
// Module Name: fsm
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

module fsm(
    input clk,
    input key_valid,
    input [`KB_ENCODE_OH_BITS_N-1:0] key_down,
    input [`KB_ENCODE_BITS_N-1:0] last_change,
    output led_state
    );
    reg state;
    reg next_state;
    reg [`KB_ENCODE_BITS_N-1:0] tmp;

    assign led_state = state;
    
    initial begin
        state = 1'b0;
        next_state = 1'b0;
        tmp = `KB_ENCODE_BITS_N'd0;
    end
    
    always@(*) begin
        state <= next_state;
    end
    
    always@(posedge clk) begin
        tmp = last_change;
        case(state)
            1'b0:
                if(key_down[last_change] == 1'b1 && key_valid && tmp == `CODE_CAP_L) begin
//                if(key_valid && last_change == `KB_ENCODE_BITS_N'b0_0101_1000) begin
                    next_state <= 1'b1;
                end else begin
                    next_state <= 1'b0;
                end
            1'b1:
                if(key_down[last_change] == 1'b1 && key_valid && tmp == `CODE_CAP_L) begin
//                if(key_valid && last_change == `KB_ENCODE_BITS_N'b0_0101_1000) begin
                    next_state <= 1'b0;
                end else begin
                    next_state <= 1'b1;
                end
        endcase
    end
endmodule
