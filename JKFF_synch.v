`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 06:24:41 PM
// Design Name: 
// Module Name: JKFF_synch
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


module JKFF_synch(J, K, Clk, Reset, Q);

input J, K, Clk, Reset;
output Q;
wire w;

assign w = (J&~Q)|(~K&Q);
pos_edge_DFF jkff(Q, w, Reset, Clk); 

endmodule
