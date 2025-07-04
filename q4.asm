;QUESTION #4
;Generate the following sequence using assembly language:
;01, 03, 09, 1B, 51


org 100h

mov ax,1
mov bx,3
mov cx,5

seq:
mul bx
cmp ax,51h
loopnz seq

mov ax,0x4c00
int 0x21
