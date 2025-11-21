section .data
    fmt   db "%d", 13, 10, 0
    array dq 10, 20, 30, 40

section .text
global _start

extern printf
extern ExitProcess

_start:
    lea rax, [rel array]

    sub rsp, 0x28
    lea rcx, [rel fmt]
    mov rdx, [rax]
    xor rax, rax
    call printf
    add rsp, 0x28

    xor rcx, rcx
    call ExitProcess
