module mem_addr_gen(
   input clk,
   input rst,
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output [16:0] pixel_addr
   );
    
   reg [9:0] position;
  
//   assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1)+ position*320 )% 76800;  //640*480 --> 320*240 
    assign pixel_addr = (((h_cnt >> 1) + position) % 320 + 320 * (v_cnt >> 1)) % 76800;  //640*480 --> 320*240

   always @ (posedge clk or posedge rst) begin
        if(rst)
            position <= 0;
//       else if(position < 239)
        else if(position < 319)
           position <= position + 1;
        else
           position <= 0;
   end
    
endmodule
