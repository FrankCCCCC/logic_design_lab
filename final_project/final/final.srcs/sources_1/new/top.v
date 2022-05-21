module top(
   input clk,
   input rst,
   output [3:0] vgaRed,
   output [3:0] vgaGreen,
   output [3:0] vgaBlue,
   output hsync,
   output vsync
   );
   
   wire [11:0] data;
   wire clk_25MHz;
   wire clk_22;
   wire [16:0] pixel_addr;
   wire [11:0] bg_pixel, pipe_pixel;
   wire valid;
   wire [9:0] h_cnt; //640
   wire [9:0] v_cnt;  //480
   wire bg_px_valid, pipe_px_valid, valid;
   
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
    
    always@(*) begin
        if(pipe_px_valid) begin
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
