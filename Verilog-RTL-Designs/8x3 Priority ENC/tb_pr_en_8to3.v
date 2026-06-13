`timescale 1ns / 1ps



module tb_pr_en_8to3;
reg [7:0]I;
wire [2:0]Y;
integer i;
pr_en_8to3 DUT(.I(I),
               .Y(Y)
               );
initial
begin
$monitor("input I=%b, output Y=%b",I,Y);
I=8'b00000001;
#10;
I=8'b00010101;
#10;
I=8'b00101101;
#10;
I=8'b00000000;
#10;
I=8'b11001111;
#10;
$finish;
end                
endmodule
