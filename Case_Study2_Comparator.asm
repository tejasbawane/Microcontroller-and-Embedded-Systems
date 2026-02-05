ORG 0000H

        MOV   50H, #08H   
        MOV   51H, #05H  

        MOV   R0, 50H
        MOV   R1, 51H

COMPARE:
        MOV   A, R0
        JZ    A_ZERO

        MOV   A, R1
        JZ    B_ZERO

        DEC   R0
        DEC   R1
        SJMP  COMPARE

A_ZERO:
        MOV   A, R1
        JZ    EQUAL
        MOV   52H, #0FFH
        SJMP  DONE

B_ZERO:
        MOV   A, R0
        JZ    EQUAL
        MOV   52H, #01H
        SJMP  DONE

EQUAL:
        MOV   52H, #00H

DONE:
        NOP
END
