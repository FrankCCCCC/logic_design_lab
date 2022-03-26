`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 09:26:11 PM
// Design Name: 
// Module Name: onepulse_test
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


module onepulse_test();

reg CLK;
reg RST;
reg PUSH;

wire CLICK;
wire LONG_PRESS;
wire DIV_CLK;

// 1 Hz Clock
frequency_divider U0(.clk(CLK), .rst(RST), .clk_out(DIV_CLK));
onepulse U1(.rst(RST), .clk(CLK), .clk_long(DIV_CLK), .push(PUSH), .push_onepulse(CLICK), .push_onepulse_long(LONG_PRESS));

initial
begin
    CLK = 0;
    RST = 0;
    PUSH = 0;
    #10 RST = 1;
    #10 RST = 0;
    #10 RST = 1;
    #10 PUSH = 0;
    #10 PUSH = 1;
    #10 PUSH = 0;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 0;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 0;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 1;
    #10 PUSH = 0;
    #10 PUSH = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
