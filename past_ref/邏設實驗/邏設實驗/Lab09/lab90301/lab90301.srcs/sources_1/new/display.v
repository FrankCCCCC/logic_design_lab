module display(
    input clk,
    output reg [3:0] d,
    output reg [7:0] D_ssd,
    input [3:0] in0,in1,in2,in3,
    input [3:0] out0,out1,out2,out3,
    input [2:0] state
    );

    reg [3:0] ssd_in;    
    reg [14:0] cnt_l = 15'b0;
    reg [1:0] ssd_ctl_en = 2'b0;
    
    always@ (posedge clk)
        {ssd_ctl_en,cnt_l} <= {ssd_ctl_en,cnt_l}+1'b1; 
        
    always@*
        if(state == 3'b000)
            case (ssd_ctl_en)
                2'b00:
                    begin
                        d = 4'b0111;
                        ssd_in = out0;
                    end 
                2'b01:
                    begin
                        d = 4'b1011;
                        ssd_in = out1;
                    end
                2'b10:
                    begin
                        d = 4'b1101;
                        ssd_in = out2;
                    end 
                2'b11:
                    begin
                        d = 4'b1110;
                        ssd_in = out3;
                    end
                default:
                    begin
                        d = 4'b0000;
                        ssd_in = in0;
                    end
            endcase
        else
            case (ssd_ctl_en)
                2'b00:
                    begin
                        d = 4'b0111;
                        ssd_in = in0;
                    end 
                2'b01:
                    begin
                        d = 4'b1011;
                        ssd_in = in1;
                    end
                2'b10:
                    begin
                        d = 4'b1101;
                        ssd_in = in2;
                    end 
                2'b11:
                    begin
                        d = 4'b1110;
                        ssd_in = in3;
                    end
                default:
                    begin
                        d = 4'b0000;
                        ssd_in = in0;
                    end
            endcase
            
    always @*
        case (ssd_in)
            4'd0: D_ssd = 8'b00000011;
            4'd1: D_ssd = 8'b10011111;
            4'd2: D_ssd = 8'b00100101;
            4'd3: D_ssd = 8'b00001101;
            4'd4: D_ssd = 8'b10011001;
            4'd5: D_ssd = 8'b01001001;
            4'd6: D_ssd = 8'b01000001;
            4'd7: D_ssd = 8'b00011111;
            4'd8: D_ssd = 8'b00000001;
            4'd9: D_ssd = 8'b00001001;
            4'd10: D_ssd = 8'b00010001;
            4'd11: D_ssd = 8'b01011001;
            4'd12: D_ssd = 8'b01010101;
            default : D_ssd = 8'b01110001;
        endcase
endmodule
