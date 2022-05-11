`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 21:47:41
// Design Name: 
// Module Name: fsm_shift
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

module shift(
    input clk,
    input key_valid,
    input [8:0] last_change,
    output shift_state
    );
    
    reg state;
    reg next_state;
    reg [`KB_ENCODE_BITS_N-1:0] tmp;

    assign shift_state = state;
    
    initial begin
        state = 1'b0;
        next_state = 1'b0;
        tmp = `KB_ENCODE_BITS_N'd0;
    end
    
    always@(*)begin
        state <= next_state;
    end
    
    always@(posedge clk) begin
        tmp <= last_change;
        case(state)
            1'b0:
                if(key_valid && tmp == `CODE_SHIFT_L) begin
                    next_state <= 1'b1;
                end else begin
                    next_state <= 1'b0;
                end
            1'b1:
                if(key_valid && tmp == `CODE_SHIFT_L) begin
                    next_state <= 1'b0;
                end else begin
                    next_state <= 1'b1;
                end
        endcase 
    end
endmodule
