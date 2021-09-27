.MODEL SMALL
.STACK 100H
.DATA

d1 DB "Enter Three numbers: $"
d2 DB "Largest Number: $"
x DB 3 DUP(?)
      
.CODE
MAIN PROC   
    
MOV AX, @DATA
MOV DS,AX 
         
LEA DX,d1
MOV AH,9
INT 21h
    
LEA SI,x
MOV CX,3
MOV AH,2
   
input:
MOV AH,1
INT 21h
MOV [SI],AL
INC SI
LOOP input
    
MOV AH,2
MOV DL,0DH
INT 21h
MOV DL,0AH
INT 21h
    
LEA DX,d2
MOV AH,9
INT 21h
  
MOV CX,3
MOV AH,2 
LEA SI,x
    
task1:
MOV BL,[SI]
INC SI
MOV CL,[SI]
CMP BL,CL
JGE  task2
LOOP task1
    
LEA SI,x
task2:
INC SI
MOV DL,[SI]
cmp BL, DL
JGE print
    
print:
MOV AH, 2
MOV DL,BL
INT 21H
JMP END
    
END:    
MOV AX, 4C00H
INT 21H
    MAIN ENDP
END MAIN