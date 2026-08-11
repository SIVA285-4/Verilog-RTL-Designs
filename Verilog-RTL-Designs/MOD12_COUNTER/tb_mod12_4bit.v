`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 12:10:20
// Design Name: 
// Module Name: tb_mod12_4bit
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


module tb_mod12_4bit();
reg clk;
reg rst;
reg load;
reg [3:0]data;
wire [3:0]count;

mod12_4bit DUT(.clk(clk),.rst(rst),.load(load),.data(data),.count(count));

initial
  begin
     clk=0;
     forever #5 clk=~clk;
  end
task data_in;
  input trst;
  input tload;
  input [3:0]tdata;
   begin
   @(negedge clk)
    rst=trst;
    load=tload;
    data=tdata;
   end
endtask

initial
  begin
    rst=1;
    load=0;
    data=0;
    #10;
    data_in(1,0,4'b0011);
    data_in(0,0,4'b0000);
    data_in(0,0,4'b0000);
    data_in(0,0,4'b0000);
    data_in(0,1,4'b1001);
    data_in(0,0,4'b1011);
    data_in(0,0,4'b0000);
    data_in(0,0,4'b0000);
    data_in(0,0,4'b0000);
    #10;
    $finish;
  end  
            
endmodule
