`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2022 11:27:13 PM
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
    input [2:0]a,
    input [2:0]b,
    output [2:0]o
//    output [2:0]minus,
//    output sel
    );
    
// Non-always version
    wire [2:0]S;
    wire M;
    wire SEL;
    
    assign M = 1;
    bit3_add_sub U0(.a(a), .b(b), .m(M), .s(S));
    assign minus = S;
    assign SEL = (a[2] & (~b[2])) | (a[2] & S[2]) | ((~a[2]) & (~b[2]) & S[2]);
    
    mux U1(.a(a[0]), .b(b[0]), .s(SEL), .z(o[0]));
    mux U2(.a(a[1]), .b(b[1]), .s(SEL), .z(o[1]));
    mux U3(.a(a[2]), .b(b[2]), .s(SEL), .z(o[2]));

// always version  
//    wire [2:0]S;
//    wire M;
//    reg SEL;
    
//    assign M = 1;
//    bit3_add_sub U0(.a(a), .b(b), .m(M), .s(S));
//    assign minus = S;

//always@(a or b or S or sel)
        
//    if(a[2] == b[2])
//        SEL = S[2];
//    else if(a[2] != b[2])
//        SEL = a[2] == 0? 0 : 1;
//    else
//        SEL = 0;
        
//    assign sel = SEL;
    
//    mux U1(.a(a[0]), .b(b[0]), .s(SEL), .z(o[0]));
//    mux U2(.a(a[1]), .b(b[1]), .s(SEL), .z(o[1]));
//    mux U3(.a(a[2]), .b(b[2]), .s(SEL), .z(o[2]));

endmodule
