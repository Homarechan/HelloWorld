; Hello World in Intel 86_64x architecture with nasm

global _start
section .data
message:db 'Hello, World!', 10

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 15
    syscall
    mov rax, 60
    xor rdi, rdi
    syscall
