`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 06:28:47 PM
// Design Name: 
// Module Name: exp_1
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


module exp_1(
    output [8:0] last_change,
    output key_valid,
    inout PS2_DATA,
    inout PS2_CLK,
    input rst,
    input clk
    );
    
    wire [511:0] key_down;
    
    KeyboardDecoder UKD(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
    );
    
//    KeyboardCtrl_0 (
//        .key_in(key_in),
//        .is_extend(is_extend),
//        .is_break(is_break),
//        .valid(valid),
//        .err(err),
//        .PS2_DATA(PS2_DATA),
//        .PS2_CLK(PS2_CLK),
//        .rst(rst),
//        .clk(clk)
//    );
    
    initial begin
//        $monitor("key_in: %h. | is_extend: %b. | is_break: %b. | valid: %b. | err: %b. at the time %t.", key_in, is_extend, is_break, valid, err, $time);
        $monitor("key_down: %h | valid: %b | at the time %t.", last_change, key_valid, $time);
    end
//    $display("This is a test number: %b.", num);
endmodule
