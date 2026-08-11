`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 11:39:30
// Design Name: 
// Module Name: syn_4bit_loadUPcount
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


module syn_4bit_loadUPcount(
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
  else if(load)
    count<=data;
  else
    count<=count+1'b1; 
 end     


endmodule
