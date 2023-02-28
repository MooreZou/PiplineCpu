`timescale 1ns / 1ps

`include "Settings.vh"

module SignExtendUnit(
    input Vec16 in,
    output int out
    );

    assign out[15:0] = in;
    assign out[31:16] = in[15] ? 16'hFFFF : 16'h0000;

endmodule
