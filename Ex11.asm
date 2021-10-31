.8086
.model small
.stack 2048

dseg segment para public 'data'
     ; VARIAVEIS...
     OLDVECTOR BYTE 2h,4h,8h,10h,20h,40h
     NUMELEM BYTE 6H
     NEWVECTOR WORD 6 dup(?)
dseg ends

cseg segment para public 'code'
     assume cs:cseg, ds:dseg
main proc
     mov ax, dseg
     mov ds, ax

     ; CODIGO...

     XOR SI, SI
     XOR DI, DI
     XOR CH, CH
     MOV CL, NUMELEM
CICLO:
     XOR AH, AH
     MOV AL, OLDVECTOR[SI]
     MOV BL, 3                  ; PODE SER FORA DO CICLO
     MUL BL                     ; MULTIPLICA
     MOV NEWVECTOR[DI], AX
     INC SI
     ADD DI, 2
     
     LOOP CICLO

     mov al, o
     add di, 2
     int 21h

main endp
cseg ends

end main


BIZUUUU CBW CONVERTE AL PARA AX (8 PARA 16 BITS)