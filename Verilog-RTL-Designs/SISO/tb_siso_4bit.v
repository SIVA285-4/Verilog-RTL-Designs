`timescale 1ns / 1ps



module tb_siso_4bit();
reg clk;
reg rst;
reg sin;
wire sout;
siso_4bit DUT(.clk(clk),.rst(rst),.sin(sin),.sout(sout));

initial
  begin
     clk=0;
     forever #5 clk=~clk;
  end
  
task inputs;
input tsin;
  begin
  @(negedge clk);
    sin=tsin;
  end
endtask

initial
 begin
   rst=1;
   sin=0;
   #10;
   rst=0;
   inputs(1);
   inputs(0);
   inputs(1);
   inputs(1);
   inputs(0);
   #60;
   $finish;
  end          
endmodule
