`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 22:35:08
// Design Name: 
// Module Name: tb_brightness_enhancer
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


`timescale 1ns / 1ps

module tb_brightness_enhancer;

    reg clk;
    reg reset;
    reg [7:0] pixel_in;
    reg valid;
    reg [31:0] total_pixels;
    wire [7:0] pixel_out;
    wire valid_out;

    // Instantiate Brightness Enhancer module
    brightness_enhancer uut (
        .clk(clk),
        .reset(reset),
        .pixel_in(pixel_in),
        .valid(valid),
        .total_pixels(total_pixels),
        .pixel_out(pixel_out),
        .valid_out(valid_out)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        valid = 0;
        pixel_in = 0;
        total_pixels = 16; // Example: Assume 16 pixels for testing

        #10 reset = 0; // Release reset

        // Feed pixel data
        repeat (16) begin
            @(posedge clk);
            valid = 1;
            pixel_in = $random % 256; // Generate random pixel values
        end

        // End simulation after processing
        #100;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | PixelIn=%d | PixelOut=%d | ValidOut=%b", 
                 $time, pixel_in, pixel_out, valid_out);
    end

endmodule

