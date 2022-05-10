`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/06 08:47:15
// Design Name: 
// Module Name: outt
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


module outt(
    input wea,
    input [25:0] data,
    output [15:0] outdata 
);

assign outdata = (wea == 1) ? data[15:0] : 16'b0;

endmodule
