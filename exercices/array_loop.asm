section .data
    fmt    db "%d", 13, 10, 0
    array  dq 10, 20, 30, 40

    array_size equ ($ - array) / 8

section .text
global _start

extern printf
extern ExitProcess

_start:
    xor rbx, rbx

.loop_start:
    cmp rbx, array_size
    jge .end_program

    mov r8, rcx

    lea rax, [rel array]
    lea rcx, [rel fmt]
    mov rdx, [rax + rbx*8]
    xor rax, rax
    sub rsp, 0x28
    call printf
    add rsp, 0x28

    inc rbx
    jmp .loop_start

.end_program:
    xor rcx, rcx
    sub rsp, 0x8
    call ExitProcess
