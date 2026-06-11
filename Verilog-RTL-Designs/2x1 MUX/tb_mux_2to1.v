`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 12:38:27
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1;
reg i0,i1,sel;
wire y;
integer i;
mux_2to1 DUT(.i0(i0),
             .i1(i1),
             .sel(sel),
             .y(y)
             );
initial
begin
$monitor("i0=%b,i1=%b,sel=%sel,y=%b",i0,i1,sel,y);
for(i=0;i<8;i=i+1)
begin
{i0,i1,sel}=i;
#10;
end
$finish;
end
         
              
endmodule
