; Task: Determine the length of a string.

section .data
    msg db "Hello, world! This string is quite long", 13, 10, 0
    fmt db "%d", 13, 10, 0

section .text
global _start:

extern printf

_start:
    lea rcx, [rel msg]
    xor rax, rax

.length:
    cmp byte [rcx + rax], 0
    je .end
    inc rax
    jmp .length

.end:
    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret
