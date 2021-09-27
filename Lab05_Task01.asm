.MODEL SMALL 
  
.STACK 100H 

.DATA

d1 DB 0DH,0AH, "Enter Name: $"
d2 DB 0DH,0AH, "Output: $"
x DB 100 dup(?)

.CODE   

MAIN PROC 
    
START:                   
MOV AX,@DATA
MOV DS,AX 

LEA DX,d1
MOV AH,9
INT 21h

LEA SI,x
MOV AH,1
    
    
INPUT:
INT 21h
MOV BL,AL

CMP AL,0DH
JE PRINT
XOR AL,20h
MOV [SI],AL
INC SI

JMP INPUT

PRINT:
MOV AL,'$'
MOV [si],al

LEA DX,d2
MOV AH,9
INT 21h

LEA DX,x
MOV AH,9
INT 21h

.EXIT
END START 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
   END MAIN 
  


