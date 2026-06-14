`timescale 1ns / 1ps

module tb_jkff();
reg clk;
reg rst;
reg j,k;
wire q;

jk_ff DUT(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));

initial
  begin
  clk=0;
  forever #5 clk=~clk;
  end
task inputs(input jt,kt);
  begin
     j=jt;
     k=kt;
     #10;
  end
endtask
       
initial
 begin
  rst=1;
  j=0;
  k=0;
  #10;
  rst=0;
  inputs(0,0);
  inputs(1,0);
  inputs(0,0);
  inputs(0,1);
  inputs(1,1);
  inputs(1,1);
  #10;
  $finish;
 end 
  
endmodule
