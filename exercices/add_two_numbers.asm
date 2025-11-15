; Task: Calculate the sum of two integers stored in registers and display the result.

section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf

_start:
    mov rcx, 0x2
    mov rdx, 0x5
    call _add_two_numbers

    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

_add_two_numbers:
    mov rax, rcx
    add rax, rdx
    ret
