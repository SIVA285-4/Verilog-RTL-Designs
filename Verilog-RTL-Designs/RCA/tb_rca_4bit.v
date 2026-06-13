`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 11:17:17
// Design Name: 
// Module Name: tb_rca_4bit
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


module tb_rca_4bit;
reg [3:0]a;
reg [3:0]b;
reg c0;
wire [3:0]sum;
wire cout;

rca_4bit DUT(.a(a),
             .b(b),
             .c0(c0),
             .sum(sum),
             .cout(cout)
             );
initial 
begin
$monitor("a=%b,b=%b,c0=%b,sum=%b,cout=%b",a,b,c0,sum,cout);
a=4'b0101;
b=4'b0011;
c0=1'b0;
#10;
a=4'b0111;
b=4'b1001;
c0=1'b0;
#10;
$finish;
end
endmodule
