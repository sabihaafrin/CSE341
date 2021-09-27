 .MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 
 MAIN PROC
    mov ah,1   ;input a char
    int 21h
    
    mov bl,al
    int 21h
    
    sub bl,20h
    
    mov ah,2     ;new line for output
    mov dl,0dh
    int 21h 
    
    mov dl,0ah
    int 21h
    
    mov dl,bl    ;display char
    int 21h
    
 MAIN ENDP
 END MAIN
