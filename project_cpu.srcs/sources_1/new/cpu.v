`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 11:36:26
// Design Name: 于文龙
// Module Name: cpu
// Project Name: CPU
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


module cpu(
    input clk,
    input wea,
    input rr,
    input init,
    input [7:0] dinaddr,
    
    output [6:0] seg,
    output [7:0] AN,
    output [15:0] outdata
);

wire ch, regfile_op, clk400;
wire [4:0] ALU_op, raddr1, raddr2, waddr;
wire [2:0]  dram_op, jump_op, jump_op_c;
wire [31:0] c_order, ch_addr, imm32, result, data1, data2, datatoreg;
wire [31:0] wdata, addr, addra, order, oldaddr, rtt2, jor_addr, timer;
wire [25:0] data;

pc  u_pc (
    .clka                    ( clk             ),
    .wea                     ( wea             ),
    .addra                   ( addra  [31 : 0] ),
    .douta                   ( order  [31 : 0] ) 
);

pcadd  u_pcadd (
    .clk                     ( clk             ),
    .wea                     ( wea             ),
    .oldaddr                 ( oldaddr  [31:0] ),
    .addra                   ( addr     [31:0] ) 
);

jumpaddr  u_jumpaddr (
    .ch                      ( ch              ),
    .ch_addr                 ( ch_addr  [31:0] ),
    .addr                    ( addr     [31:0] ),
    .addra                   ( addra    [31:0] ) 
);

begink  u_begink (
    .wea                     ( wea             ),
    .rr                      ( rr              ),
    .init                    ( init            ),
    .dinaddr                 ( dinaddr  [7:0]  ),
    .order                   ( order    [31:0] ),
    .c_order                 ( c_order  [31:0] ) 
);

control  u_control (
    .order                   ( c_order     [31:0] ),
    .ALU_op                  ( ALU_op      [4:0]  ),
    .regfile_op              ( regfile_op         ),
    .jump_op                 ( jump_op_c   [2:0]  ),
    .raddr1                  ( raddr1      [4:0]  ),
    .raddr2                  ( raddr2      [4:0]  ),
    .waddr                   ( waddr       [4:0]  ),
    .imm32                   ( imm32       [31:0] ),
    .dram_op                 ( dram_op     [2:0]  ) 
);

regester_file  u_regester_file (
    .regfile_op              ( regfile_op         ),
    .clk                     ( clk                ),
    .raddr1                  ( raddr1      [4:0]  ),
    .raddr2                  ( raddr2      [4:0]  ),
    .waddr                   ( waddr       [4:0]  ),
    .wdata                   ( wdata       [31:0] ),
    .rdata1                  ( data1       [31:0] ),
    .rdata2                  ( data2       [31:0] ),
    .rtt2                    ( rtt2        [31:0] ) 
);

ALU  u_ALU (
    .ALU_op                  ( ALU_op     [4:0]  ),
    .data1                   ( data1      [31:0] ),
    .data2                   ( data2      [31:0] ),
    .imm                     ( imm32      [31:0] ),
    .result                  ( result     [31:0] ),
    .jump_addr               ( jor_addr   [31:0] ) 
);

jump  u_jump (
    .jump_op                 ( jump_op    [2:0]  ),
    .data1                   ( data1      [31:0] ),
    .data2                   ( data2      [31:0] ),
    .jump_addr               ( jor_addr   [31:0] ),
    .ch                      ( ch                ),
    .ch_addr                 ( ch_addr    [31:0] ) 
);

dataram_do  u_dataram_do (
    .clka                    ( clk              ),
    .dram_op                 ( dram_op   [2:0]  ),
    .addr                    ( jor_addr  [31:0] ),
    .data_ram                ( data2     [31:0] ),
    .data_reg                ( datatoreg [31:0] ) 
);

kkk  u_kkk (
    .op                      ( dram_op     [2:0]  ),
    .datatoreg               ( datatoreg   [31:0] ),
    .ALU_result              ( result      [31:0] ),
    .wdata                   ( wdata       [31:0] ) 
);

pc_new_old  u_pc_new_old (
    .addra                   ( addra    [31:0] ),
    .oldaddr                 ( oldaddr  [31:0] ) 
);

chchch  u_chchch (
    .wea                     ( wea              ),
    .jump_op_c               ( jump_op_c  [2:0] ),
    .jump_op                 ( jump_op    [2:0] ) 
);

datatwoten  u_datatwoten (
    .clk                     ( clk           ), 
    .wea                     ( wea           ), 
    .data                    ( data   [25:0] ), 
    .timer                   ( timer  [31:0] )  
);

clknew  u_clknew (
    .clk                     ( clk      ),      
    .wea                     ( wea      ),      
    .clk400                  ( clk400   )       
);

timep  u_timep (
    .clk400                  ( clk400         ),
    .timer                   ( timer   [31:0] ),
    .seg                     ( seg     [6:0]  ),
    .AN                      ( AN      [7:0]  ) 
);

jd  u_jd (
    .rtt                     ( rtt2  [31:0] ),  
    .data                    ( data  [25:0] )   
);

outt  u_outt (
    .wea                     ( wea             ),
    .data                    ( data     [25:0] ),
    .outdata                 ( outdata  [15:0] ) 
);

endmodule
