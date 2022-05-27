`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 07:20:51 PM
// Design Name: 
// Module Name: part_3
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


module part_3(X, Y, Z, S0, S1, T, Clk, synch_reset);

input X, Y, Z, Clk, synch_reset;
input S0, S1;
output reg T;

wire Q_DFF, D, Q_TFF;
wire TFF_T, K;
wire Q_JKFF;
wire Q1, Q2;

assign D = ((~Q_DFF)^(X))|(X&Q_DFF);
assign TFF_T = (~(Q_DFF&Y))&Q_TFF;
assign K = ~((Y^Z)&(Y^Z));

pos_edge_DFF DFF(.Q(Q_DFF), .D(D), .Clk(Clk), .synch_reset(synch_reset));
pos_edge_tff TFF(.Q(Q_TFF), .T(TFF_T), .synch_reset(synch_reset), .Clk(Clk));
JKFF_synch JKFF(.Q(Q_JKFF), .J(TFF_T), .K(K), .Reset(synch_reset), .Clk(Clk));

assign Q1 = (Q_TFF^Q_JKFF)^(Q_TFF);
assign Q2 = ~(Q_JKFF&Q_JKFF);

always @ (*)
begin

case ({S1,S0})
2'b00 : T <= Q_DFF;
2'b01 : T <= Q1;
2'b10 : T <= Q2;
2'b11 : T <= 0;
endcase
end
endmodule
