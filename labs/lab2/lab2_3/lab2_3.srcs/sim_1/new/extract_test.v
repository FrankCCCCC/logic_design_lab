`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2022 08:03:11 PM
// Design Name: 
// Module Name: extract_test
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


module extract_test();

reg [7:0]X;
wire [3:0]D1;
wire [3:0]D2;

extract U0 (.x(X), .d1(D1), .d2(D2));

initial begin
     X = 0;
#10; X = 1;
#10; X = 2;
#10; X = 3;
#10; X = 4;
#10; X = 5;
#10; X = 6;
#10; X = 7;
#10; X = 8;
#10; X = 9;
#10; X = 10;
#10; X = 11;
#10; X = 13;
#10; X = 17;
#10; X = 21;
#10; X = 24;
#10; X = 28;
#10; X = 30;
#10; X = 31;
#10; X = 45;
#10; X = 57;
#10; X = 59;
#10; X = 63;
#10; $finish;
end

endmodule
