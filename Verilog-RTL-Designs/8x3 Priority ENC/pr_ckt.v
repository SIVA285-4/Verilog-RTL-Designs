`timescale 1ns / 1ps


module pr_ckt(
input [7:0]D,
output [7:0]P,
output IDLE
);

    assign P[7]=D[7];
    assign P[6]=D[6]&~D[7];
    assign P[5]=D[5]&~D[6]&~D[7];
    assign P[4]=D[4]&~D[5]&~D[6]&~D[7];
    assign P[3]=D[3]&~D[4]&~D[5]&~D[6]&~D[7];
    assign P[2]=D[2]&~D[3]&~D[4]&~D[5]&~D[6]&~D[7];
    assign P[1]=D[1]&~D[2]&~D[3]&~D[4]&~D[5]&~D[6]&~D[7];
    assign P[0]=D[0]&~D[1]&~D[2]&~D[3]&~D[4]&~D[5]&~D[6]&~D[7]; 
    assign IDLE=~D[0]&~D[1]&~D[2]&~D[3]&~D[4]&~D[5]&~D[6]&~D[7]; 
endmodule
