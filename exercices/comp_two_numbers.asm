; Task: Compare two integers and display which one is greater.

section .data
    fmt     db "%d", 13, 10, 0
    equal   db "Both are equal", 13, 10, 0
    greater db "%d is greater than %d", 13, 10, 0

section .text
global _start

extern printf

_start:
    mov rax, 0x6
    mov rbx, 0x6

    cmp rax, rbx
    jg _greater
    jl _less
    je _equal

_equal:
    lea rcx, [rel equal]
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

_greater:
    lea rcx, [rel greater]
    mov rdx, rax
    mov r8,  rbx
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

_less:
    lea rcx, [rel greater]
    mov rdx, rbx
    mov r8,  rax
    xor rax, rax

    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret
