module testbench;

    // Declare inputs as reg type since we are driving them in the testbench
    reg [7:0] inbyte;
    reg clk;

    // Declare output as wire
    wire [7:0] outbyte;

    // Instantiate the pixel_operator module

    gamma_correction uut (inbyte,outbyte);

    // Clock generation: 10ns period
    always begin
        #5 clk = ~clk;
    end

    // File handling for input and output
    integer input_file, output_file;
    integer i;
   
    reg [7:0] input_a;

    // Open the input file and output file
    initial begin
        // Initialize signals
        clk = 0;
        inbyte = 8'd0;

        // Attempt to open the input file in read mode
//        input_file = $fopen("C:/Users/Babita SSD/HACKATHON_FOLDER/input.txt", "r");
        input_file = $fopen("E:/vivado_project/Gamaa_correction/Gamaa_correction.srcs/sim_1/new/input.txt", "r");
//        input_file = $fopen("E:/vivado_project/Image_Enhancment/Image_Enhancment.srcs/sources_1/new/input.txt", "r");
        if (input_file == 0) begin
            $display("Error opening input file!");
            $finish;
        end else begin
            $display("Successfully opened input file!");
        end

        // Open the output file in write mode
        output_file = $fopen("output.txt", "w");
        if (output_file == 0) begin
            $display("Error opening output file!");
            $finish;
        end

        // Apply test vectors from the input file
        i = 0;
        while (!$feof(input_file)) begin
            // Read the next inbyte value from the file
            if ($fscanf(input_file, "%h \t", input_a) != 1) begin
                $display("Error reading from input file!");
                $finish;
            end

            // Apply the inputs to the pixel_operator module
            inbyte = input_a;

            // Wait for the output to stabilize (use a delay or #1)
            #20;  // Allow some time for the output to be processed

            // Capture the output and write it to the output file
            $fdisplay(output_file, "%h", outbyte);

            i = i + 1;
        end

        // Close the files
        $fclose(input_file);
        $fclose(output_file);
       
        // Finish the simulation
        #10;  // Give some additional time before simulation finishes
        #2304000; // Wait for 2304us (2304000 ns)
        $finish;
    end

    // Monitor the output value (optional)
    initial begin
        $monitor("Time = %0t, inbyte = %0d, outbyte = %0d",
                 $time, inbyte, outbyte);
    end

endmodule