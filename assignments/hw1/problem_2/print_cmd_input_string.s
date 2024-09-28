.intel_syntax noprefix


.section .text
.global _start

newline: .ascii "\n"

_start:
    # Save the base pointer
    push ebp # sub esp, 4
             # mov [esp], ebp
    mov ebp, esp

    # Get argc (number of arguments)
    mov eax, [ebp + 4]  # argc is at [ebp + 4]
    
    # Get argv[1] located at [ebp + 12]
    mov ebx, [ebp + 12]     # argv[0] is located at [ebp + 8]

    # Calculate the length of the string at argv[0]
    xor ecx, ecx           # Reset ECX (used as a counter)

find_length:
    cmp byte ptr [ebx + ecx], 0    # Check if we've reached the null terminator
    je  print_string            # If yes, jump to print_string
    inc ecx                    # Otherwise, increment the counter
    jmp find_length            # Repeat until null terminator is found

print_string:
    # System call to write (syscall number 4)
    mov eax, 4              # Syscall number for write
    mov edx, ecx            # Length of the string (calculated in ECX)
    mov ecx, ebx            # Address of the string (argv[0] in EBX)
    mov ebx, 1              # File descriptor 1 = stdout
    int 0x80                # Trigger the syscall

print_newline:
    # Now print the newline character
    mov eax, 4              # Syscall number for write
    mov ebx, 1              # File descriptor 1 = stdout
    mov ecx, offset newline # Address of the newline character
    mov edx, 1              # Length of the newline character
    int 0x80                # Trigger the syscall

exit_program:
    # Exit the program
    mov eax, 1              # _exit syscall number (1)
    xor ebx, ebx            # Exit status 0
    int 0x80                # Trigger the syscall
