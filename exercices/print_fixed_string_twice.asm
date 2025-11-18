; Task: Print "Hello!" two times using two separate calls.

section .data
    msg db "Hello!", 13, 10, 0

section .text
global main

extern printf

main:
    lea rcx, [rel msg]

    ; First call
    sub rsp, 0x20
    xor rax, rax
    call printf
    add rsp, 0x20

    lea rcx, [rel msg]
    ; Second call
    sub rsp, 0x20
    xor rax, rax
    call printf
    add rsp, 0x20

    xor rax, rax
    ret
