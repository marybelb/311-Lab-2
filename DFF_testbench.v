`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 06:55:08 PM
// Design Name: 
// Module Name: DFF_testbench
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


module DFF_testbench();

reg D;
reg Clk, synch_reset;
wire Q;

pos_edge_DFF DFFtest(.D(D), .Q(Q), .Clk(Clk), .synch_reset(synch_reset));
initial begin
D = 0;
Clk = 0;
synch_reset = 0;
end

always #100 Clk=~Clk; 

always begin 
#200 D = 1'b1;
synch_reset = 1'b1;
#200 D = 1'b1;
synch_reset = 1'b1;
#300 D = 1'b1;
synch_reset = 1'b0;
#600 D = 1'b0;
#500 D = 1'b0;
#200 D = 1'b0;
#400 $stop;
end

endmodule
