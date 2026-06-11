`timescale 1ns / 1ps


module mux4to1_2to1(
input [3:0]I,
input [1:0]S,
output Y
  );
 wire y0,y1;
 mux_2to1 MUX0(I[0],I[1],S[0],y0);
  mux_2to1 MUX1(I[2],I[3],S[0],y1);
   mux_2to1 MUX2(y0,y1,S[1],Y);
  
endmodule
