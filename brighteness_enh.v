`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 08:40:53 PM
// Design Name: Brightness Enhancer
// Module Name: brightness_enhancer
// Project Name: 
// Target Devices: PYNQ-Z2 / Xilinx FPGA
// Tool Versions: 
// Description: Brightness enhancement using histogram equalization
// 
//////////////////////////////////////////////////////////////////////////////////

module brightness_enhancer (
    input clk,
    input reset,
    input [7:0] pixel_in,
    input valid,
    input [31:0] total_pixels,
    output [7:0] pixel_out,
    output valid_out
);

    // Wires for BRAM connections
    wire [15:0] hist_data_out;
    wire [31:0] cdf_data_out;

    // Instantiate histogram module with BRAM
    histogram_bram hist_mod (
        .clk(clk),
        .reset(reset),
        .pixel_in(pixel_in),
        .valid(valid),
        .hist_data_out(hist_data_out)
    );

    // Instantiate CDF calculation module with BRAM
    cdf_calc_bram cdf_mod (
        .clk(clk),
        .reset(reset),
        .hist_data(hist_data_out),
        .cdf_data_out(cdf_data_out)
    );

    // Instantiate equalizer module
    equalizer eq_mod (
        .clk(clk),
        .reset(reset),
        .pixel_in(pixel_in),
        .valid(valid),
        .cdf_data(cdf_data_out),
        .total_pixels(total_pixels),
        .pixel_out(pixel_out),
        .valid_out(valid_out)
    );

endmodule