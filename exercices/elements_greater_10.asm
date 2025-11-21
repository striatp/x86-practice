section .data
    fmt    db "%d", 13, 10, 0
    array  dq 4, 8, 30, 40, 12

    array_size equ ($ - array) / 8

section .text
global _start

extern printf
extern ExitProcess

_start:
    xor rbx, rbx
    lea rsi, [rel array]

.loop_start:
    cmp rbx, array_size
    jge .end_program

    mov rax, [rsi + rbx*8]
    cmp rax, 10
    jl .skip

.print:
    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax
    sub rsp, 32
    call printf
    add rsp, 32

.skip:
    inc rbx
    jmp .loop_start

.end_program:
    xor rcx, rcx
    sub rsp, 8
    call ExitProcess

