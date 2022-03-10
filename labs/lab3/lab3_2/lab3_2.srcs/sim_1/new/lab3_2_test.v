`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 10:36:12 PM
// Design Name: 
// Module Name: lab3_2_test
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


module lab3_2_test();

reg CLK;
reg RST;
wire CLK_OUT;
//wire [7:0]COUNTER;

//lab3_2 U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT), .counter(COUNTER));
lab3_2 U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT));

initial
begin
    CLK = 0;
    RST = 0;
    #10 RST = 1;
    #10 RST = 0;
    #10 RST = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule

//module lab3_2_test();

//reg CLK;
//reg RST_N;
//wire CLK_OUT;

//lab3_2 U0 (.clk(CLK), .rst_n(RST_N), .clk_out(CLK_OUT));

//initial
//begin
//    CLK = 0;
//    RST_N = 0;
//    #10 RST_N = 1;
//    #10 RST_N = 0;
//    #10 RST_N = 1;
//end

//always
//begin
//    #10; CLK = ~CLK;
//end

//endmodule
