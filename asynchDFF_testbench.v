`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 07:20:43 PM
// Design Name: 
// Module Name: asynchDFF_testbench
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


module asynchDFF_testbench();

reg D;
reg Clk, asynch_reset;
wire Q;

asynch_posedge DFFtest2(.D(D), .Q(Q), .Clk(Clk), .asynch_reset(asynch_reset));
initial begin
D = 0;
Clk = 0;
asynch_reset = 0;
end

always #7 Clk=~Clk;
always #13 D=~D;
always #19 asynch_reset=~asynch_reset;

endmodule
