`timescale 1ns / 1ps

`include "Settings.vh"

//IF�׶Σ�ȡָ��PC����
module InstructionFetch(
    input SystemSignal system,
    input int jumpValue,
    input logic jumpEnabled,
    input logic stall,
    output IF_ID_Reg result
    );

    int pc;
    Instruction ins;

    ProgramCounter PC(
        .system(system),
        .jumpValue(jumpValue),
        .jumpEnabled(jumpEnabled),
        .pcValue(pc),
        .stall(stall)
    );

    InstructionMemory IM(
        .address(pc),
        .instruction(ins)
    );

    always_ff @(posedge system.clock)
    begin
        if (system.reset)
        begin
            result <= '{32'b0, `reset_Instruction};
        end
        else if (stall)//װ��ָ��
        begin
            result <= result;
        end
        else
        begin
            result.instruction <= ins;
            result.pcValue <= pc;
        end
    end

endmodule
