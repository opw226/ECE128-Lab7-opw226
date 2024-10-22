`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:58:50 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg P1;
    reg clk;
    reg reset;
    wire z;
    
    Mealy uut(.P1(P1), .clk(clk), .reset(reset), .z(z));
    initial begin
        P1 = 1'b1;
        clk = 1'b0;
        reset = 1'b1;
        #15 reset = 1'b0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
        #10 P1 = 1;
        #10 P1 = 0;
        #10 P1 = 1;
        #10 P1 = 1;
        #10 P1 = 0;
        #10 P1 = 1;
        #40;
        
    end
endmodule
