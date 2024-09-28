.intel_syntax noprefix

.section .text
.global _start

# objdump -d setregid | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'

_start: 
    xor ebx, ebx
    mov bx, 1004 # setlev 1004
    

    xor ecx, ecx
    mov cx, 1004 # setlevflag 1004
    
    # perform syscall for 11 (execve)
    xor eax, eax
    mov    al, 71    # Set eax to 71 (setregid)
    int    0x80      # Trigger interrupt to make the syscall

