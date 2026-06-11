`timescale 1ns / 1ps


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
