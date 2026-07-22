`timescale 1ns / 1ps



module siso_4bit(
input clk,
input rst,
input sin,
output sout
    );
reg [3:0]temp;

  always @(posedge clk)
     begin
       if(rst)
          temp<=4'b0000;
       else 
          temp<={sin,temp[3:1]};
           
     end
  assign sout=temp[0];   
endmodule     