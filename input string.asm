org 100h

mov dx, msg
mov ah,09h
int 21h

mov dx,input
mov ah,0Ah
int 21h

mov dx,output
mov ah,09h
int 21h

mov ax,0x4c00
int 0x21

msg: db "enter string : $",0Dh,0Ah
output: db "your string: $",0Dh,0Ah
input: db 30, 0Dh,0Ah
