.intel_syntax noprefix
.text
.globl _start

_start:
    xor eax, eax                # Clear eax
    push eax                    # Push NULL (terminator for the string)

    # Push the "/bin/sh" string in reverse order
    push 0x68732f2f              # Push "//sh"
    push 0x6e69622f              # Push "/bin"

    # Set up the execve arguments
    mov ebx, esp                 # ebx = pointer to "/bin/sh"
    xor ecx, ecx                 # ecx = NULL (argv)
    xor edx, edx                 # edx = NULL (envp)

    # Call execve
    mov al, 0xb                  # eax = execve syscall number (11)
    int 0x80                     # Trigger the syscall

# The program will never reach here because execve replaces the current process.

