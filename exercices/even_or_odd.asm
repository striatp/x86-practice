; Task: Determine if a given integer is even or odd and print the corresponding message.

section .data
    odd  db "Odd!", 13, 10, 0
    even db "Even!", 13, 10, 0

section .text
global main

extern printf

main:
    mov rax, 8
    xor rdx, rdx
    mov rbx, 2
    div rbx

    cmp rdx, 0
    je .even

.odd:
    lea rcx, [rel odd]
    xor rax, rax
    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret

.even:
    lea rcx, [rel even]
    xor rax, rax
    sub rsp, 32
    call printf
    add rsp, 32

    xor rax, rax
    ret
