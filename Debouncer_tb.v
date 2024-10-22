`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:44:07 PM
// Design Name: 
// Module Name: Debouncer_tb
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


module Debouncer_tb();
    reg RAW, CLK;
    wire CLEAN;
    
    Debouncer uut(.RAW(RAW), .CLK(CLK), .CLEAN(CLEAN));
    initial begin
        CLK = 0;
        forever #10 CLK = ~CLK;
        
    end
endmodule
