`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/02 21:12:40
// Design Name: 
// Module Name: value
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


module value(
    input [13:0] in,
    output reg [3:0] out0,out1,out2,out3
    );
    reg [13:0]temp_1000,temp_100,temp_10;
    
    always@*    
        begin
            temp_1000 <= in - (in%10'd1000);
            temp_100 <= (in%10'd1000) - (in%7'd100);
            temp_10 <= (in%7'd100) - (in%4'd10);
            out3 <= (in%4'd10);
            case(temp_1000)
                14'd9000:out0 = 4'd9;
                14'd8000:out0 = 4'd8;
                14'd7000:out0 = 4'd7;
                14'd6000:out0 = 4'd6;
                14'd5000:out0 = 4'd5;
                14'd4000:out0 = 4'd4;
                14'd3000:out0 = 4'd3;
                14'd2000:out0 = 4'd2;
                14'd1000:out0 = 4'd1;
                default:out0 = 4'd0;
            endcase
            case(temp_100)
                14'd900:out1 = 4'd9;
                14'd800:out1 = 4'd8;
                14'd700:out1 = 4'd7;
                14'd600:out1 = 4'd6;
                14'd500:out1 = 4'd5;
                14'd400:out1 = 4'd4;
                14'd300:out1 = 4'd3;
                14'd200:out1 = 4'd2;
                14'd100:out1 = 4'd1;
                default:out1 = 4'd0;
            endcase
            case(temp_10)
                14'd90:out2 = 4'd9;
                14'd80:out2 = 4'd8;
                14'd70:out2 = 4'd7;
                14'd60:out2 = 4'd6;
                14'd50:out2 = 4'd5;
                14'd40:out2 = 4'd4;
                14'd30:out2 = 4'd3;
                14'd20:out2 = 4'd2;
                14'd10:out2 = 4'd1;
                default:out2 = 4'd0;
            endcase
        end
endmodule
