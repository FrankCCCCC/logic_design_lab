`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 23:55:24
// Design Name: 
// Module Name: lab903
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


module lab903(
    input clk,
    input rst_n,
    inout PS2_DATA,
    inout PS2_CLK,
    output [3:0]d,
    output [7:0]D_ssd
    );
    wire [511:0]key_down;
    wire [8:0]last_change;
    wire key_valid;
    wire [2:0]state;
    wire [3:0]in0, in1, in2, in3;
    wire [3:0]out0, out1, out2, out3;
    wire [13:0]value;
    
    
KeyboardDecoder U0(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst_n),
    .clk(clk)
        );
        
count U1(
    .clk(clk),
    .key_valid(key_valid),
    .key_down(key_down),
    .last_change(last_change),
    .rst_n(rst_n),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .value(value),
    .state(state)
    );
    
value U2(
    .in(value),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
        );
        
display U3(
    .clk(clk),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .state(state),
    .d(d),
    .D_ssd(D_ssd)
            );
endmodule
