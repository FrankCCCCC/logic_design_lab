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

`include "global.v"

module pipe_crtl(
    input clk,
    input clk_scroll,
    input rst,
    input [`CNT_BITS_N-1:0] h_cnt,
    input [`CNT_BITS_N-1:0] v_cnt,
    output [`MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
    );
    
    wire [`PX_ADDR_BITS_N-1:0] pixel_addr;
    wire px_valid_0, px_valid_1;
    
    assign px_valid_1 = (dout == `MEM_DATA_BIT_N'h534)? 1'b0 : 1'b1;
    assign px_valid = px_valid_0 & px_valid_1;
    
    pipe_mem_addr_gen UMEMGEN(
        .clk(clk_scroll),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
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
