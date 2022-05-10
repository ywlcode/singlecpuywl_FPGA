`timescale 1ns / 1ps

module jd(
    input  [31:0] rtt,
    output [25:0] data
);

assign data = rtt[25:0];

endmodule