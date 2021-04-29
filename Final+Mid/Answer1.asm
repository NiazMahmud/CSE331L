
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'

org 100h

print "Enter the input: $ "

mov ah,1
int 21h
mov ah,0
sub al,48

mov cl,al
mov al,num
mov bl,cl
div bl


mul cl

cmp al,num

jz  print_Y
jmp print_N

print_Y:
print "  Yes,32 is a multiple of the input"
jmp finish
    
print_N:
print "  NO,32 is a multiple of the input"    
jmp finish
    

finish:
ret

num db 32




