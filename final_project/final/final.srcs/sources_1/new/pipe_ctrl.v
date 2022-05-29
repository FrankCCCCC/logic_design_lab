`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 09:16:23 PM
// Design Name: 
// Module Name: pipe_crtl
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

//`include "global.v"
`define DEFAULT_COLOR_PIPE 'h534

module pipe_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter PIPE_WIDTH_CNT = 0,
    parameter PIPE_LEN_CNT = 0
)(
    input clk,
    input clk_scroll,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output [CNT_BITS_N-1:0] pos,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
);
    
    wire [PX_ADDR_BITS_N-1:0] pixel_addr;
    wire px_valid_0, px_valid_1;
    
    assign px_valid_1 = (dout == `DEFAULT_COLOR_PIPE)? 1'b0 : 1'b1;
    assign px_valid = px_valid_0 & px_valid_1;
    
    pipe_mem_addr_gen #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .PIPE_WIDTH_CNT(PIPE_WIDTH_CNT),
        .PIPE_LEN_CNT(PIPE_LEN_CNT)
    ) UMEMGEN (
        .clk(clk),
        .clk_scroll(clk_scroll),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos(pos),
        .pixel_addr(pixel_addr),
        .valid(px_valid_0)
    );
    
    blk_mem_gen_pipe blk_mem_gen_pipe_inst(
        .clka(clk),
        .wea(0),
        .addra(pixel_addr),
        .dina(12'd0),
        .douta(dout)
    );
    
endmodule
