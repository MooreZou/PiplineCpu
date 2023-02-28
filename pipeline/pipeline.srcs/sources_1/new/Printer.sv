`timescale 1ns / 1ps

`include "Settings.vh"

module Printer(
    input SystemSignal system,

    input Vec5 GPRWriteNo,
    input int GPRWriteContent,
    input int GPRProgramCounter,
    input logic GPRWriteEnabled,

    input int address,
    input int DMProgramCounter,
    input int DMWriteInput,
    input logic DMWriteEnabled
    );
    integer fd;

    initial 
    begin
        $fclose($fopen(`outputPath, "w+"));
    end

    always_ff @(posedge system.clock)
    begin
        if(!system.reset)
        begin
//            if(GPRWriteEnabled)
//                $display("@%h: $%d <= %h", GPRProgramCounter, GPRWriteNo, GPRWriteContent);
//            if(DMWriteEnabled)
//                $display("@%h: *%h <= %h", DMProgramCounter, address, DMWriteInput);
            //根据写入寄存器还是写入内存添加对应语句
            fd = $fopen(`outputPath, "a+");
            if(GPRWriteEnabled)
                $fdisplay(fd, "@%h: $%d <= %h", GPRProgramCounter, GPRWriteNo, GPRWriteContent);
            if(DMWriteEnabled)
                $fdisplay(fd, "@%h: *%h <= %h", DMProgramCounter, address, DMWriteInput);
            $fclose(fd);
        end
    end
endmodule
