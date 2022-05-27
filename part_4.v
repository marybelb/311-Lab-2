`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2022 06:07:14 PM
// Design Name: 
// Module Name: part_4
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


module part_4(T, Clk, rst, Q, newclk);

input T, Clk, rst;
output Q;
output wire newclk;

clk_divider clockd(Clk, rst, newclk);
asynch_tff atff(Q, T, rst, newclk);


endmodule
