    
.MODEL SMALL 
.STACK 100H
.DATA  

i1 DB "1st input:$ " 
i2 DB "2nd input:$ " 

output1 DB "FizzBuzz$"
output2 DB "Not divisible$" 

x DB 3 
y DB 5

.CODE 
MAIN PROC 

MOV AX,@DATA 
MOV DS,AX  
            
 MOV AH,9
 LEA DX,i1   ;address of i1 in dx
 INT 21h
 
 MOV AH,1
 INT 21h
 MOV BL,AL
 SUB BL,30h 
 
 MOV AH,2     
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h 
 
 MOV AH,9
 LEA DX,i2
 INT 21h
 
 MOV AH,1
 INT 21h
 MOV CL,AL
 SUB CL,30h  
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h 
 
 MOV AL,BL
 MUL CL  
 ADD AX,6h
 MOV BX,AX

 DIV x       ;divisble by 3
 SUB AX,2h
 
 CMP AH,0
 JE L1
 JG L3
 
 L1:
 MOV AH,9
 LEA DX,output1
 INT 21h 
 
 JMP EXIT
 
 L3:
 MOV AX,BX
 DIV y        ;divisble by 5
 SUB AX,31h
 
 CMP AH,0
 JE L1
 JG L2
 
 L2:
 MOV AH,9
 LEA DX,output2
 INT 21h
 
 JMP EXIT 
  
 EXIT:       
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  



