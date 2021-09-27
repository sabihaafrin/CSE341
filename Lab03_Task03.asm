
.MODEL SMALL
.STACK 100H
.DATA  

i1 DB "enter a number from 1-7 $"

sunday DB "Sunday$"
monday DB "Monday$"
tuesday DB "Tuesday$"
wednesday DB "Wednesday$"
thursday DB "Thursday$"
friday DB "Friday$"
saturday DB "Saturday$"

d1 DB "Weekends$"
d2 DB "Weekdays$" 

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
 
 sunday1: 
 CMP BL,'1'
 
 JG monday1
 MOV AH,9
 LEA DX,sunday
 INT 21h
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h  
 
 MOV AH,9
 LEA DX,d1
 INT 21h
 
 jmp EXIT
 
 monday1:
 CMP BL,'2'

 JG tuesday1
 MOV AH,9  
 LEA DX,monday
 INT 21h
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h   
 
 MOV AH,9
 LEA DX,d2
 INT 21h
 
 JMP EXIT       
 
 tuesday1:
 CMP BL,'3'
 
 JG wednesday1
 MOV AH,9
 LEA DX,tuesday
 INT 21h  
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h 
 
 MOV AH,9
 LEA DX,d2
 INT 21h
 
 JMP EXIT

 wednesday1:
 CMP BL,'4'
 
 JG thursday1
 MOV AH,9
 LEA DX,wednesday
 INT 21h 
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h  
 
 MOV AH,9
 LEA DX,d2
 INT 21h
 
 JMP EXIT
  
 thursday1:
 CMP bl,'5'
 
 JG friday1  
 MOV AH,9
 LEA DX,thursday
 INT 21h 
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV dl,0AH
 INT 21h  
 
 MOV AH,9
 LEA DX,d2
 INT 21h
 JMP EXIT 
 
 friday1: 
 CMP BL,'6'
  
 JG saturday1 
 MOV AH,9
 LEA DX,friday
 INT 21h 
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h   
 
 MOV AH,9
 LEA DX,d1
 INT 21h
 
 JMP EXIT
 
 saturday1:
 CMP BL,'7'

 MOV AH,9
 LEA DX,saturday
 INT 21h
 
 MOV AH,2      
 MOV DL,0DH
 INT 21h
 MOV DL,0AH
 INT 21h  
 
 MOV AH,9
 LEA DX, d1
 INT 21h
 
 JMP EXIT
   
 EXIT: 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  







