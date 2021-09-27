.MODEL SMALL
.STACK 100H
.DATA
A db 'ENTER A HEX DIGIT:$'
B db 'IN DECIMAL IT IS $'
.CODE


MAIN PROC 
    
    mov ax,@DATA
    mov ds,ax
    
    mov ah,9
    lea dx,A
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al     
    
    sub bl, 17d
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,B
    int 21h
    
    mov ah,2
    mov dl,31h
    int 21h
    mov dl,bl
    int 21h
    
    
    MAIN ENDP
END MAIN