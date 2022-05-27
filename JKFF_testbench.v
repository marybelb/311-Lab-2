`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 06:40:30 PM
// Design Name: 
// Module Name: JKFF_testbench
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


module JKFF_testbench();

reg J, K;
reg Clk, Reset;
wire Q;

JKFF_synch JKFFtest(.Q(Q), .J(J), .K(K), .Clk(Clk), .Reset(Reset));
initial begin
J = 0;
K = 0;
Clk = 0;
Reset = 0;
end

always #7 Clk=~Clk;
always #13 J=~J;
always #17 K=~K;
always #19 Reset=~Reset;

endmodule
