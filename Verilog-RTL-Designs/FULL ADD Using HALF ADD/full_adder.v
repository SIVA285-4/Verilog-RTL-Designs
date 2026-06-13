`timescale 1ns / 1ps


module full_adder(
input a,b,c,
output sum,carry

    );
    wire w1,w2,w3;
    half_adder HA1(a,b,w1,w2);
    half_adder HA2(w1,c,sum,w3);
    or or1(carry,w2,w3);
    
endmodule
