
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;z/x*y

X DB 2
Y DB 4
Z DB 6

MOV AL,X
MOV BL,Y
MOV CL,Z

DIV CL
MOV AL,CL
MUL BL


ret




