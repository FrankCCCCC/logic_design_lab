`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 02:29:34
// Design Name: 
// Module Name: lab904
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


module exp_4(
    input clk,
    input rst,
    inout PS2_DATA,
    inout PS2_CLK,
    output led_state,
    output [6:0]led
    );
    wire [511:0]key_down;
    wire [8:0]last_change;
    wire shift_state;
    wire key_valid;
    wire [4:0]char;
    
KeyboardDecoder U0(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
);
        
fsm U1(
    .clk(clk),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .led_state(led_state)
    );
            
shift U2(
    .clk(clk),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .shift_state(shift_state)
    );
    
key U3(
    .clk(clk),
    .key_down(key_down),
    .key_valid(key_valid),
    .last_change(last_change),
    .char(char)
    );
    
out U4(
    .char(char),
    .rst(rst),
    .state(led_state),
    .shift_state(shift_state),
    .key_down(key_down),
    .last_change(last_change),
    .led(led),
    .key_valid(key_valid),
    .clk(clk)
        );
    
endmodule
