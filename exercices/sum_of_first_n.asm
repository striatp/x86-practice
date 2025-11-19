; Task: Use a loop to calculate and print the sum of the first N positive integers.

section .data
    fmt db "%d", 13, 10, 0

section .text
global _start

extern printf
extern ExitProcess

_start:
    xor rax, rax
    mov rbx, 0x5
    xor rcx, rcx

.loop_start:
    cmp rcx, rbx
    jge .end

    add rax, rcx
    inc rcx

    jmp .loop_start

.end:
    lea rcx, [rel fmt]
    mov rdx, rax
    xor rax, rax

    sub rsp, 0x20
    call printf
    add rsp, 0x20

    xor rcx, rcx
    call ExitProcess
