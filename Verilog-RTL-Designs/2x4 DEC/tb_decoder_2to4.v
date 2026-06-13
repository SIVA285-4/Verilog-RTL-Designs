`timescale 1ns / 1ps



module tb_decoder_2to4();
reg d0,d1;
wire y0,y1,y2,y3;
integer i;

decoder_2to4 DUT(.d0(d0),
                 .d1(d1),
                 .y0(y0),
                 .y1(y1),
                 .y2(y2),
                 .y3(y3)
                 );
initial
begin                 
for (i=0;i<4;i=i+1)
begin 
{d0,d1}=i;
#10;
$monitor("d0=%b,d1=%b,y0=%b,y1=%b,y2=%b,y3=%b",d0, d1, y0, y1, y2, y3);
end
#20 $finish;
end
endmodule
