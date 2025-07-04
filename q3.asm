;QUESTION #3
;Write a program to separate the first 10 natural numbers into even and odd numbers 
;and store them in two different arrays in memory.


org 100h

mov al,[arr]
mov bx,0
mov cx,5

od:
mov al,[arr+bx]
mov [odd+bx],al
add bx,2
loop od

mov bx,0
mov al,[arr+bx]
mov cx,5

eve:
inc bx
mov al,[arr+bx]
dec bx
mov [even+bx],al
add bx,2
loop eve

mov ax,0x4c00
int 0x21

arr: db 1,2,3,4,5,6,7,8,9,10
even: dw 0,0,0,0,0
odd: dw 0,0,0,0,0