; Task: Implement a loop that prints numbers from 1 to 5 sequentially.

section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf

_start:
    mov rcx, -0x5

    jmp _loop_start

_loop_start:
    mov rbx, rcx

    lea rcx, [rel fmt]
    mov rdx, rbx
    add rdx, 6
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    mov rcx, rbx

    inc rcx
    jnz _loop_start

_return:
    xor rax, rax
    ret
