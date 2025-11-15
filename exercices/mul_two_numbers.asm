; Task: Multiply two integers and output the product.

section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf

_start:
    mov rcx, 0x5
    mov rdx, 0x4
    call _mul_two_numbers

    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

_mul_two_numbers:
    mov rax, rcx
    mul rdx
    ret
