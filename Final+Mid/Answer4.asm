
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr

search:
    mov bl,[si]
    inc si

    cmp bl,"c"
    jz  check_a

check_end:
    cmp bl,"$"
    jnz search    

ret

check_a:
    mov bl,[si]
    inc si   
                 
    cmp bl,"a"
    jz  check_r 
    jmp check_end
    
check_r:
    mov bl,[si]
    inc si   
                 
    cmp bl,"r"
    jz  counter 
    jmp check_end

counter:
    inc count
    jmp check_end

ret

arr   db "Super cars are better racecar than muscle cars$"
count db 0
     