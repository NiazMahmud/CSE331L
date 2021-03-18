
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'


org 100h
arr DB 5 DUP (0)
lea si, arr

mov cx, 5 


mov ah,9
mov dx,offset msg1

int 21h

take_input:
mov ah,1
int 21h
sub al,48
mov [si],al
inc si
loop take_input 

 
print 'Completed'

ret 

arr db 0
msg1 db "input; $  "





