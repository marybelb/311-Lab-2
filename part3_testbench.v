`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2022 04:35:17 PM
// Design Name: 
// Module Name: part3_testbench
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


module part3_testbench();

reg X, Y, Z;
reg S0, S1;
reg Clk, synch_reset;
wire T;

part_3 p3(.X(X), .Y(Y), .Z(Z), .S0(S0), .S1(S1), .T(T), .Clk(Clk), .synch_reset(synch_reset));
initial begin
X = 1'b0;
Y = 1'b0;
Z = 1'b0;
S0 = 1'b0;
S1 = 1'b1;
Clk = 1'b0;
synch_reset = 1'b1;
#60 synch_reset = 1'b0;
end

always
begin 
#9 Clk = ~Clk;
end

always
begin
#15 {X, Y, Z} = {X, Y, Z} + 1'b1;
end

always 
begin
#23 {S1, S0} = {S1, S0} + 1'b1;
end

always
begin
#105 synch_reset = 1'b1;
end


endmodule
