`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 23:21:28
// Design Name: 
// Module Name: jumpaddr
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


module jumpaddr(
    input ch,
    input [31:0] ch_addr,
    input [31:0] addr,
    output [31:0] addra
);

assign addra = (ch == 1) ? ch_addr : addr;

endmodule