`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 06:49:40 PM
// Design Name: 
// Module Name: asynch_posedge
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


module asynch_posedge(Q, D, asynch_reset, Clk);

    output Q;
    input D, Clk;
    input asynch_reset;
    reg Q;
    
    always @ (posedge Clk or posedge asynch_reset)
    begin
    if (asynch_reset ==1'b1)
        Q<= 1'b0;
       else
        Q<=D;
    end
    
endmodule
