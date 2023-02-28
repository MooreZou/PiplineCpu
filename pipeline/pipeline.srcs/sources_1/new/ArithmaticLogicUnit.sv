`timescale 1ns / 1ps

`include "Settings.vh"

module adder_32(
    output int sum,//Result
    output logic cout,// Result Jinwei
    input int a,
    input int origin_b,
    input logic cin, // Input Jinwei
    input logic isMinus // 0: add 1: minus
    );
    
    int g, p, b;
    Vec33 c;

    assign b = isMinus ? (~origin_b+1) : origin_b;
    
    assign  c[0] = cin; 
    assign  p = a ^ b;
    assign  g = a & b;
    
    assign  c[1] = (g[0]|(p[0]&c[0]));
    assign  c[2] = (g[1]|(p[1]&(g[0]|(p[0]&c[0]))));
    assign  c[3] = (g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))));
    assign  c[4] = (g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))));
    assign  c[5] = (g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))));
    assign  c[6] = (g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))));
    assign  c[7] = (g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))));
    assign  c[8] = (g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0])))))
    )))))))))));
    assign  c[9] = (g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[
    0]&c[0]))))))))))))))))));
    assign  c[10] = (g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p
    [1]&(g[0]|(p[0]&c[0]))))))))))))))))))));
    assign  c[11] = (g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|
    (p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))));
    assign  c[12] = (g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3
    ]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))));
    assign  c[13] = (g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g
    [4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))));
    assign  c[14] = (g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&
    (g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))));
    assign  c[15] = (g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7
    ]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))));
    assign  c[16] = (g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p
    [8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))
    ))))))))))))))));
    assign  c[17] = (g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|
    (p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))
    ))))))))))))))))))))))))))))))));
    assign  c[18] = (g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]
    |(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0
    ]|(p[0]&c[0]))))))))))))))))))))))))))))))))))));
    assign  c[19] = (g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]
    |(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g
    [1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))));
    assign  c[20] = (g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]
    |(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&
    (g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))));
    assign  c[21] = (g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]
    |(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4
    ]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))));
    assign  c[22] = (g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]
    |(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p
    [5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))));
    assign  c[23] = (g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]
    |(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|
    (p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))
    ))))))));
    assign  c[24] = (g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]
    |(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7
    ]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))
    ))))))))))))))))))))))));
    assign  c[25] = (g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]
    |(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g
    [8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))
    ))))))))))))))))))))))))))))))))))))))));
    assign  c[26] = (g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]
    |(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&
    (g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&
    c[0]))))))))))))))))))))))))))))))))))))))))))))))))))));
    assign  c[27] = (g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]
    |(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&
    (g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1
    ]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))))))))))))));
    assign  c[28] = (g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]
    |(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&
    (g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p
    [2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    assign  c[29] = (g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]
    |(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&
    (g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|
    (p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    assign  c[30] = (g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]
    |(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&
    (g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4
    ]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    assign  c[31] = (g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]
    |(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&
    (g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g
    [5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))))))))))))))))
    ))))))))))))))));
    assign  c[32] = (g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]
    |(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&
    (g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&
    (g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0]))))))))))))))))))))))))))))))))
    ))))))))))))))))))))))))))))))));

    assign sum = p ^ c[31:0];
    assign cout = c[32];
    
endmodule


module ArithmaticLogicUnit(
        input int A,
        input int B,
        input Vec6 Op,
        output int C,
        output logic Over
    );
    ;
    int mask, temp;
    logic isMinus, inputCin;

    // Result means the sum of two operands
    int Result;
    logic Cout;
    adder_32 adder(.sum(Result), .cout(Cout), .a(A), .origin_b(B), .cin(inputCin), .isMinus(isMinus));
    
    ALUOp_t ALUOp;
    assign ALUOp = ALUOp_t'(Op);

    always_comb
    begin
        if(ALUOp == SUB || ALUOp == USUB)
        begin
            // Sub
            isMinus <= 1;
            inputCin <= 0;
        end
        else
        begin
            isMinus <= 0;
            inputCin <= 0;
        end
    end

    always_comb
        begin
            Over = 0;
            case(ALUOp)
            ADD:
                begin
                    Over <= ~(A[31] ^ B[31]) & (A[31] ^ Result[31]);
                    C <= Result;
                end
            UADD:
                begin
                    Over <= 0;
                    C <= Result;
                end
            SUB:
                begin
                    Over <= (A[31] ^ B[31]) & (A[31] ^ Result[31]);
                    C <= Result;
                end
            USUB:
                begin
                    Over <= 0;
                    C <= Result;
                end
            LSHIFT, LSHIFTV:
                C <= B << A[4:0];
            LRSHIFT, LRSHIFTV:
                C <= B >> A[4:0];
            ARSHIFT, ARSHIFTV:
                begin
                    // if(B[31])
                    //     mask <= ~(32'b0) << 6'b100000 - A[4:0];
                    // else
                    //     mask <= 0;
                    // temp <= B >> A[4:0];
                    // C = temp | mask;
                    C <= ($signed(B)) >>> A[4:0];
                end
            AND:
                C <= A & B;
            OR:
                C <= A | B;
            XOR:
                C <= A ^ B;
            NOR:
                C <= ~(A | B);
            SLT:
                C <= $signed(A) < $signed(B);
            SLTU:
                C <= $unsigned(A) < $unsigned(B);
            default:
                C <= 0;
            endcase
        end
    
endmodule
