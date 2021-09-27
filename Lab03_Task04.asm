   
.MODEL SMALL 
.STACK 100H
.DATA  

x DB "1st side:$" 
y DB "2nd side:$" 
z DB "3rd side:$"

output1 DB "Y$"
output2 DB "N$" 

.CODE 
MAIN PROC 

MOV AX,@DATA 
MOV DS,AX 
  
 MOV AH,9
 LEA DX,x
 INT 21h
 
 MOV AH,1
 INT 21h
 MOV BH,AL
 SUB BH,30h 
 
 MOV AH,2     
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h 
 
 MOV AH,9
 LEA DX,y
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
 LEA DX,z
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
 
 MOV AL,BH
 ADD AL,BL
 CMP AL,CL
 JLE L1
 
 ADD BH,CL
 CMP BH,BL
 JLE L1
 
 ADD BL,CL
 CMP BL,BH
 JLE L1
  
L2:
 MOV AH,9
 LEA DX,output1
 INT 21h 
 
 JMP EXIT
 
 L1:
 MOV AH,9
 LEA DX,output2
 INT 21h 
  
 EXIT:    
                  
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  



