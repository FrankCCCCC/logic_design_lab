`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 05:43:45 PM
// Design Name: 
// Module Name: downcounter
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


`include "global.v"

module downcounter(
    value, // counter value
    borrow, // borrow indicator for counter to next stage
    clk, // global clock
    rst, // active high reset
    decrease, // decrease input from previous stage of counter
    init_value, // initial value for the counter
    limit, // limit for the counter
    en // enable/disable of the counter
    );
    
    output [`BCD_BIT_WIDTH-1:0] value; // counter value
    output borrow; // borrow indicator for counter to next stage
    input clk; // global clock
    input rst; // active high reset
    input decrease; // decrease input from previous stage of counter
    input [`BCD_BIT_WIDTH-1:0] init_value; // initial value for the counter
    input [`BCD_BIT_WIDTH-1:0] limit; // limit for the counter
    input en; // enable/disable of the counter
    reg [`BCD_BIT_WIDTH-1:0] value; // output (in always block)
    reg [`BCD_BIT_WIDTH-1:0] value_tmp; // input to dff (in always block)
    reg borrow; // borrow indicator for counter to next stage

    // Combinational logics
    always @(value or decrease or en or limit)
        if (value==`BCD_ZERO && decrease && en)
        begin
            value_tmp = limit;
            borrow = `ENABLED;
        end
        else if (decrease && en) 
        begin
            value_tmp = value - `INCREMENT;
            borrow = `DISABLED;
        end
        else if (en)
        begin
            value_tmp = value;
            borrow = `DISABLED;
        end
        else
        begin
            value_tmp = `BCD_ZERO;
            borrow = `DISABLED;
        end

    // register part for BCD counter
    always @(posedge clk or posedge rst) 
        if (rst) 
            value <= init_value; 
        else 
            value <= value_tmp;

endmodule
