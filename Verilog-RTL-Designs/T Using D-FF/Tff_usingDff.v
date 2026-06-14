`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 10:28:32
// Design Name: 
// Module Name: Tff_usingDff
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


module Tff_usingDff(
input clk,
input rst,
input t,
output q
    );
wire w;

assign w=t^q;
 d_ff dff1(.clk(clk),.rst(rst),.D(w),.Q(q));
  

    
    
endmodule
