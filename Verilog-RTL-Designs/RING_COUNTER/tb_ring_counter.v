`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 21:41:04
// Design Name: 
// Module Name: tb_ring_counter
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

module tb_ring_counter;
    reg        clk;
    reg        rst;
    wire [3:0] q;
    
    ring_counter dut (.clk(clk),.rst(rst),.q(q));


    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Task to apply reset
    task reset_counter;
    begin
        @(negedge clk);
        rst = 1;

        @(negedge clk);
        rst = 0;
    end
    endtask

    // Task to run counter
    task run_counter(input integer cycles);
        integer i;
    begin
        for (i = 0; i < cycles; i = i + 1) begin
            @(negedge clk);

        end
    end
    endtask

    // Test sequence
    initial begin

        rst = 0;

        reset_counter();

        run_counter(9);

        reset_counter();

        run_counter(7);

        $finish;
    end


endmodule

