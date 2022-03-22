`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 06:24:31 PM
// Design Name: 
// Module Name: binary_up_counter_test
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


module binary_up_counter_test();

reg CLK;
reg RST_N;
wire [3:0]Q;

binary_up_counter U0 (.clk(CLK), .rst_n(RST_N), .q(Q));

initial
begin
    CLK = 0;
    RST_N = 0;
    #10 RST_N = 1;
//    #10 RST_N = 0;
//    #10 RST_N = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
