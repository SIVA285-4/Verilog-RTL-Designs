`timescale 1ns / 1ps



module updown_4bit(
input clk,
input rst,
input load,
input up_down,
input [3:0]data,
output reg [3:0]count
    );
always @(posedge clk)
 begin
   if(rst)
     count<=4'b1111;
  else if(load)
     count<=data;
  else
    case(up_down)
      0: begin
          if(count==2)
            count<=15;
          else
            count<=count-1;
         end
      1: begin
          if(count==15)
            count<=2;
          else
            count<=count+1;
         end
    endcase
 end                       
     
endmodule
