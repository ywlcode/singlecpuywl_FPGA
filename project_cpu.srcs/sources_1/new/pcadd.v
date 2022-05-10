`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/01 11:16:08
// Design Name: 
// Module Name: pcadd
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


module pcadd(
    input clk,
    input wea,
    input [31:0] oldaddr,
    //input [31:0] dinaddr,
    output [31:0] addra
);

reg [31:0] newaddra = 32'b11111111111111111111111111111111;

always @(posedge clk) begin
    newaddra = (wea == 1) ? 32'b11111111111111111111111111111111 : oldaddr+1;
end

assign addra = newaddra;

endmodule
