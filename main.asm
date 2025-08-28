section .data
    x1      dq 1
    x2      dq 0
    result  dq 0

section .text
    global _start

_start:
    mov rax, [x1]
    or  rax, [x2]
    cmp rax, 0
    je .zero
    mov qword [result], 1
    jmp .exit

.zero:
    mov qword [result], 0

.exit:
    mov rax, 60
    xor rdi, rdi
    syscall
