; Task: Store N in a register and print "Hello" exactly N times using a loop.

section .data
    msg db "Hello!", 13, 10, 0

section .text
global _start

extern printf
extern ExitProcess

_start:
    mov rax, 0x5

.loop_start:
    cmp rax, 0x0
    je .end

    mov rbx, rax

    lea rcx, [rel msg]
    xor rax, rax
    call printf

    mov rax, rbx

    dec rax
    jmp .loop_start

.end:
    xor rcx, rcx
    call ExitProcess
