DATA SEGMENT
    MSG1 DB 10,13,"ENTER STRING: $"
    MSG2 DB 10,13,"ENTER SUBSTRING TO BE REPLACED: $"
    MSG3 DB 10,13,"REPLACE WITH: $"
    MSG4 DB 10,13,"NEW STRING: $"
    STR1 DB 40,0,40 DUP(0)
    STR2 DB 40,0,40 DUP(0)
    STR3 DB 40,0,40 DUP(0)
    LEN1 DW 0000H
    LEN2 DW 0000H
    LEN3 DW 0000H
DATA ENDS
DISPLAY MACRO MSG
    MOV AH,09H
    LEA DX,MSG
    INT 21H
ENDM
CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:DATA
START:  MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        DISPLAY MSG1
        LEA DX,STR1
        MOV AH,0AH
        INT 21H
        MOV AL,[STR1+1]
        LEA BX,LEN1
        MOV BYTE PTR[BX],AL
        DISPLAY MSG2
        LEA DX,STR2
        MOV AH,0AH
        INT 21H
        MOV AL,[STR2+1]
        LEA BX,LEN2
        MOV BYTE PTR[BX],AL
        DISPLAY MSG3
        LEA DX,STR3
        MOV AH,0AH
        INT 21H
        MOV AL,[STR3+1]
        LEA BX,LEN3
        MOV BYTE PTR[BX],AL
        LEA SI,STR1+2
        LEA DI,STR2+2
        DISPLAY MSG4
        MOV CX,LEN1
        MOV BX,LEN2
        PUSH SI
        PUSH CX
CHECK:  MOV AL,[SI]
        CMP AL,[DI]
        JE PUPO
        POP CX  
        POP SI
        LEA DI,STR2+2
        MOV BX,LEN2
        MOV DL,[SI]
        MOV AH,02H
        INT 21H
        INC SI
        DEC CX
        PUSH SI
        PUSH CX
        CMP CX,0000H
        JNZ CHECK
        JMP FINAL
PUPO:   DEC BX
        PUSH SI
        PUSH CX
        MOV AX,LEN2
        CMP BX,AX
        JNZ LOOP1
LOOP1:  INC SI
        INC DI
        CMP BX,0000H
        JZ PRINT 
        DEC CX
        JNZ CHECK
PRINT:  LEA DI,STR3+2
        MOV BX,LEN3
PRINT1: MOV DL,[DI]
        MOV AH,02H
        INT 21H
        INC DI
        DEC BX
        JNZ PRINT1
        LEA DI,STR2
        MOV BX,LEN2
        PUSH SI
        PUSH CX
        JMP CHECK
FINAL:  MOV AH,4CH 
        INT 21H
CODE ENDS
END START
