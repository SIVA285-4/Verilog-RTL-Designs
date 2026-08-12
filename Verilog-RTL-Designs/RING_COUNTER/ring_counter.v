`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 21:39:47
// Design Name: 
// Module Name: ring_counter
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

module ring_counter(
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk)
begin
    if (rst)
        q <= 4'b1000;
    else
        q <= {q[0], q[3:1]};
end

endmodule

