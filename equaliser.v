`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 08:49:40 PM
// Design Name: 
// Module Name: equaliser
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


module equalizer (
    input clk,
    input reset,
    input [7:0] pixel_in,
    input valid,
    input [31:0] cdf_data,
    input [31:0] total_pixels,
    output reg [7:0] pixel_out,
    output reg valid_out
);

    reg [31:0] cdf_min;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pixel_out <= 0;
            valid_out <= 0;
        end else if (valid) begin
            cdf_min <= cdf_data[0];
            pixel_out <= ((cdf_data - cdf_min) * 255) / (total_pixels - cdf_min);
            valid_out <= 1;
        end
    end

endmodule


