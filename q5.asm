;QUESTION #5
;Write an assembly language program to multiply two 8-bit numbers such that the result causes an overflow.

org 100h

mov al,255
mov bl,2
mul bl

mov ax,0x4c00
int 0x21