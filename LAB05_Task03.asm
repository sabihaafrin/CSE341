.MODEL SMALL   
.STACK 100H 
.DATA 

a DB 5 dup(?)
b DW $-a

.CODE 
MAIN PROC 

MOV AX,DATA
MOV DS,AX  

MOV SI,0

input:
CMP SI,5
JE task
MOV AH,1     
INT 21h      
SUB AL,30h

MOV a[SI],AL 
ADD SI,1
LOOP input

task:
MOV SI,0

MOV DL,0AH   
MOV AH,2
INT 21h 
MOV DL,0DH
MOV AH,2
INT 21h

MOV CX,b-1
MOV SI,0

task1:
LEA SI,a
MOV bx,0 

task2:
INC bx
MOV al,a[SI]
INC si
CMP al,a[SI]
JB s        

XCHG AL,a[SI]
MOV a[SI-1],AL 

s:
CMP BX,CX
JL  task2
LOOP task1 

MOV SI,0 

print:
CMP SI,5h
JE end  

MOV DL,a[SI] 
ADD DL,30h  
MOV AH,2
INT 21h
ADD SI,1

LOOP print

end: 
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  