`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 02:50:43 PM
// Design Name: 
// Module Name: is_num
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

module num_checker(
    output reg is_number,
    input [`LR_BITS_N-1:0] lr,
    input [`KB_ENCODE_BITS_N-1:0] kb_in
    );
    
    always@(*) begin
        if(kb_in == `CODE_0_L ||
           kb_in == `CODE_1_L ||
           kb_in == `CODE_2_L ||
           kb_in == `CODE_3_L ||
           kb_in == `CODE_4_L ||
           kb_in == `CODE_5_L ||
           kb_in == `CODE_6_L ||
           kb_in == `CODE_7_L ||
           kb_in == `CODE_8_L ||
           kb_in == `CODE_9_L) begin
           case (lr)
            `BOTH_SIDE_NUM: is_number <= 1'd1; 
            `L_SIDE_NUM: is_number <= 1'd1;
            `R_SIDE_NUM: is_number <= 1'd0;
           endcase
        end else if(kb_in == `CODE_0_R ||
           kb_in == `CODE_1_R ||
           kb_in == `CODE_2_R ||
           kb_in == `CODE_3_R ||
           kb_in == `CODE_4_R ||
           kb_in == `CODE_5_R ||
           kb_in == `CODE_6_R ||
           kb_in == `CODE_7_R ||
           kb_in == `CODE_8_R ||
           kb_in == `CODE_9_R) begin
           case (lr)
            `BOTH_SIDE_NUM: is_number <= 1'd1; 
            `L_SIDE_NUM: is_number <= 1'd0;
            `R_SIDE_NUM: is_number <= 1'd1;
           endcase
        end else begin
            is_number <= 1'd0;
        end
    end
endmodule
