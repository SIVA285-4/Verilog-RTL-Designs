`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 10:39:57
// Design Name: 
// Module Name: tb_fifo_16to8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fifo_16to8;
parameter DEPTH=16;
parameter WIDTH=8;
parameter ADDR=4;
reg clk;
reg rst;
reg we;
reg re;
reg [WIDTH-1:0]din;
wire [WIDTH-1:0]dout;
wire full;
wire empty;

fifo_16to8 #(.DEPTH(DEPTH),.WIDTH(WIDTH),.ADDR(ADDR))
            DUT(.clk(clk),.rst(rst),.we(we),.re(re),.din(din),.dout(dout),.full(full),.empty(empty));
initial
  begin
    clk=0;
    forever #5 clk=~clk;
  end

task write;
input [WIDTH-1:0]tdin;
  begin
   @(negedge clk);
     we=1;
     re=0;
     din=tdin;
  end
endtask

task read;
 begin
  @(negedge clk);
   we=0;
   re=1;
 end
endtask

initial
  begin
    rst=1;
    we=0;
    re=0;
    din=0;
    #10;
    rst=0;
    write(8'hAA);
    write(8'hBB);
    write(8'hCC);
    write(8'hDD);
    write(8'hEE);
    write(8'hFF);
    read();
    read();
    read();
    read();
    read();
    #20 $finish;
  end  
             
     

            

endmodule
