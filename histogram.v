`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 08:51:30 PM
// Design Name: 
// Module Name: histogram
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


module histogram_bram (
    input clk,
    input reset,
    input [7:0] pixel_in,
    input valid,
    output reg [15:0] hist_data_out
);

    reg [15:0] hist_bram [0:255];  // BRAM for histogram storage

    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 256; i = i + 1)
                hist_bram[i] <= 16'd0;
        end else if (valid) begin
            hist_bram[pixel_in] <= hist_bram[pixel_in] + 1;
        end
    end

    always @(posedge clk) begin
        hist_data_out <= hist_bram[pixel_in];  // Output the histogram count
    end

endmodule

