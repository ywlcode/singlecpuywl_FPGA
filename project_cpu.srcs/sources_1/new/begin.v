`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/01 16:01:32
// Design Name: 
// Module Name: begin
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


module begink(
    input wea,
    input rr,
    input init,
    input [7:0] dinaddr,
    input [31:0] order,
    output [31:0] c_order
);

assign c_order= (wea == 0)  ? order : 
                (init == 1) ? {24'b001001000001111000000000, dinaddr[7:0]} : 
                (rr == 0)   ? {6'b001001 , dinaddr[4:0], 5'b11111, 16'b0000000000000000} 
                : {24'b100011000001111100000000, dinaddr};

// wea == 0 , init == x , rr == x  cpu运行
// wea == 1 , init == 1 , rr == x  初始化 寄存器x30
// wea == 1 , init == 0 , rr == 0  查看寄存器中的值
// wea == 1 , init == 0 , rr == 1  查看内存中的值
// 寄存器x0 恒为0, 寄存器x30 保存初始化值, 寄存器x31 用于查看值的中间容器 -> 专用寄存器

endmodule