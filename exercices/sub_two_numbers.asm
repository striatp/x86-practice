; Task: Subtract one integer from another and print the resulting value.

section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf

_start:
    mov rcx, 0x2
    mov rdx, 0x5

    sub rsp, 32
    call _sub_two_numbers
    add rsp, 32

    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

_sub_two_numbers:
    mov rax, rcx
    sub rax, rdx
    ret
