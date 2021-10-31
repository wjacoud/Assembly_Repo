.8086
.model small
.stack 2048

dseg segment para public 'data'
     ; VARIAVEIS...
     VECTOR1 BYTE ‘Ca,0
     VECTOR2 BYTE 21 DUP(0)
     
dseg ends

cseg segment para public 'code'
     assume cs:cseg, ds:dseg
main proc
	mov ax,dseg
	mov ds,ax

	XOR AX,AX
	XOR SI,SI
CICLO:
	MOV AL,VECTOR1[SI]
	MOV VECTOR2[SI],AL
	INC SI
	CMP AL,0     
	JNE CICLO

     mov al, o
     add di, 2
     int 21h

main endp
cseg ends

end main
