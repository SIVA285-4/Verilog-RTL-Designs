`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 17:09:25
// Design Name: 
// Module Name: tb_mux4to1_behv
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


module tb_mux4to1_behv;
reg [3:0]I;
reg[1:0]S;
wire Y;
integer i;
mux4to1_behv DUT(.I(I),
                 .sel(S),
                 .y(Y)
                 );

initial
begin
$monitor("I=%b,S=%b,Y=%b",I,S,Y);
for (i=0;i<64;i=i+1)
begin
{I,S}=i;
#10;
end
$finish;
end

endmodule
