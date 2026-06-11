`timescale 1ns / 1ps

module tb_mux4to1;
reg [3:0]I;
reg[1:0]S;
wire Y;
integer i;
mux4to1_2to1 DUT(.I(I),
                 .S(S),
                 .Y(Y)
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
