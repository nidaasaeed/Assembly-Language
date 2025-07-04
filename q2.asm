;QUESTION #2
;Create a program that stores the sequence 2, 4, 6, 8, 10 in an array of five elements.


org 100h

mov ax,2
mov bx,0
mov cx,5

sum:
mov [arr+bx],ax
add ax,2 ;4
add bx,2

loop sum

mov ax,0x4c00
int 0x21

arr: dw 0,0,0,0,0