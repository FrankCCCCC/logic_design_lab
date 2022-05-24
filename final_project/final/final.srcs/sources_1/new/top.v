`include "global.v"

module top(
   input clk,
   input rst,
   input btn_u,
   input btn_m,
   input btn_d,
   input btn_r,
   input btn_l,
   output [`COLOR_BIT_N-1:0] vgaRed,
   output [`COLOR_BIT_N-1:0] vgaGreen,
   output [`COLOR_BIT_N-1:0] vgaBlue,
   output hsync,
   output vsync
   );
   
   wire [11:0] data;
   wire clk_25MHz, clk_21, clk_22;
   wire [`PX_ADDR_BITS_N-1:0] pixel_addr;
   wire [11:0] bg_pixel, pipe_pixel, bird_pixel;
   wire valid;
   wire [`CNT_BITS_N-1:0] h_cnt; //640
   wire [`CNT_BITS_N-1:0] v_cnt;  //480
   wire bg_px_valid, pipe_px_valid, bird_px_valid;
   
   reg [11:0] pixel;
   
   assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;
   
   clock_divisor clk_wiz_0_inst(
        .clk(clk),
        .clk1(clk_25MHz),
        .clk21(clk_21),
        .clk22(clk_22)
    );
    
    bg_crtl UBG(
        .clk(clk_25MHz),
        .clk_scroll(clk_22),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .dout(bg_pixel),
        .px_valid(bg_px_valid)
    );

    pipe_crtl UPIPE(
        .clk(clk_25MHz),
        .clk_scroll(clk_21),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .dout(pipe_pixel),
        .px_valid(pipe_px_valid)
    );
    
    bird_ctrl UBIRD(
        .clk(clk_25MHz),
        .clk_flap(clk_22),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .dout(bird_pixel),
        .px_valid(bird_px_valid)
    );
    
    always@(*) begin
        if(bird_px_valid) begin
            pixel <= bird_pixel;
        end else if(pipe_px_valid) begin
            pixel <= pipe_pixel;
        end else begin
            pixel <= bg_pixel;
        end
    end
    
    vga_controller#(
        .CNT_BITS_N(10)
    ) vga_inst(
        .pclk(clk_25MHz),
        .reset(rst),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt)
    );
      
endmodule
