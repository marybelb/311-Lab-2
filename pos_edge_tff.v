`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 07:07:42 PM
// Design Name: 
// Module Name: pos_edge_tff
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


module pos_edge_tff(Q, T, synch_reset, Clk);

    output Q;
    input T, Clk;
    input synch_reset;
    //reg Q;
    
    wire D;
    
    //assign w1 = T ^ w2; 
    assign D = Q ^ T; 
    pos_edge_DFF tff(Q, D, synch_reset, Clk);
    //assign Q = w2;
    
endmodule
