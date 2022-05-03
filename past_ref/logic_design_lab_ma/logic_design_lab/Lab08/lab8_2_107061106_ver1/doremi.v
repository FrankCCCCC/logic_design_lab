`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/06 00:59:14
// Design Name: 
// Module Name: doremi
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


module doremi(
    input clk,
    input rst_n,
    input left,
    input center,
    input right,
    input up,
    input down,
    output audio_mclk,
    output audio_lrck,
    output audio_sck,
    output audio_sdin,
    output [7:0]D_ssd,
    output [3:0]d
    );
    wire d_center;
    wire d_left;
    wire d_right;
    wire d_up;
    wire d_down;
    wire o_up;
    wire o_down;
    wire [3:0]count;
    wire [7:0]D_ssd_one;
    wire [7:0]D_ssd_ten;
    wire clk_ctl;
    
    
ssd_freqdiv F0 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_ctl(clk_ctl)
        );
           
debounce D0(
    .clk(clk),
    .pb_in(center),
    .pb_debounced(d_center)
    );
        
debounce D1(
    .clk(clk),
    .pb_in(left),
    .pb_debounced(d_left)
    );
    
debounce D2(
    .clk(clk),
    .pb_in(right),
    .pb_debounced(d_right)
    );
    
debounce D3(
    .clk(clk),
    .pb_in(up),
    .pb_debounced(d_up)
    );
    
debounce D4(
    .clk(clk),
    .pb_in(down),
    .pb_debounced(d_down)
    );
    
onepulse O0(
    .in_trig(d_up),
    .clk(clk),
    .rst_n(rst_n),
    .one_pulse(o_up)
    );
        
onepulse O1(
    .in_trig(d_down),
    .clk(clk),
    .rst_n(rst_n),
    .one_pulse(o_down)
    );
    
speaker S0(
    .clk(clk), // clock from crystal
    .rst_n(rst_n), // active low reset
    .left(d_left),
    .center(d_center),
    .right(d_right),
    .up(o_up),
    .down(o_down),
    .audio_mclk(audio_mclk), // master clock
    .audio_lrck(audio_lrck), // left-right clock
    .audio_sck(audio_sck), // serial clock
    .audio_sdin(audio_sdin), // serial audio data input
    .count(count)
    );
    
decoder U0(
    .binary(count),
    .D_ssd(D_ssd_one),
    .D_ssd_ten(D_ssd_ten)
    );
    
display(
    .clk_ctl(clk_ctl),
    .rst_n(rst_n),
    .D_ssd_one(D_ssd_one),
    .D_ssd_ten(D_ssd_ten),
    .D_ssd(D_ssd),
    .d(d)
        );

endmodule
