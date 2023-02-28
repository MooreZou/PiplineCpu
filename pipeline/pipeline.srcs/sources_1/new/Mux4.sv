`timescale 1ns / 1ps

`include "Settings.vh"

module Mux4(
    input int A0,
    input int A1,
    input int A2,
    input int A3,
    input Vec2 choice,
    output int result
    );

    always_comb
    begin
        if(choice == 2'b00)
            result = A0;
        else if(choice == 2'b01)
            result = A1;
        else if(choice == 2'b10)
            result = A2;
        else
            result = A3;
    end

endmodule
