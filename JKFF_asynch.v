`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 06:36:38 PM
// Design Name: 
// Module Name: JKFF_asynch
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


module JKFF_asynch(J, K, Clk, Reset, Q);

input J, K, Clk, Reset;
output Q;
wire w;

assign w = (J&~Q)|(~K&Q);
asynch_posedge jkff2(Q, w, Reset, Clk);

endmodule
