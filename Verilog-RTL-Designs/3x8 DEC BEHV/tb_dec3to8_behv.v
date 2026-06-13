`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 17:26:42
// Design Name: 
// Module Name: tb_dec3to8_behv
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


module tb_dec3to8_behv();
reg [2:0]I;
wire [7:0]Y;
dec3to8_behv DUT(.I(I),
                 .Y(Y));
initial
begin
I=3'b000;
#10;
I=3'b110;
#10;   
I=3'b101;
#10;              
I=3'b111;
#10;
$finish;
end
initial
    $monitor("I=%b,Y=%b",I,Y);
endmodule
