`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 08:50:28 PM
// Design Name: 
// Module Name: cdf
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


module cdf_calc_bram (
    input clk,
    input reset,
    input [15:0] hist_data,
    output reg [31:0] cdf_data_out
);

    reg [31:0] cdf_bram [0:255];  // BRAM for CDF storage

    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 256; i = i + 1)
                cdf_bram[i] <= 32'd0;
        end else begin
            cdf_bram[0] <= hist_data;
            for (i = 1; i < 256; i = i + 1)
                cdf_bram[i] <= cdf_bram[i-1] + hist_data;
        end
    end

    always @(posedge clk) begin
        cdf_data_out <= cdf_bram[hist_data];  // Output CDF value
    end

endmodule


