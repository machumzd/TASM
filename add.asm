DATA SEGMENT
	MSG1 DB 'ENTER THE FIRST NUMBER: $'
	MSG2 DB 0AH,0DH,'ENTER THE SECOND NUMBER: $'
	MSG3 DB 0AH,0DH,'THE SUM IS = $'
	NUM1 DB ?
	NUM2 DB ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:          MOV AX,DATA
	      MOV DS,AX
	      
	      LEA DX,MSG1
	      MOV AH,09H
	      INT 21H
	      
	      MOV AH,01H
	      INT 21H
	      SUB AL,30H
	      MOV NUM1,AL
	      
	      LEA DX,MSG2
	      MOV AH,09H
	      INT 21H
	      
	      MOV AH,01H
	      INT 21H
	      SUB AL,30H
	      MOV NUM2,AL
	      
	      LEA DX,MSG3
	      MOV AH,09H
	      INT 21H
	      
	      MOV AL,NUM1
	      MOV BL,NUM2
	      ADD AL,BL
	      
	      ADD AL,30H
	      MOV DL,AL
	      MOV AH,02H
	      INT 21H
	      
	      MOV AH,4CH
	      INT 21H
CODE ENDS	
END START      
