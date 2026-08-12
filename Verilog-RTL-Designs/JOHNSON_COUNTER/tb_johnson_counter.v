`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 08:54:38
// Design Name: 
// Module Name: tb_johnson_counter
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


`timescale 1ns/1ps

module tb_johnson_counter;

    reg        clk;
    reg        rst;
    wire [3:0] q;


    johnson_counter dut (.clk(clk),.rst(rst),.q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task reset_counter;
    begin
        @(negedge clk);
        rst = 1;

        @(negedge clk);
        rst = 0;
    end
    endtask

    task run_counter(input integer cycles);
        integer i;
    begin
        for (i = 0; i < cycles; i = i + 1) begin
            @(negedge clk);
       
        end
    end
    endtask

    initial begin

        rst = 0;

        reset_counter();

        run_counter(10);

        reset_counter();

        run_counter(7);
        #20;

        $finish;
    end


endmodule
