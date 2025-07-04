org 0x100

mov bx,0

non:
xor bx,bx

sort:
mov ax,[arr+bx]
cmp ax,[arr+bx+2]
jnc swap
add bx,2
cmp bx,10
jz exit
jnz sort

swap:
cmp bx,10
je non

mov dx,ax
mov ax,[arr+bx+2]
mov [arr+bx+2],dx
mov [arr+bx],ax
add bx,2

jmp non

exit:
mov ax,0x4c00
int 0x21
arr: dw 4,2,3,1,6,5