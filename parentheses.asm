;Write an assembly language program to check whether a given string of parentheses is balanced or not. 
;The program should output a specific message ("Balanced" or "Unbalanced") based on the result. 
;Assume the input string is stored in memory.

org 100h

mov si, input      
xor cx, cx      

balanced:
lodsb           
cmp al, '('
je pushh
cmp al, ')'
je check

cmp al, 'a'
jl next_check     
cmp al, 'z'
jle ignore

next_check:
cmp al, 'A'
jl next_check2
cmp al, 'Z'
jle ignore

next_check2:
cmp al, '0'
jl next_check3
cmp al, '9'
jle ignore

next_check3:
cmp al, '+'
je ignore
cmp al, '-'
je ignore
cmp al, '*'
je ignore
cmp al, '/'
je ignore


cmp al, 0      
jne errexit     
je noerrexit

ignore:
jmp balanced

pushh:
push ax         
inc cx          
jmp balanced

check:
cmp cx, 0       
je errexit
pop bx  
dec cx          
jmp balanced

errexit:
mov dx, er
call print
jmp exit

noerrexit:
cmp cx, 0       
jne errexit
mov dx, noer
call print
jmp exit

print:
mov ah, 09h
int 21h
ret

exit:
mov ax, 4c00h
int 21h

input db '((820nMISx)()',0

er   db 'The parentheses are NOT balanced.$'
noer db 'The parentheses are balanced.$'