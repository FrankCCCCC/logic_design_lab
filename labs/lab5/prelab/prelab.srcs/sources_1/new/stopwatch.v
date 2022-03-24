`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 05:48:58 PM
// Design Name: 
// Module Name: stopwatch
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
module stopwatch(
    digit1, // 2nd digit of the down counter
    digit0, // 1st digit of the down counter
    clk, // global clock
    rst, // active high reset
    mode, // mode selection for 15 sec, 30-sec
    en // enable/disable for stopwatch
    );
    output [`BCD_BIT_WIDTH-1:0] digit1; 
    output [`BCD_BIT_WIDTH-1:0] digit0; 
    input clk; // global clock
    input rst; // active high reset
    input mode; // mode selection for 15 sec, 30-sec
    input en; // enable/disable for stopwatch
    wire br0, br1; // borrow indicator
    wire decrease_enable; 
    reg [1:0] ctl;
    reg [`BCD_BIT_WIDTH-1:0] init_dig0; 
    reg [`BCD_BIT_WIDTH-1:0] init_dig1; 

    // mode selection: 15-sec or 30-sec
    always @(mode)
        case (mode)
        1'b0:
        begin
            ctl = 2'b11;
            init_dig0 = `BCD_FIVE;
            init_dig1 = `BCD_ONE;
        end
        1'b1:
        begin
            ctl = 2'b11;
            init_dig0 = `BCD_ZERO;
            init_dig1 = `BCD_THREE;
        end
        default:
        begin
            ctl = 2'b00;
            init_dig0 = `BCD_ZERO;
            init_dig1 = `BCD_ZERO;
        end
        endcase
        
    assign decrease_enable = en && 
        (~((digit0==`BCD_ZERO) &&
        (digit1==`BCD_ZERO)));

    // 30 sec down counter
    downcounter Udc0( 
        .value(digit0), // counter value 
        .borrow(br0), // borrow indicator for counter to next stage 
        .clk(clk), // global clock signal 
        .rst(rst), // high active reset 
        .decrease(decrease_enable), // decrease input from previous stage of counter 
        .init_value(init_dig0), // initial value for the counter 
        .limit(`BCD_NINE), // limit for the counter 
        .en(ctl[0]) // enable/disable of the counter
    );
    downcounter Udc1(
        .value(digit1), // counter value 
        .borrow(br1), // borrow indicator for counter to next stage 
        .clk(clk), // global clock signal 
        .rst(rst), // high active reset 
        .decrease(br0), // decrease input from previous stage of counter 
        .init_value(init_dig1), // initial value for the counter 
        .limit(`BCD_FIVE), // limit for the counter 
        .en(ctl[1]) // enable/disable of the counter
    );
endmodule
