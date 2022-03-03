`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 12:18:13 PM
// Design Name: 
// Module Name: mux_test
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


module mux_test();
wire Z;
reg A, B, S;

mux U0(.a(A), .b(B), .s(S), .z(Z));

initial
begin

A=0; B=0; S=0;
#10 A=0; B=1; S=0;
#10 A=1; B=0; S=0;
#10 A=1; B=1; S=0;
#10 A=0; B=0; S=1;
#10 A=0; B=1; S=1;
#10 A=1; B=0; S=1;
#10 A=1; B=1; S=1;

end
endmodule
