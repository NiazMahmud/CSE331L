
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

lea si,str 
lea di,arr

add di,6  
            
copy:
    mov al,[si]
    mov [di],al
    inc si
    dec di 
    cmp [si],'$'
    jnz copy

lea si,str
lea di,arr
check:
    mov bl,[si]
    mov bh,[di]
    cmp bl,bh
    jnz Not_Palindrome
    
Palindrome:
   print  "Palindrome"
   jmp finish

Not_Palindrome:
    print "Not Palindrome"
    

finish:
ret

str db "racecar$"
arr db 7 dup (0)


