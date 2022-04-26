`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2022 11:48:28 PM
// Design Name: 
// Module Name: exp_2_tb
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


module exp_2_tb();
    reg clk, rst_n, switch, btn_l, btn_m, btn_r, btn_u, btn_d;
    wire [3:0] d_sel;
    wire [7:0] d_out;
    
    exp_2 U0(
        .clk(clk),
        .rst_n(rst_n), 
        .switch(switch),
        .btn_l(btn_l),
        .btn_m(btn_m),
        .btn_r(btn_r),
        .btn_u(btn_u),
        .btn_d(btn_d),
        .audio_mclk(audio_mclk),
        .audio_lrck(audio_lrck),
        .audio_sck(audio_sck),
        .audio_sdin(audio_sdin),
        .d_sel(d_sel),
        .d_out(d_out) 
    );
    
    initial begin
        clk = 0;
        rst_n = 1;
        btn_l = 0; btn_m = 0; btn_r = 0; btn_u = 0; btn_d = 0; switch = 0;
        
        #10 btn_l = 1; btn_m = 0; btn_r = 0; btn_u = 0; btn_d = 0; switch = 0;
        #10 btn_l = 0; btn_m = 1; btn_r = 0; btn_u = 0; btn_d = 0; switch = 0;
        #10 btn_l = 0; btn_m = 0; btn_r = 1; btn_u = 0; btn_d = 0; switch = 0;
        #10 btn_l = 0; btn_m = 0; btn_r = 0; btn_u = 1; btn_d = 0; switch = 0;
        #10 btn_l = 0; btn_m = 0; btn_r = 0; btn_u = 0; btn_d = 1; switch = 0;
        
        #10 btn_l = 1; btn_m = 0; btn_r = 0; btn_u = 0; btn_d = 0; switch = 1;
        #10 btn_l = 0; btn_m = 1; btn_r = 0; btn_u = 0; btn_d = 0; switch = 1;
        #10 btn_l = 0; btn_m = 0; btn_r = 1; btn_u = 0; btn_d = 0; switch = 1;
        #10 btn_l = 0; btn_m = 0; btn_r = 0; btn_u = 1; btn_d = 0; switch = 1;
        #10 btn_l = 0; btn_m = 0; btn_r = 0; btn_u = 0; btn_d = 1; switch = 1;
    end
    
    always begin
        #1; clk = ~clk;
    end
endmodule
