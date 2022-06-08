`include "global.v"

`define LED_N 16

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
    output [`LED_N-1:0] leds,
    output [0:`SEGMENT_7_DISPALY_DIGIT_N-1] d_sel,
    output [`SEGMENT_7_SEGMENT_N-1:0] d_out,
    output hsync,
    output vsync,
    output mclk, lrck, sck,
    output sdin
);
   
    // Common variables
    localparam CNT_BITS_N = `CNT_BITS_N;
    localparam PX_ADDR_BITS_N = `PX_ADDR_BITS_N;
    localparam MEM_DATA_BIT_N = `MEM_DATA_BIT_N;
    localparam SCORE_BITS_N = `SCORE_BITS_N;
    localparam WIDTH_CNT = `DISP_WIDTH >> 1;
    localparam HEIGHT_CNT = `DISP_HEIGHT >> 1;
    localparam MUSIC_ADDR_BITS_N = `MUSIC_ADDR_BITS_N;
    localparam MUSIC_DATA_BITS_N = `MUSIC_DATA_BITS_N;
    localparam SONG_ID_BITS_N = `SONG_ID_BITS_N;
   
    wire clk_25MHz, clk_21, clk_22;
    wire [PX_ADDR_BITS_N-1:0] pixel_addr;
    wire [MEM_DATA_BIT_N-1:0] bg_pixel, pipe_pixel, bird_pixel;
    wire valid;
    wire [CNT_BITS_N-1:0] h_cnt; //640
    wire [CNT_BITS_N-1:0] v_cnt;  //480
    wire bg_px_valid, pipe_px_valid, bird_px_valid;
    
    wire push_debounced_u, push_onepulse_d;
    
    // reg [MEM_DATA_BIT_N-1:0] pixel;
    wire [MEM_DATA_BIT_N-1:0] pixel;

    wire is_start, is_dead, is_game_over, is_bump;
    wire [SCORE_BITS_N-1:0] score;
    
    assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;
    assign leds = {is_dead, 14'b0, is_game_over};
   
    clock_divisor clk_wiz_0_inst(
        .clk(clk),
        .clk1(clk_25MHz),
        .clk21(clk_21),
        .clk22(clk_22)
    );
    
    onepulse UOPU(
        .clk(clk),
        .rst(~rst),
        .push(btn_u),
        .push_debounced(push_debounced_u)
    );

    onepulse UOPD(
        .clk(clk),
        .rst(~rst),
        .push(btn_d),
        .push_onepulse(push_onepulse_d)
    );
    
//    // Background variables
//    localparam BG_WIDTH_CNT = 320;
//    localparam BG_HEIGHT_CNT = 240;
//    bg_crtl #(
//        .CNT_BITS_N(CNT_BITS_N),
//        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
//        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
//        .BG_WIDTH_CNT(BG_WIDTH_CNT),
//        .BG_HEIGHT_CNT(BG_HEIGHT_CNT)
//    ) UBG(
//        .clk(clk),
//        .clk_scroll(clk_22),
//        .rst(rst),
//        .h_cnt(h_cnt),
//        .v_cnt(v_cnt),
//        .dout(bg_pixel),
//        .px_valid(bg_px_valid)
//    );
    
//    // Pipe variables
//    localparam PIPE_WIDTH_CNT = 16;
//    localparam PIPE_LEN_CNT = 240;
//    pipe_crtl #(
//        .CNT_BITS_N(CNT_BITS_N),
//        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
//        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
//        .PIPE_WIDTH_CNT(PIPE_WIDTH_CNT),
//        .PIPE_LEN_CNT(PIPE_LEN_CNT)
//    ) UPIPE (
//        .clk(clk),
//        .clk_scroll(clk_21),
//        .rst(rst),
//        .h_cnt(h_cnt),
//        .v_cnt(v_cnt),
//        .dout(pipe_pixel),
//        .px_valid(pipe_px_valid)
//    );
    
//    // Bird variables
//    localparam BIRD_WIDTH_CNT = 10;
//    localparam BIRD_HEIGHT_CNT = 10;
//    bird_ctrl #(
//        .CNT_BITS_N(CNT_BITS_N),
//        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
//        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
//        .BIRD_WIDTH_CNT(BIRD_WIDTH_CNT),
//        .BIRD_HEIGHT_CNT(BIRD_HEIGHT_CNT),
//        .WIDTH_CNT(WIDTH_CNT),
//        .HEIGHT_CNT(HEIGHT_CNT)
//    ) UBIRD (
//        .clk(clk),
//        .clk_flap(clk_22),
//        .clk_move(clk_21),
//        .rst(rst),
//        .btn_u_debounce(push_debounced_u),
//        .h_cnt(h_cnt),
//        .v_cnt(v_cnt),
//        .dout(bird_pixel),
//        .px_valid(bird_px_valid)
//    );
    
//    always@(*) begin
//        if(bird_px_valid) begin
//            pixel <= bird_pixel;
//        end else if(pipe_px_valid) begin
//            pixel <= pipe_pixel;
//        end else begin
//            pixel <= bg_pixel;
//        end
//    end

    game #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .SCORE_BITS_N(SCORE_BITS_N),
        .WIDTH_CNT(WIDTH_CNT),
        .HEIGHT_CNT(HEIGHT_CNT)
    ) UGAME (
        .clk(clk),
        .clk_bg_scroll(clk_22),
        .clk_pipe_scroll(clk_21),
        .clk_flap(clk_22),
        .clk_move(clk_21),
        .rst(rst),
        .push_debounced_u(push_debounced_u),
        .push_onepulse_d(push_onepulse_d),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pixel(pixel),
        .score(score),
        .is_start(is_start),
        .is_game_over(is_game_over),
        .is_dead(is_dead),
        .is_bump(is_bump)
    );

    reg [SONG_ID_BITS_N-1:0] song_id = `NONE_SONG_ID;
    wire enable = 1'b1, is_repeat = 1'b1;
    always@(*) begin
        if(is_bump) begin
            song_id <= `BUMP_SONG_ID;
        end else if(~is_start && ~is_game_over) begin
            song_id <= `ANGRY_BIRD_SONG_ID;
        end else if(is_start && ~is_game_over) begin
            song_id <= `FRUIT_PUDDING_SONG_ID;
        end else if(is_start && is_game_over) begin
            song_id <= `ANGRY_BIRD_SONG_ID;
        end
    end

    audio_ctrl #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N),
        .SONG_ID_BITS_N(SONG_ID_BITS_N)
    ) UACTRL(
        .clk(clk),
        .rst_n(~rst),
        .song_id(song_id),
        .enable(enable),
        .is_repeat(is_repeat),
        .mclk(mclk), 
        .lrck(lrck), 
        .sck(sck),
        .sdin(sdin)
    );
    
    vga_controller#(
        .CNT_BITS_N(10)
    ) vga_inst(
        .pclk(clk_25MHz),
        // .reset(rst),
        .reset(0),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt)
    );
      
    dec_disp #(
        .NUM_BITS_N(SCORE_BITS_N)
    ) UDISP (
        .clk(clk),
        .rst(rst),
        .num(score),
        .d_sel(d_sel),
        .d_out(d_out)
    ); 
endmodule
