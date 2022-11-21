DATA SEGMENT
        MSG1 DB 10,13,"Enter String: $"
        MSG2 DB 10,13,"Number of Vowels: $"
        STR1 DB 30,0,30 DUP(0)
DATA ENDS
DISPLAY MACRO MSG
        MOV AH,09H
        LEA DX,MSG
        INT 21H
ENDM
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:  MOV AX,DATA
        MOV DS,AX
        DISPLAY MSG1
        LEA DX,STR1
        MOV AH,0AH
        INT 21H
        MOV CH,00H 
        MOV CL,[STR1+1]
        LEA SI,STR1+2
        MOV BL,00H
LOOP1:  MOV AL,[SI]
        CMP AL,0DH
        JZ FINAL
        CMP AL,'A'
        JZ COUNT
        CMP AL,'E'
        JZ COUNT
        CMP AL,'I'
        JZ COUNT
        CMP AL,'O'
        JZ COUNT
        CMP AL,'U'
        JZ COUNT
        CMP AL,'a'
        JZ COUNT
        CMP AL,'e'
        JZ COUNT
        CMP AL,'i'
        JZ COUNT
        CMP AL,'o'
        JZ COUNT
        CMP AL,'u'
        JZ COUNT
        INC SI
        DEC CX
        JMP LOOP1
COUNT:  INC BL
        MOV AL,BL
        DAA
        MOV BL,AL
        INC SI
        DEC CX
        JMP LOOP1
FINAL:  MOV BH,BL
        DISPLAY MSG2
        AND BL,0F0H
        MOV CL,04H
        SHR BL,CL
        OR BL,30H
        MOV DL,BL
        MOV AH,02H
        INT 21H
        AND BH,0FH
        OR BH,30H
        MOV DL,BH
        MOV AH,02H
        INT 21H
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
