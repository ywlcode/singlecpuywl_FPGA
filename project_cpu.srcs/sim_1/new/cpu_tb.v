`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 15:11:15
// Design Name: 
// Module Name: try_tb
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


module cpu_tb();

reg clk;
reg wea;
reg rr;
reg init;
reg [7:0] dinaddr;

wire [6:0] seg;
wire [7:0] AN;
wire [15:0] outdata;

cpu uut(
    .clk(clk),
    .wea(wea),
    .rr(rr),
    .init(init),
    .dinaddr(dinaddr), 

    .seg(seg),
    .AN(AN),
    .outdata(outdata)
);

initial begin
    // 初始化
    clk = 1'b0;
    wea = 1'b1;
    init = 1'b1;
    rr = 1'b0;
    dinaddr = 67;
    #50;
    // 运行
    wea = 1'b0;
    #50;
    // 查看寄存器
    wea = 1'b1;
    init = 1'b0;
    rr = 1'b0;
    dinaddr = 2; // x2
    #150;
    dinaddr = 8'b00011110; // x30
    #150;
    // 查看内存
    rr = 1'b1;
    dinaddr = 8'b1010;
    #150;
    $finish;
    
    /* ordertry.coe中的指令
    dina = 32'b001111 00000 00001 0000000000000000; // 指令0 lui x1 = 0;
    #20;
    dina = 32'b001111 00000 00010 0000000000110111; // 指令1 lui x2 = 37h，55; 
    #20;
    dina = 32'b001111 00000 00011 0000000000111010; // 指令2 lui x3 = 3ah，58; 
    #20;
    dina = 32'b001001 00010 00010 0000000000000001; // 指令3 addiu 寄存器x2++; 
    #20;
    dina = 32'b000100 00010 00011 0000000000000110; // 指令4 BEQ 寄存器x2等于寄存器x3时转移到指令6
    #20;
    dina = 32'b000101 00001 00010 0000000000000011; // 指令5 BNE; x1不等于x2就转移到指令3
    #20;
    dina = 32'b001111 00000 00001 0000000000000001; // 指令6 lui x1 = 1;说明BEQ执行成功
    #20;
    dina = 32'b001111 00000 00011 0000000010101011; // 指令7 lui x3 = 171;
    #20;
    dina = 32'b101011 00000 00011 0000000000001010; // 指令8 SW 将寄存器x3的值存入地址10处
    */
end

always #1 clk = ~clk;

endmodule