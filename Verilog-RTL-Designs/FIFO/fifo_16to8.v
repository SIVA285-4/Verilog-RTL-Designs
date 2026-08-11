`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 10:09:15
// Design Name: 
// Module Name: fifo_16to8
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


module fifo_16to8 #(
parameter DEPTH=16,
parameter WIDTH=8,
parameter ADDR=4
)(
input clk,
input rst,
input we,
input re,
input [WIDTH-1:0]din,
output reg [WIDTH-1:0]dout,
output full,
output empty
    );
reg [WIDTH-1:0]mem[0:DEPTH-1];
reg [ADDR-1:0]wptr,rptr;
    // Counter to track number of elements
reg [ADDR:0]count;
integer i;
always @(posedge clk)
  begin
    if(rst)
      begin
        wptr<=0;
        rptr<=0;
        dout<=0;
        count<=0;
       for(i=0;i<DEPTH;i=i+1)
         mem[i]<=0;
      end
    else
      begin
         if(we && !full)
            begin
              mem[wptr]<=din;
              wptr<=wptr+1;
              count<=count+1;
            end
         if(re && !empty)
            begin
              dout<=mem[rptr];
              rptr<=rptr+1;
              count<=count-1;
            end
       end              
  end
assign full=(count==DEPTH);
assign empty=(count==0);          
endmodule
