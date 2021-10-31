; TRABALHO PRATICO - CODIGO XXXX
; Aluno 1:
; Aluno 2:
; Aluno 3:

.8086
.model small
.stack 2048

dseg segment para public 'data'
    
	; VARIAVEIS...

dseg ends

cseg segment para public 'code'
     assume cs:cseg, ds:dseg
main proc
     mov ax, dseg
     mov ds, ax

	 
     mov ax, 0B800h
	 
     mov es, ax
	 

     ; CODIGO...

  
     mov ah, 4ch
     int 21h
main endp
cseg ends

end main