`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2022 08:18:51 PM
// Design Name: 
// Module Name: lab1_3
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


module lab1_3(
    input [7:0] a,
    input [7:0] b,
    output [2:0] bull,
    output [2:0] cow
    );
    
    wire [3:0]A_D1;
    wire [3:0]A_D2;
    wire [3:0]B_D1;
    wire [3:0]B_D2;
    reg [2:0]BULL;
    reg [2:0]COW;
    
    extract U0 (.x(a), .d1(A_D1), .d2(A_D2));
    extract U1 (.x(b), .d1(B_D1), .d2(B_D2));
    
    assign bull[2] = (A_D1 == B_D1) && (A_D2 == B_D2);
    assign bull[1] = (A_D1 == B_D1) ^ (A_D2 == B_D2);
    assign bull[0] = (~(A_D1 == B_D1) && ~(A_D2 == B_D2));
    
    assign cow[2] = (A_D1 == B_D2) && (A_D2 == B_D1);
    assign cow[1] = (A_D1 == B_D2) ^ (A_D2 == B_D1);
    assign cow[0] = (!(A_D1 == B_D2) && ~(A_D2 == B_D1));

//always @(A_D1 or A_D2 or B_D1 or B_D2)
//    if((A_D1 == B_D1) || (A_D2 == B_D2))
//    begin
//        BULL = 3'b001;
//    end
    
//    if((A_D1 == B_D1) && (A_D2 == B_D2))
//    begin
//        BULL = 3'b100;
//    end
    
endmodule
