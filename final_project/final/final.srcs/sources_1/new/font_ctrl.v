//`include "global.v"
`define DEFAULT_COLOR_FONT 'h000
`define DEFAULT_COLOR_FONT_1 'hAAA
`define FONT_COLOR 'hEEE

module font_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter FONT_WIDTH_CNT = 0,
    parameter FONT_HEIGHT_CNT = 0,
    parameter FONT_NUM_ROW = 0,
    parameter FONT_NUM_COL = 0,
    parameter ALPHABET_BITS_N = 0
)(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [CNT_BITS_N-1:0] pos_h_cnt,
    input [CNT_BITS_N-1:0] pos_v_cnt,
    input [ALPHABET_BITS_N-1:0] alphabet,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
);
    
    wire [PX_ADDR_BITS_N-1:0] pixel_addr;
    wire px_valid_0, px_valid_1;
    
    assign px_valid_1 = (dout == `FONT_COLOR)? 1'b1 : 1'b0;
    assign px_valid = px_valid_0 & px_valid_1;
    // assign px_valid = px_valid_0;
    
    font_mem_addr_gen #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .FONT_WIDTH_CNT(FONT_WIDTH_CNT),
        .FONT_HEIGHT_CNT(FONT_HEIGHT_CNT),
        .FONT_NUM_ROW(FONT_NUM_ROW),
        .FONT_NUM_COL(FONT_NUM_COL),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) UMEMGEN (
        .clk(clk_flap),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos_h_cnt(pos_h_cnt),
        .pos_v_cnt(pos_v_cnt),
        .alphabet(alphabet),
        .pixel_addr(pixel_addr),
        .valid(px_valid_0)
    );
    
    blk_mem_gen_font blk_mem_gen_font_inst(
        .clka(clk),
        .wea(0),
        .addra(pixel_addr),
        .dina(12'd0),
        .douta(dout)
    );
    
endmodule