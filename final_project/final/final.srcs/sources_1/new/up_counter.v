`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/05 17:51:04
// Design Name: 
// Module Name: upcounter
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

// `define BIT 10
// `define limit 1024

module up_counter #(
    parameter CNT_BITS_N = 0
//    parameter CNT_LIMIT = 0
)(
    input clk,
    input rst_n,
    input is_repeat,
    input [CNT_BITS_N - 1:0] cnt_limit,
    output reg [CNT_BITS_N - 1:0] cnt
);
    reg [CNT_BITS_N - 1:0] cnt_tmp;

    always@(*)begin
        if (cnt >= cnt_limit) begin
            if(is_repeat) begin
                cnt_tmp = 'd0;
            end else begin
                cnt_tmp = cnt_limit;
            end
        end else begin
            cnt_tmp = cnt + 'd1;
        end
    end
    
    always@(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            cnt <= 'd0;
        end else begin
            cnt <= cnt_tmp;
        end
    end
        
endmodule

