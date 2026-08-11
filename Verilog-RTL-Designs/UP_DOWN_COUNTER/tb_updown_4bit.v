`timescale 1ns / 1ps



module tb_updown_4bit();
reg clk;
reg rst;
reg load;
reg up_down;
reg [3:0]data;
wire [3:0]count;

updown_4bit DUT(.clk(clk),.rst(rst),.load(load),.up_down(up_down),.data(data),.count(count));

initial
  begin
    clk=0;
    forever #5 clk=~clk;
  end

task inputs;
input trst;
input tload;
input tup_down;
input [3:0]tdata;
  begin
  @(negedge clk);
    rst     = trst;
    load    = tload;
    up_down = tup_down;
    data    = tdata;
end
endtask

initial
  begin
    rst=1;
    load=0;
    up_down=1;
    data=0;
    #10;
    inputs(0,0,1,4'b0000);
    inputs(0,0,1,4'b0000);
    inputs(0,0,1,4'b0000);
    inputs(0,1,1,4'b1011);
    inputs(0,0,1,4'b0000);
    inputs(0,0,1,4'b0000);
    inputs(0,0,1,4'b0000);
    inputs(0,0,0,4'b0110);
    inputs(0,0,0,4'b0000);
    #10 $finish;
    
  end  
        
endmodule
