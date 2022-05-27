`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 08:04:35 PM
// Design Name: 
// Module Name: asynchTFF_testbench
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


module asynchTFF_testbench();

reg T;
reg Clk, asynch_reset;
wire Q;

asynch_tff TFFtest(.Q(Q), .T(T), .Clk(Clk), .asynch_reset(asynch_reset));
initial begin
T = 0;
Clk = 0;
asynch_reset = 0;
end

always #7 Clk=~Clk;
always #13 T=~T;
always #19 asynch_reset=~asynch_reset;

endmodule
