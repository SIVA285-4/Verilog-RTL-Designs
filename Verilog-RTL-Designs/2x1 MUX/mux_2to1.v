`timescale 1ns / 1ps


module mux_2to1(
input i0,i1,sel,
output y
    );
    assign y=(~sel&i0)|(sel&i1);
endmodule
