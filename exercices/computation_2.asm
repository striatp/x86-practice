section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf
extern ExitProcess

_start:
    mov rax, 0x5
    mov rbx, 0x6
    mov rcx, 0x8
    mov rdx, 0x4

    ; (a - b) * (c + d)
    sub rax, rbx
    add rcx, rdx
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
