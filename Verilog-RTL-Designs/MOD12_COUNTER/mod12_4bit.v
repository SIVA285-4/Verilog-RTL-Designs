`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 12:03:21
// Design Name: 
// Module Name: mod12_4bit
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


module mod12_4bit(
input clk,
input rst,
input load,
input [3:0]data,
output reg [3:0]count

    );
always @(posedge clk)
 begin
    if(rst)
      count<=4'b0000;
    else if(count>=4'b1011)
      count<=4'b0000;
    else if(load)
      count<=data;
    else
      count<=count+1'b1;
 end     
          
        
endmodule
