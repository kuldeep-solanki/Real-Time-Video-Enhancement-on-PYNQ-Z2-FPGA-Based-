# Real-Time-Video-Enhancement-on-PYNQ-Z2-FPGA-Based-
-----------------------------------------------------------------------------------------------------------
# Overview

This repository contains the implementation of a real-time video enhancement system developed on the PYNQ-Z2 FPGA board as part of a hackathon project. The system captures HDMI video input, applies hardware-accelerated image enhancement algorithms, and outputs the processed video through HDMI with minimal latency.

The project demonstrates an end-to-end hardware–software co-design flow using Vivado for FPGA design and Vitis for software integration.


# Key Features

  * HDMI pass-through pipeline on PYNQ-Z2
  * Gamma correction using LUT-based hardware implementation
  * Brightness enhancement using histogram-based processing
  * Fully AXI4-Stream compliant video pipeline
  * Custom Verilog logic packaged as Vivado IP
  * Software control and integration using Vitis

# Hardware Platform

  * Board: PYNQ-Z2
  * SoC: Xilinx Zynq-7020
  * Interfaces Used:
  * HDMI Input (TMDS)
  * HDMI

# System Architecture
  High-Level Pipeline

  HDMI In
  → HDMI RX (dvi2rgb)
  → Video In to AXI4-Stream
  → Custom Image Enhancement IP
  → AXI4-Stream to Video Out
  → HDMI TX (rgb2dvi)
  → HDMI Out


# Implemented Image Enhancement Algorithms

# 1. Gamma Correction

  * Operates on 8-bit grayscale video
  * Implements power-law intensity transformation
  * Uses a precomputed Look-Up Table (LUT)
  
  Design Rationale
  Floating-point operations are not natively supported in Verilog. To ensure real-time performance and efficient FPGA utilization, gamma correction is implemented using a LUT. The exact output values depend on the precomputed gamma LUT used.

# 2. Brightness Enhancement

  * Histogram-based enhancement technique
I * mproves overall brightness and contrast

Key stages:
  Histogram calculation
  Cumulative Distribution Function (CDF)
  Pixel remapping using normalized CDF
  
The design is fully streaming and compatible with AXI4-Stream video flow.


# Development Flow

1. HDMI Pass-Through Implementation
   Verified HDMI input/output on PYNQ-Z2
   Ensured correct clocking and video timing
2. RTL Design
   Implemented enhancement algorithms in Verilog
   Validated functionality using testbenches
3. Custom IP Creation
   Packaged RTL logic as Vivado IP
   Integrated IP into AXI4-Stream pipeline
4. Software Integration
   Used Vitis for software-side configuration
   Controlled and initialized video pipeline from ARM PS


# Conclusion
This project demonstrates the effective use of FPGA acceleration for real-time video processing using the PYNQ-Z2 platform. By combining Verilog-based image enhancement, AXI4-Stream video pipelines, and Vitis-based software control, the system achieves efficient and scalable video enhancement suitable for embedded vision applications.
