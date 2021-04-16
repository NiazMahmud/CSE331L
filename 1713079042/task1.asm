
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 9
mov dx, offset p1
int 21h

mov ah, 9
mov dx, offset str
int 21h

lea si, str
mov bl, 0

count:
 cmp [si], "$" 
 jz print
 
 cmp [si], "a" 
 jz skip  
 cmp [si], "e" 
 jz skip
 cmp [si], "i" 
 jz skip
 cmp [si], "o" 
 jz skip
 cmp [si], "u" 
 jz skip
 cmp [si], "A" 
 jz skip
 cmp [si], "E" 
 jz skip
 cmp [si], "I" 
 jz skip
 cmp [si], "O" 
 jz skip
 cmp [si], "U" 
 jz skip
 
 inc bl
 inc si
loop count

skip:
 inc si
jmp count

print:
mov ah, 9  
mov dx, offset p2
int 21h

mov dx, 0
mov dl, bl
add dl,'0'

mov ah, 2
int 21h

ret

str db "habijabi$"

p1 db "Given string is:$"
p2 db 10,13,"Total number of consonants are: $"


