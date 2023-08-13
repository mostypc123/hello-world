section .text
    global _start

_start:
    ; Necháme počítač zpozdit na chvíli
    mov ecx, 0
.loop:
    add ecx, 1
    cmp ecx, 1000000
    jl .loop

    ; Teď vypíšeme zprávu na standardní výstup
    mov eax, 4
    mov ebx, 1
    lea ecx, [message]
    mov edx, message_len
    int 0x80

    ; Teď necháme počítač zase chvíli zpozdit
    mov ecx, 0
.loop2:
    add ecx, 1
    cmp ecx, 1000000
    jl .loop2

    ; Teď skončíme program
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    message db 'hello world', 0
    message_len equ $ - message
;comments are in chzech lang
