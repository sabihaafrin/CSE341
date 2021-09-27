
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;A=B+(C-A)  
   
A DB 2
B DB 3
C DB 4

MOV AL,A
MOV BL,B
MOV CL,C  

SUB CL,AL  
MOV DL,CL ;DL=2 
ADD BL,DL ;B+(C-A)
MOV AL,BL 


ret




