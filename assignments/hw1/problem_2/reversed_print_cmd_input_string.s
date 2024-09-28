.intel_syntax noprefix

.section .data
newline: .ascii "\n"

.section .text
.global _start

_start:
    push ebp
    mov ebp, esp

    # save ebp+4 (argc value) to eax
    mov eax, [ebp + 4]
    
    # save ebp+4 (argv[1] value) to esi
    mov esi, [ebp + 12]

    # reset ecx, used as store string length
    xor ecx, ecx

# derive the string length count
find_length:
    # check if null terminator is reached
    cmp byte ptr [esi + ecx], 0
    je  reverse_string
    # increment ecx, string length counter
    inc ecx
    jmp find_length

reverse_string:
    # save current reversed index...
    # of string to edi
    dec ecx
    mov edi, ecx

reverse_print_loop:
    # print each characters in reversed...
    # order by decrementing edi (char index)
    # print newline when edi (char index) is -1
    cmp edi, -1
    jl print_newline

    # write each character
    mov al, byte ptr [esi + edi]
    mov [esp-1], al
    # sycall for write which is 4
    mov eax, 4
    # file decriptor 1 is stdout
    mov ebx, 1
    lea ecx, [esp-1]
    # to write 1 byte (single char)
    mov edx, 1
    int 0x80

    # move to next reversed char
    dec edi
    jmp reverse_print_loop

print_newline:
    # print the newline character
    # syscall to write, 4
    mov eax, 4
    # file descripter stdout, 1
    mov ebx, 1
    mov ecx, offset newline
    mov edx, 1
    int 0x80

exit_program:
    # Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
