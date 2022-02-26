`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 15:38:16
// Design Name: 
// Module Name: lab10_2
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


module lab10_2(
    input clk,
    input rst,
    inout PS2_DATA,
    inout PS2_CLK,
    output [3:0]d,
    output [7:0]D_ssd,
    output audio_mclk,
    output audio_lrck, 
    output audio_sck, 
    output audio_sdin
    );
    wire [3:0]sound;
    wire [511:0] key_down;
    wire [8:0] last_change;
    wire key_valid;
    wire shift_state;
    wire led_state;
    wire [4:0]char;
    
speaker U0(
    .clk(clk), // clock from crystal
    .rst_n(rst), // active low reset
    .sound(sound),
    .audio_mclk(audio_mclk), // master clock
    .audio_lrck(audio_lrck), // left-right clock
    .audio_sck(audio_sck), // serial clock
    .audio_sdin(audio_sdin) // serial audio data input
    );
    
KeyboardDecoder U1(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
        );
        
shift U2(
    .clk(clk),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .shift_state(shift_state)
            );
            
fsm U3(
    .clk(clk),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .led_state(led_state)
                );
                
key U4(
    .clk(clk),
    .key_down(key_down),
    .key_valid(key_valid),
    .last_change(last_change),
    .char(char)
                    );
                    
out U5(
    .char(char),
    .rst(rst),
    .state(state),
    .last_change(last_change),
    .key_down(key_down),
    .key_valid(key_valid),
    .clk(clk),
    .shift_state(shift_state),
    .sound(sound)
                            );
                            
display U6(
    .clk(clk),
    .rst(rst),
    .sound(sound),
    .d(d),
    .D_ssd(D_ssd)
                                );
endmodule
