`timescale 1ns/1ps
module timep(
    input clk400,
    input [31:0] timer,
    output reg [6:0] seg,
    output reg [7:0] AN
);

reg [2:0] cnt_seg = 0;  // 用于控制4个数码管开关
reg [3:0] seg_data;  // 数码管显示的数字

always @(posedge clk400) 
begin
  case (cnt_seg)
  3'b000: begin AN<= 8'b11111110;seg_data<=timer[3:0]; end
  3'b001: begin AN<= 8'b11111101;seg_data<=timer[7:4]; end
  3'b010: begin AN <= 8'b11111011;seg_data<=timer[11:8] ; end
  3'b011: begin  AN <= 8'b11110111; seg_data<=timer[15:12]; end
  3'b100: begin AN<= 8'b11101111;seg_data<=timer[19:16] ; end
  3'b101: begin AN<= 8'b11011111;seg_data<=timer[23:20]; end
  3'b110: begin AN <= 8'b10111111;seg_data<=timer[27:24] ; end
  3'b111: begin  AN <= 8'b01111111; seg_data<=timer[31:28]; end
  default:AN <= 8'b11111111;
  endcase
  cnt_seg = cnt_seg + 1;
end

always @(seg_data)
begin
  case (seg_data)
  4'd0 : seg <= 7'b0000001;   //0
  4'd1 : seg <= 7'b1001111;   //1
  4'd2 : seg <= 7'b0010010;   //2
  4'd3 : seg <= 7'b0000110;   //3
  4'd4 : seg <= 7'b1001100;   //4
  4'd5 : seg <= 7'b0100100;   //5
  4'd6 : seg <= 7'b0100000;   //6
  4'd7 : seg <= 7'b0001111;   //7
  4'd8 : seg <= 7'b0000000;   //8
  4'd9 : seg <= 7'b0000100;   //9
  default : seg <= 7'b0000001;   //0
  endcase
end

endmodule
