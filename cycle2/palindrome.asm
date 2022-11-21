DATA SEGMENT
    MSG1 DB 10,13,"Enter string: $"
    MSG2 DB 10,13,"Palindrome$"
    MSG3 DB 10,13,"Not a Palindrome$"
    STR1 DB 30,0,30 DUP(0)
    LEN DW 0000H
DATA ENDS
DISPLAY MACRO MSG
    MOV AH,9
    LEA DX,MSG
    INT 21H
ENDM
CODE SEGMENT
ASSUME CS:CODE, DS:DATA, ES:DATA
START:  MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        DISPLAY MSG1
        LEA DX,STR1
        MOV AH,0AH
        INT 21H
        MOV AL,[STR1+1]
        MOV BX,OFFSET LEN
        MOV BYTE PTR[BX],AL
        MOV BX,LEN
        LEA SI,STR1+2
        LEA DI,STR1+1+[BX]
        MOV CX,LEN
CHECK:  MOV AL,[SI]
        CMP AL,[DI]
        JNE NOTPAL 
        INC SI
        DEC DI
        DEC CX
        JNZ CHECK
        DISPLAY MSG2
        JMP FINAL
NOTPAL: DISPLAY MSG3
        JMP FINAL
FINAL:  MOV AH,4CH
        INT 21H
CODE ENDS
END START
