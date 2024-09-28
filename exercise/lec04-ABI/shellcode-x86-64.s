.intel_syntax noprefix
.text
.globl _start

_start:
    mov rax, 59
    lea rdi, [rip + .shell]
    push 0
    push rdi
    mov rsi, rsp
    mov rdx, 0
    syscall

.shell:
    .string "/bin/sh"

