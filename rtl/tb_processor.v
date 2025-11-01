`timescale 1ns / 1ps
module tb_processor;
    reg clk, reset;
    processor uut (.clk(clk), .reset(reset));

    always #5 clk = ~clk;  // 10ns clock

    integer op;

    initial begin
        $display("\n========================================");
        $display("Automated ALU Test Suite (CPU-level)");
        $display("========================================\n");

        for (op = 0; op < 7; op = op + 1) begin
            $display("----------------------------------------");
            $display("Testing ALU op = %03b", op);
            $display("----------------------------------------");

            // reset
            clk = 0; reset = 1;
            #10 reset = 0;

            // set sub-op in ALU instruction
            uut.memory[1][2:0] = op;  // ALU op bits
            uut.memory[16] = 8'd10;
            uut.memory[17] = 8'd5;
            uut.memory[18] = 8'd0;

            #200;
            wait(uut.halted);

            $display("Result: A=%0d | MEM[18]=%0d | Carry=%b | Zero=%b\n",
                      uut.A, uut.memory[18], uut.carry, uut.zero);
            #20;
        end

        $display("========================================");
        $display("All ALU operations tested!");
        $display("========================================\n");
        #50 $finish;
    end
endmodule