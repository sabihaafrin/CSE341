.MODEL SMALL
  
i1 MACRO DIGIT
PUSH AX
PUSH BX
PUSH CX
PUSH DX 

LEA DX,DIGIT
MOV AH,9h
INT 21h 

POP DX
POP CX
POP BX
POP AX
ENDM

.DATA

d1 DB 0ah,0dh,"$" 
d2 DB 0ah,0dh,"$"  

.CODE
MOV AX,@DATA 
MOV DS,AX

MOV AH,01h
INT 21h
sub AL,30h
MOV BL,AL
MOV BH,AL
  
i1 d1
MOV AH,01h
INT 21h
SUB AL,30h
MOV CL,AL 

i1 d2
  
L1:
MOV DL,BL
ADD DL,30h 

i1 d1
MOV AH,02h
INT 21h

ADD BL,BH
DEC CL
JNZ L2
JMP L3
  
L2:
CMP BL,10
JL L1
   
L3:
MOV AH,4ch 
INT 21h 
