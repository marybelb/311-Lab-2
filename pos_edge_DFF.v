`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 08:02:29 PM
// Design Name: 
// Module Name: pos_edge_DFF
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


module pos_edge_DFF(Q, D, synch_reset, Clk);

    output Q;
    input D, Clk;
    input synch_reset;
    reg Q;
    
    always @ (posedge Clk)
    begin
    if (synch_reset ==1'b1)
        Q<= 1'b0;
       else
        Q<=D;
    end
        
endmodule
