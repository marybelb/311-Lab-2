`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 07:42:01 PM
// Design Name: 
// Module Name: topmod_testbench
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


module topmod_testbench();

reg J, K;
reg Clk, Reset;
wire Q_syn, Q_asyn;

JKFF_synch JKFFtest(.Q(Q_syn), .J(J), .K(K), .Reset(Reset), .Clk(Clk));
JKFF_asynch JKFFtest2(.Q(Q_asyn), .J(J), .K(K), .Reset(Reset), .Clk(Clk));

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
