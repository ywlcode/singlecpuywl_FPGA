`timescale 1ns / 1ps

module datatwoten(
    input clk,
    input wea,
    input  [25:0] data,
    output [31:0] timer
);

reg [6:0] count = 7'b0;
reg [57:0] shift_reg = 58'b0;
reg [31:0] ans = 0;

// 计数部分
always @(posedge clk)
begin
    if (wea == 1'b1)
    begin
        if (count == 30)
        begin
            ans = shift_reg[57:26];
            count = 0;
        end
        else count = count + 1;
    end
end

// 二进制转换为十进制 /
always @(posedge clk)
begin
    if (wea == 1'b1)
    begin
    if (count==0)
        shift_reg={32'b0,data};
    else if (count<=26)
    begin
        if(shift_reg[29:26]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[29:26]=shift_reg[29:26]+2'b11;
        else
            shift_reg[29:26]=shift_reg[29:26];
        
        if(shift_reg[33:30]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[33:30]=shift_reg[33:30]+2'b11;
        else
            shift_reg[33:30]=shift_reg[33:30];
        
        if(shift_reg[37:34]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[37:34]=shift_reg[37:34]+2'b11;
        else
            shift_reg[37:34]=shift_reg[37:34];

        if(shift_reg[41:38]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[41:38]=shift_reg[41:38]+2'b11;
        else
            shift_reg[41:38]=shift_reg[41:38];
        
        if(shift_reg[45:42]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[45:42]=shift_reg[45:42]+2'b11;
        else
            shift_reg[45:42]=shift_reg[45:42];
        
        if(shift_reg[49:46]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[49:46]=shift_reg[49:46]+2'b11;
        else
            shift_reg[49:46]=shift_reg[49:46];

        if(shift_reg[53:50]>=5)         //判断该位是否>5，如果是则+3   
            shift_reg[53:50]=shift_reg[53:50]+2'b11;
        else
            shift_reg[53:50]=shift_reg[53:50];

        shift_reg=shift_reg<<1;         //操作结束后，整体左移                    
    end
    end
end

assign timer = ans;

endmodule