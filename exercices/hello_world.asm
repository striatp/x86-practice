; Task: Write a program that outputs "Hello, World!" to the console using a system or library call.

section .data
    hello_msg db "Hello, world!", 13, 10, 0

section .text
global _start

extern printf

_start:
    lea rcx, [rel hello_msg]
    xor rax, rax

    sub rsp, 32
    call printf
    sub rsp, 32

    xor rax, rax
    ret
