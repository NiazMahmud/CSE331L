
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 9
mov dx, offset p1
int 21h

mov ah, 1
int 21h
sub al, '0'
mov ah, 0
mov cx, ax


fact:
mov bx,cx
dec bx
cmp bx, 0
jle print

mul bx
loop fact

print:
mov bl,al
add bl,'0'

mov ah, 9
mov dx, offset p2
int 21h


mov dl,bl

mov ah,2
int 21h

       
ret


p1 db "Enter the number: $ "
p2 db 10,13,"The factorial of the given number is: $ "



