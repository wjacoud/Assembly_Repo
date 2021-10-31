; TRABALHO PRATICO - CODIGO XXXX
; Aluno 1:
; Aluno 2:
; Aluno 3:

.8086
.model small
.stack 2048

dseg segment para public 'data'
	lin byte 2    ; VARIAVEIS...
	col byte 3
	alt byte 7
	larg byte 5
dseg ends

cseg segment para public 'code'
	assume cs:cseg, ds:dseg
main proc
	mov ax, dseg
	mov ds, ax
	mov ax, 0B800h
	mov es, ax
	
	mov al, lin			;iniciar num local do ecra (linha/coluna)
	mov bl, 160
	mul bl
	mov di, ax
	
	mov al, col
	mov bl, 2
	mul bl
	add di, ax

	mov al, larg
	mov bl, 2
	mul bl
	mov si; ax
	add si, di

	mov al, alt
	mov bl, 2
	div bl

	mov bh, 01110100b
	mov bl, ’+’ 	
	
	mov cx, al
ciclo1:
	mov es:[di], bx
	mov es:[si], bx
  
	mov ah, 4ch
	int 21h
main endp
cseg ends

end main