section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf
extern ExitProcess

_start:
    mov rax, 0x5
    mov rbx, 0x9
    mov rcx, 0x2

    ; (a + b) * c
    add rax, rbx
    imul rax, rcx

    sub rsp, 0x28
    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax
    call printf
    add rsp, 0x28

    xor rcx, rcx
    sub rsp, 0x8
    call ExitProcess
