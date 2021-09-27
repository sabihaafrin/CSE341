.MODEL SMALL
.STACK 100H
.DATA    
x db "The result is$"  
.CODE 

MAIN PROC
   
mov ax,@DATA
mov ds,ax
     
mov ah,1  ;input
int 21h   
mov bl,al
sub al,30h
sub bl,30h
mul bl
add al,30h
mov bl,al
     
mov ah,2   ;output
mov dl,0dh
int 21h
mov dl,0ah
int 21h
lea dx,x

mov ah,9  ;string
int 21h  

mov ah,2
mov dl,0dh ;next line
int 21h
mov dl,0ah
int 21h
mov dl, bl  
int 21H
    
mov ax,4c00h
int 21h 

MAIN ENDP
END MAIN