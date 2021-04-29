
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'

org 100h

print "The highest value among (1,8,7,9,3) is $: "

lea si,arr
mov cl,5

lea si,arr
mov cl,5
mov al,[si]
mov high,al

search:  
    mov al,[si]
    mov bl,[si+1]
    inc si
    dec cl
    cmp al,bl
    jg save

back:
    cmp cl,0
    jnz search
    jmp finish    

save:
    cmp al,high
    jg save2
    jmp back

save2:
    mov high,al
    jmp back
 
finish:
    mov dl,high
    add dl,48
    mov ah,2
    int 21h

ret

arr db 1,8,7,9,3
high db 0


