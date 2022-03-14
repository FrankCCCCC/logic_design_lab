`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 03:55:01 PM
// Design Name: 
// Module Name: lab2_2_test
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


module lab2_2_test();

reg [3:0]I;
wire [3:0]Binary;
wire [3:0]P;
wire [7:0]Segment7;

lab2_2 U0 (.i(I), .d(Binary), .P(P), .D(Segment7));

initial
begin
    I=4'b0000;
#10 I=4'b0001;
#10 I=4'b0010;
#10 I=4'b0011;
#10 I=4'b0100;
#10 I=4'b0101;
#10 I=4'b0110;
#10 I=4'b0111;
#10 I=4'b1000;
#10 I=4'b1001;
#10 I=4'b1010;
#10 I=4'b1011;
#10 I=4'b1100;
#10 I=4'b1101;
#10 I=4'b1110;
#10 I=4'b1111;
end

endmodule
