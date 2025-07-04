;QUESTION #1
;You are tasked with writing an assembly language program to find the multiplication 
;of all numbers in a given list of 5 numbers. The numbers are stored in an array starting 
;at memory location NUMBERS, and the result should be stored in the variable named SUM.


org 100h

mov ax,[NUMBERS]
mov bx,2
mov cx,4
mov dx,[NUMBERS+bx]

mult:
mul dx
mov dx,ax
add bx,2
mov ax, [NUMBERS+bx]
loop mult

mov [SUM],dx

mov ax,0X4c00
int 0x21

NUMBERS: dw 1,2,3,4,5
SUM: dw 0
