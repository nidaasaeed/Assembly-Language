;DYNAMIC LENGTH + STRING INPUT
;Check if a given string is a palindrome. 
;If it is, exit the program; otherwise, reverse the string. 
;Ensure that a Direction Flag (DF) is used for traversal.

org 100h

mov bx,-1
mov si,s
len:
lodsb
inc bx
cmp al,0
jne len

dec bx

mov dx,bx
mov di,s
lea si,[s+bx]
std

mov bx,0

pal:
cmp bx,dx
je exit
mov ah,[s+bx]
lodsb
inc bx
cmp al,ah
je pal
jne clr

clr:
cld
mov bx,dx
mov si,s
mov di,d
lea di,[d+bx+1]

mov bx,0
inc dx

rev:
std
lodsb
stosb
cld
inc bx
lea si,[s+bx]
cmp bx,dx
je exit
jmp rev

exit:
cld
mov ax,0x4c00
int 0x21

s: db "rotator",0
d: db 0