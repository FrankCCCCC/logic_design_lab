`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/15 21:33:39
// Design Name: 
// Module Name: border
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

module border(
    input [9:0] h_cnt,
    input [3:0] calculate,
    input [3:0] in0,in1,in2,in3,
    input [3:0]sign,
    input [3:0] out0,out1,out2,out3,
    output reg [9:0] border,
    output reg [3:0] result
    );                     

    always@(*) begin
        if(h_cnt<128)
                  begin
                      result=in0;
                      border=10'd128;
                  end 
        else if(h_cnt<176)
                  begin
                      result=in1;
                      border=10'd176;
                  end
        else if(h_cnt<224)
                  begin
                      result=calculate;
                      border=10'd224;
                  end 
        else if(h_cnt<272)
                 begin
                     result=in2;
                     border=10'd272;
                 end 
         else if(h_cnt<320)
                 begin
                     result=in3;
                     border=10'd320;
                 end             
         else if(h_cnt<368)
                 begin
                     result=4'd15;
                     border=10'd368;
                 end 
        else if(h_cnt<416)
            begin
                result=sign;
                border=10'd416;
            end
        else if(h_cnt<464)
                  begin
                      result=out0;
                      border=10'd464;
                  end    
       else if(h_cnt<512)
                   begin
                       result=out1;
                       border=10'd512;
                   end
       else if(h_cnt<560)
                  begin
                       result=out2;
                       border=10'd560;
                  end 
       else if(h_cnt<608)
                      begin
                          result=out3;
                          border=10'd608;
                      end        
      else
                      begin
                          result=in0;
                          border=10'd0;
                      end
     end                 
endmodule
