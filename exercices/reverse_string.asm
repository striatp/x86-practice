; Task: Reverse a 5-character string using a loop

section .data
    fmt     db "%s", 0
    string  db "Hello", 0

section .text
global _start

extern printf
extern ExitProcess

_start:
    mov rsi, string
    mov rdi, string + 4

.reverse_loop:
    cmp rsi, rdi
    jae .done_reverse

    mov al, [rsi]
    mov bl, [rdi]
    mov [rsi], bl
    mov [rdi], al

    inc rsi
    dec rdi

    jmp .reverse_loop

.done_reverse:
    sub rsp, 0x28
    mov rcx, fmt
    mov rdx, string
    call printf
    add rsp, 0x28

    xor rcx, rcx
    sub rsp, 8
    call ExitProcess
