`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 16:04:32
// Design Name: 
// Module Name: fsm_101moore
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


module fsm_101moore(
input clk,
input rst,
input din,
output reg dout
    );
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
reg [1:0]ps,ns;
always @(posedge clk)
  begin
    if(rst)
       ps<=s0;
    else
       ps<=ns;
  end
  
always @(*)
    begin
      case(ps)
         s0: begin
              if(din)
                ns=s1;
              else
                ns=s0;
             end
         s1: begin
              if(din)
                ns=s1;
              else
                ns=s2;
             end
         s2: begin
              if(din)
                ns=s3;
              else
                ns=s0;
             end
         s3: begin
              if(din)
                ns=s1;
              else
                ns=s2;
             end
         default: ns=s0;    
       endcase
     end
always @(*)
         begin
           if(ps==s3)
              dout=1'b1;
           else
              dout=1'b0;
         end                                                         
endmodule
