`timescale 1ns / 1ps



module encoder_8to3(
input [7:0]H,
output [2:0]Y
    );
assign Y[0]=H[1]|H[3]|H[5]|H[7];
assign Y[1]=H[2]|H[3]|H[6]|H[7];
assign Y[2]=H[4]|H[5]|H[6]|H[7];    
endmodule
