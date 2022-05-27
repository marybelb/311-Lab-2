`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 08:21:08 PM
// Design Name: 
// Module Name: top_mod
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


module top_mod(
    input clk_in,
    input rst,
    input D,
    output Q, 
    wire divided_clk
    );
    
    clk_divider cd(.clk_in(clk_in), .rst(rst), .divided_clk(divided_clk));
	pos_edge_DFF test(.D(D), .Q(Q), .Clk(divided_clk), .synch_reset(rst));
	
endmodule
