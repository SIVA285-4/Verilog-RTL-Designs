`timescale 1ns / 1ps

module decoder_2to4(
input d0,d1,
output y0,y1,y2,y3
    );
    assign y0=~d0&~d1;
    assign y1=~d0&d1;
    assign y2=d0&~d1;
    assign y3=d0&d1;
    
endmodule
