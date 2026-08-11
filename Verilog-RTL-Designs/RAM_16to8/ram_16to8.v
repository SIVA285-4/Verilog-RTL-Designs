`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 15:40:54
// Design Name: 
// Module Name: ram_16to8
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


module ram_16to8(
input clk,
input rst,
input we,
input re,
input [3:0]waddr,
input [3:0]raddr,
input [7:0]din,
output reg [7:0]dout
    );
reg [7:0]mem[0:15];
integer i;
always @(posedge clk)
    begin
        if(rst)
          begin
           for(i=0;i<16;i=i+1)
               mem[i]<=8'b00000000;
          end
        else
         begin
          if(we)
            mem[waddr]<=din;
            
          if(re)
            dout<=mem[raddr];
         end   
    end                   
endmodule
