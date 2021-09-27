.MODEL SMALL
.STACK 100H
.DATA
A db 'Enter First Initial: $'    ;defining variable
B db 'Enter Second Initial: $'
C db 'Enter Third Initial: $'
.CODE


MAIN PROC
    mov ax,@DATA
    mov ds,ax
    
    mov ah,9    ;store 9 on AH for string
    lea dx,A    ;loading location of A
    int 21h
    
    mov ah,1     ;taking input
    int 21h
    mov bl,al
    
    mov ah,2      ;output
    mov dl,0dh    ;left  most 
    int 21h  
    
    mov dl,0ah     ;new line
    int 21h 
                                 
    mov ax,@DATA
    mov ds,ax
    
    mov ah,9
    lea dx,B       ;loading location of B
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    
    mov ax,@DATA
    mov ds,ax
    
    mov ah,9
    lea dx,C        ;storing location of C
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,0dh       ;next line for char
    int 21h
    mov dl,0ah
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    
    mov dl,bl
    int 21h
    
    
    MAIN ENDP
    END MAIN