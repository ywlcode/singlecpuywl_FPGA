`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/06 22:50:04
// Design Name: 
// Module Name: clknew
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


module clknew(
    input clk,
    input wea,
    output clk400
);

reg [15:0] counter;

always @(posedge clk or posedge wea)
begin
    if (!wea)
        counter <= 0;
    else if (counter==49999) // 下板改成49999, tb = 3
        counter <= 0;
    else 
        counter <= counter + 1;
end

assign clk400 = counter[15]; // 下板改成15, tb = 1;

endmodule
