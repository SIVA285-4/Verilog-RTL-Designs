`timescale 1ns / 1ps


module tb_half_adder;

    // Testbench signals
    reg a;
    reg b;
    wire sum;
    wire carry;

    // Instantiate the DUT
    half_adder dut(
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Apply test vectors
    initial begin
        // Monitor values
        $monitor("Time=%0t | a=%b b=%b | sum=%b carry=%b", 
                  $time, a, b, sum, carry);

        // Test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End simulation
        $finish;
    end

endmodule
