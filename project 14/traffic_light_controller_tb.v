// Testbench for Traffic Light Controller

`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate the Traffic Light Controller
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    initial begin
        clk = 1'b0;

        forever #5 clk = ~clk;
    end

    // Generate waveform
    initial begin
        $dumpfile("traffic_light_controller.vcd");
        $dumpvars(0, traffic_light_controller_tb);
    end

    // Test sequence
    initial begin

        // Apply reset
        reset = 1'b1;
        #10;

        // Release reset
        reset = 1'b0;

        // Allow controller to run
        #50;

        $finish;
    end

    // Display results
    initial begin
        $monitor(
            "Time=%0t | Reset=%b | RED=%b | YELLOW=%b | GREEN=%b",
            $time, reset, red, yellow, green
        );
    end

endmodule