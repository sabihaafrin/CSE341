                
.MODEL SMALL
.STACK 100H
.DATA  

i1 DB "1st input:$ " 
i2 DB "2nd input:$ " 
i3 DB "3rd input:$ "
out1 DB "$"

.CODE 
MAIN PROC 

MOV AX,@DATA 
MOV DS,AX 
              
 MOV AH,9
 LEA DX,i1
 INT 21h
 
 MOV AH,1
 INT 21h
 MOV BL,AL 
 
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
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h 
 
 MOV AH,9
 LEA DX,i3
 INT 21h
  
 MOV AH,1
 INT 21h 
 MOV BH,AL
 
 CMP BL,CL  
  
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h   
  
 JG l2  
 CMP BH,CL  
 JG l1
                  
 MOV AH,9
 LEA DX,out1
 INT 21h
 
 MOV AH,2
 LEA DL,CL 
 INT 21h   
 
 JMP EXIT
 
 l1:
 MOV AH,9
 LEA DX,out1
 INT 21h
 
 MOV AH,2
 LEA DL,BH 
 INT 21h
 
 JMP EXIT       
 
 l2:
 CMP BH,BL
  
 JG l3 
 CMP CL,BH
 JG l4
 
 MOV AH,9
 LEA DX,out1
 INT 21h
 
 MOV AH,2
 LEA DL,BL 
 INT 21h 
 
 JMP EXIT 
 
 l3:
 MOV AH,9
 LEA DX,out1
 INT 21h
 
 MOV AH,2
 LEA DL,BH 
 INT 21h
 
 JMP EXIT
 
 l4:
 MOV AH,9
 LEA DX,out1
 INT 21h
 
 MOV AH,2
 LEA DL,BL 
 INT 21h 

 EXIT:      
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



