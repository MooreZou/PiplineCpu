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
            //����д��Ĵ�������д���ڴ���Ӷ�Ӧ���
            fd = $fopen(`outputPath, "a+");
            if(GPRWriteEnabled)
                $fdisplay(fd, "@%h: $%d <= %h", GPRProgramCounter, GPRWriteNo, GPRWriteContent);
            if(DMWriteEnabled)
                $fdisplay(fd, "@%h: *%h <= %h", DMProgramCounter, address, DMWriteInput);
            $fclose(fd);
        end
    end
endmodule
