`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:53:43 PM
// Design Name: 
// Module Name: clk_testbench
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


module clk_testbench();
    reg clk_in;
	reg rst;
	reg clear;
	reg D;
	wire Q;
	wire divided_clk;
	
	clk_divider tt(.clk_in(clk_in), .rst(rst), .divided_clk(divided_clk));
	pos_edge_DFF DFFtest(.D(D), .Q(Q), .Clk(clk_in), .synch_reset(clear));
	
	initial begin
	clk_in = 0;
	forever #10 clk_in =~clk_in;
	end
	
	initial begin
	clear = 1;
	rst = 1;
	D <= 0;
	#100;
	clear = 0;
	rst = 0;
	D<=1;
	#250;
	D<=0;
	#250;
	D<=1;
	#250;
	D<=1;
	end
	
endmodule
