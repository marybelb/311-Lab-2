`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 07:31:38 PM
// Design Name: 
// Module Name: top_module
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


module top_module(

input J, 
input K,
input Reset,
input Clk,
output Q_syn,
output Q_asyn

);

JKFF_synch(.Q_syn(Q_syn), .J(J), .K(K), .Clk(Clk), .Reset(Reset)); 
JKFF_asynch(.Q_asyn(Q_asyn), .J(J), .K(K), .Clk(Clk), .Reset(Reset));

endmodule
