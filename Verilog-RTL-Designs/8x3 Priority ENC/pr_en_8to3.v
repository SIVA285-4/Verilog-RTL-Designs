`timescale 1ns / 1ps



module pr_en_8to3(
input [7:0]I,
output [2:0]Y,
output IDLE
    );
wire [7:0]w;    
pr_ckt PRC(I,w,IDLE);
encoder_8to3 EN(w,Y);
    
endmodule
