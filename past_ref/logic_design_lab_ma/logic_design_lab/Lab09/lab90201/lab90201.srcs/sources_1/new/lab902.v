`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 18:24:42
// Design Name: 
// Module Name: lab902
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


module lab902(
    input clk,
    input rst_n,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output [3:0]d,
    output [7:0]D_ssd
    );
    reg key_in;
    wire [511:0]key_down;
    wire key_valid;
    wire [8:0]last_change;
    wire [3:0]transed;
    wire [3:0]ans_one;
    wire [3:0]addend;
    wire [3:0]augend;
    wire [3:0]carry;
    wire [7:0]ans_one_D;
    wire [7:0]addend_D;
    wire [7:0]augend_D;
    wire [7:0]carry_D;
    wire enter_st;
    
    
    always@*
        key_in = key_valid && key_down[last_change];
        
KeyboardDecoder U0(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
    );

state(
    .clk(clk),
    .rst(rst_n),
    .key_valid(key_valid),
    .last_change(last_change),
    .key_down(key_down),
    .enter_st(enter_st)
    );
    
value_1 V1(
    .rst(rst_n),
    .clk(clk),
    .enter_st(enter_st),
    .last_change(last_change),
    .value(addend)
        );
        
value_2 V2(
    .rst(rst_n),
    .clk(clk),
    .enter_st(enter_st),
    .last_change(last_change),
    .value(augend)
    );
    
adder U2(
    .clk(clk),
    .rst_n(rst_n),
    .addend(addend),
    .augend(augend),
    .ans_one(ans_one),
    .carry(carry)
        );
        
decoder D0(
    .binary(addend),
    .D_ssd(addend_D)
    );
    
decoder D1(
    .binary(augend),
    .D_ssd(augend_D)
    );
    
decoder D2(
    .binary(ans_one),
    .D_ssd(ans_one_D)
    );
    
decoder D3(
    .binary(carry),
    .D_ssd(carry_D)
    );
    
display(
    .clk(clk),
    .rst_n(rst_n),
    .addend(addend_D),
    .augend(augend_D),
    .ans_one(ans_one_D),
    .carry(carry_D),
    .d(d),
    .D_ssd(D_ssd)
        );
endmodule
