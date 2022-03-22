`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 06:19:20 PM
// Design Name: 
// Module Name: binary_up_counter
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

`define BCD_BIT_WIDTH 4
`define BCD_ZERO 4'd0
`define BCD_ONE 4'd1
`define BCD_NINE 4'd9

module binary_up_counter(
    q, // output
    clk, // global clock
    rst_n // active low reset
);

    output [`BCD_BIT_WIDTH-1:0] q; // output
    input clk; // global clock
    input rst_n; // active low reset
    reg [`BCD_BIT_WIDTH-1:0] q; // output (in always block)
    reg [`BCD_BIT_WIDTH-1:0] q_tmp; // input to dff (in always block)
    
//    initial
//    begin
//        q = `BCD_BIT_WIDTH-1'b0000;
//    end
    
    // Combinational logics
    always@(q)
        q_tmp = q + `BCD_ONE;
        
    // Sequential logics: Flip flops
    always@(posedge clk or negedge rst_n)
        if (~rst_n) q <= `BCD_BIT_WIDTH'd0;
        else
            if(q_tmp >= `BCD_BIT_WIDTH'd8)
                q <= `BCD_BIT_WIDTH'd0;
            else 
                q <= q_tmp;

endmodule
