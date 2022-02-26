module pixel_gen(
  input [3:0] result,
  input [9:0] border,
  input [9:0] h_cnt,v_cnt,
  input valid,
  output reg [3:0] vgaRed,
  output reg [3:0] vgaGreen,
  output reg [3:0] vgaBlue
);
   
always @(*) begin
    case(result)
    4'd0:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>213)&&(v_cnt<248)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>213)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;              
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;    
    end
    4'd1:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<248)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>213)&&(v_cnt<218)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;             
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;    
    end
    4'd2:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<224)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>229)&&(v_cnt<236)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;  
        else if((v_cnt>235)&&(v_cnt<242)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>241)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;   
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-43))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;         
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;    
    end
    4'd3:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<224)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-31))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>229)&&(v_cnt<248)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;  
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>241)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;   
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;    
    end
    4'd4:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<254)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<236)&&(h_cnt>(border-43))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>217)&&(v_cnt<224)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;  
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;    
    end
    4'd5:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-43))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<230)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
                {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<248)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>241)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;  
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; 
    end
    4'd6:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-31))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>217)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>229)&&(v_cnt<248)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;  
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; 
    end
    4'd7:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-43))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>205)&&(v_cnt<218)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>217)&&(v_cnt<230)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<242)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>241)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; 
    end
    4'd8:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>211)&&(v_cnt<224)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<248)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<224)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<248)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; 
    end
    4'd9:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>205)&&(v_cnt<212)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<242)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<236)&&(h_cnt>(border-37))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<230)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>241)&&(v_cnt<248)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>247)&&(v_cnt<254)&&(h_cnt>(border-37))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    end
    4'd10:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-43))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>211)&&(v_cnt<224)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<242)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    end
    4'd11:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-43))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    end
    4'd12:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>235)&&(v_cnt<242)&&(h_cnt>(border-19))&&(h_cnt<(border-12)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>217)&&(v_cnt<224)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>229)&&(v_cnt<236)&&(h_cnt>(border-25))&&(h_cnt<(border-18)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>223)&&(v_cnt<230)&&(h_cnt>(border-31))&&(h_cnt<(border-24)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>229)&&(v_cnt<236)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;     
        else if((v_cnt>217)&&(v_cnt<224)&&(h_cnt>(border-37))&&(h_cnt<(border-30)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>235)&&(v_cnt<242)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else if((v_cnt>211)&&(v_cnt<218)&&(h_cnt>(border-43))&&(h_cnt<(border-36)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff; 
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    end
    4'd15:
    begin
        if(!valid)
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        else if((v_cnt>235)&&(v_cnt<242)&&(h_cnt>(border-43))&&(h_cnt<(border-6)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else if((v_cnt>217)&&(v_cnt<224)&&(h_cnt>(border-43))&&(h_cnt<(border-6)))
            {vgaRed, vgaGreen, vgaBlue} = 12'hfff;
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    end
    default:
        {vgaRed, vgaGreen, vgaBlue} = 12'h000;
    endcase
end

endmodule
