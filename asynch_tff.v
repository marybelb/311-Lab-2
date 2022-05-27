`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 07:51:09 PM
// Design Name: 
// Module Name: asynch_tff
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


module asynch_tff(Q, T, asynch_reset, Clk);

    output Q;
    input T, Clk;
    input asynch_reset;
    
    //wire w1;
   // wire w2;
    wire D;
    
    assign D = Q ^ T; 
    asynch_posedge tff2(Q, D, asynch_reset, Clk);
   // assign Q = w2;
    
endmodule
