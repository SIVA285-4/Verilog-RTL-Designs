`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2026 13:52:39
// Design Name: 
// Module Name: tb_self_ram
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


module tb_ram_16to8;

    // Testbench signals
    reg clk;
    reg rst;
    reg we;
    reg re;
    reg [3:0] waddr;
    reg [3:0] raddr;
    reg [7:0] din;
    wire [7:0] dout;

    // Reference model
    reg [7:0] ref_mem [0:15];
    reg [7:0] expected_dout;

    integer i;

    // DUT instantiation
    ram_16to8 dut (
        .clk(clk),
        .rst(rst),
        .we(we),
        .re(re),
        .waddr(waddr),
        .raddr(raddr),
        .din(din),
        .dout(dout)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        rst = 1;
        we  = 0;
        re  = 0;
        waddr = 0;
        raddr = 0;
        din = 0;

        // Initialize reference memory
        for (i = 0; i < 16; i = i + 1)
            ref_mem[i] = 8'h00;

        // -----------------------
        // RESET CHECK
        // -----------------------
        @(posedge clk);
        rst = 0;

        // -----------------------
        // WRITE OPERATION CHECK
        // -----------------------
        for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            we = 1;
            re = 0;
            waddr = i;
            din = i + 8'h10;

            // Update reference model
            ref_mem[waddr] = din;
        end

        @(posedge clk);
        we = 0;

        // -----------------------
        // READ & SELF CHECK
        // -----------------------
        for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            re = 1;
            raddr = i;

            // Expected value from reference model
            expected_dout = ref_mem[raddr];

            @(posedge clk);  // wait for synchronous read

            if (dout !== expected_dout) begin
                $display("ERROR: Addr=%0d Expected=%h Got=%h",
                          raddr, expected_dout, dout);
            end else begin
                $display("PASS : Addr=%0d Data=%h",
                          raddr, dout);
            end
        end

        re = 0;
        $display("------ SELF CHECKING TEST COMPLETED ------");
        $finish;
    end

endmodule
