`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 10:35:32
// Design Name: 
// Module Name: led_out
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

module out(
    input [`CHAR_BITS_N-1:0] char,
    input rst,
    input state,
    output reg [`ASCII_LED_N-1:0] led,
    input clk,
    input shift_state
    );
    
    wire cap;
    
    assign cap = state ^ shift_state;
    
    always@(posedge clk or negedge rst) begin
        if(rst) begin
            led <= `ASCII_LED_N'd0;
        end else if(~cap) begin
            case(char)
                `CHAR_BITS_N'd1: led <= `ASCII_LED_N'd97;
                `CHAR_BITS_N'd2: led <= `ASCII_LED_N'd98;
                `CHAR_BITS_N'd3: led <= `ASCII_LED_N'd99;
                `CHAR_BITS_N'd4: led <= `ASCII_LED_N'd100;
                `CHAR_BITS_N'd5: led <= `ASCII_LED_N'd101;
                `CHAR_BITS_N'd6: led <= `ASCII_LED_N'd102;
                `CHAR_BITS_N'd7: led <= `ASCII_LED_N'd103;
                `CHAR_BITS_N'd8: led <= `ASCII_LED_N'd104;
                `CHAR_BITS_N'd9: led <= `ASCII_LED_N'd105;
                `CHAR_BITS_N'd10: led <= `ASCII_LED_N'd106;
                `CHAR_BITS_N'd11: led <= `ASCII_LED_N'd107;
                `CHAR_BITS_N'd12: led <= `ASCII_LED_N'd108;
                `CHAR_BITS_N'd13: led <= `ASCII_LED_N'd109;
                `CHAR_BITS_N'd14: led <= `ASCII_LED_N'd110;
                `CHAR_BITS_N'd15: led <= `ASCII_LED_N'd111;
                `CHAR_BITS_N'd16: led <= `ASCII_LED_N'd112;
                `CHAR_BITS_N'd17: led <= `ASCII_LED_N'd113;
                `CHAR_BITS_N'd18: led <= `ASCII_LED_N'd114;
                `CHAR_BITS_N'd19: led <= `ASCII_LED_N'd115;
                `CHAR_BITS_N'd20: led <= `ASCII_LED_N'd116;
                `CHAR_BITS_N'd21: led <= `ASCII_LED_N'd117;
                `CHAR_BITS_N'd22: led <= `ASCII_LED_N'd118;
                `CHAR_BITS_N'd23: led <= `ASCII_LED_N'd119;
                `CHAR_BITS_N'd24: led <= `ASCII_LED_N'd120;
                `CHAR_BITS_N'd25: led <= `ASCII_LED_N'd121;
                `CHAR_BITS_N'd26: led <= `ASCII_LED_N'd122;
                default: led <= `ASCII_LED_N'd0;
            endcase
        end else begin
            case(char)
                `CHAR_BITS_N'd1: led <= `ASCII_LED_N'd65;
                `CHAR_BITS_N'd2: led <= `ASCII_LED_N'd66;
                `CHAR_BITS_N'd3: led <= `ASCII_LED_N'd67;
                `CHAR_BITS_N'd4: led <= `ASCII_LED_N'd68;
                `CHAR_BITS_N'd5: led <= `ASCII_LED_N'd69;
                `CHAR_BITS_N'd6: led <= `ASCII_LED_N'd70;
                `CHAR_BITS_N'd7: led <= `ASCII_LED_N'd71;
                `CHAR_BITS_N'd8: led <= `ASCII_LED_N'd72;
                `CHAR_BITS_N'd9: led <= `ASCII_LED_N'd73;
                `CHAR_BITS_N'd10: led <= `ASCII_LED_N'd74;
                `CHAR_BITS_N'd11: led <= `ASCII_LED_N'd75;
                `CHAR_BITS_N'd12: led <= `ASCII_LED_N'd76;
                `CHAR_BITS_N'd13: led <= `ASCII_LED_N'd77;
                `CHAR_BITS_N'd14: led <= `ASCII_LED_N'd78;
                `CHAR_BITS_N'd15: led <= `ASCII_LED_N'd79;
                `CHAR_BITS_N'd16: led <= `ASCII_LED_N'd80;
                `CHAR_BITS_N'd17: led <= `ASCII_LED_N'd81;
                `CHAR_BITS_N'd18: led <= `ASCII_LED_N'd82;
                `CHAR_BITS_N'd19: led <= `ASCII_LED_N'd83;
                `CHAR_BITS_N'd20: led <= `ASCII_LED_N'd84;
                `CHAR_BITS_N'd21: led <= `ASCII_LED_N'd85;
                `CHAR_BITS_N'd22: led <= `ASCII_LED_N'd86;
                `CHAR_BITS_N'd23: led <= `ASCII_LED_N'd87;
                `CHAR_BITS_N'd24: led <= `ASCII_LED_N'd88;
                `CHAR_BITS_N'd25: led <= `ASCII_LED_N'd89;
                `CHAR_BITS_N'd26: led <= `ASCII_LED_N'd90;
                default: led <= `ASCII_LED_N'd0;
            endcase
        end
    end
endmodule
