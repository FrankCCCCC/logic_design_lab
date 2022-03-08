`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2022 12:15:05 AM
// Design Name: 
// Module Name: experiment_3
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


module experiment_3();
wire [2:0]O;
reg [2:0]a; 
reg [2:0]b;

lab1_3 U0(.a(a), .b(b), .o(O));

initial begin
     a = -3; b = -4;
#10; a =  2; b =  3;
#10; a = -1; b =  2;
#10; a =  2; b = -1;
#10; a = -4; b =  3;
#10; a =  3; b = -4;
#10; a =  3; b =  3;
#10; a = -4; b = -4;
#10; a =  0; b = -2;
#10; $finish;
end

endmodule
