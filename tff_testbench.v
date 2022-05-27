`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 07:42:12 PM
// Design Name: 
// Module Name: tff_testbench
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


module tff_testbench();

reg T;
reg Clk, synch_reset;
wire Q;

pos_edge_tff TFFtest(.Q(Q), .T(T), .Clk(Clk), .synch_reset(synch_reset));
initial begin
T = 0;
Clk = 0;
synch_reset = 0;
end

always #7 Clk=~Clk;
always #13 T=~T;
always #19 synch_reset=~synch_reset;


endmodule
