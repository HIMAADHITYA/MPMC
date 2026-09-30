BITS 64
section .data
p1 db 0
onmsg db "LED ON",10
offmsg db "LED OFF",10
section .text
global _start
_start:
    clc
    mov r8,5
blink:
    jc off
on:
    mov byte [p1],5
    mov eax,1
    mov edi,1
    mov rsi,onmsg
    mov edx,7
    syscall
    call delay
    stc
    jmp next
off:
    mov byte [p1],0
    mov eax,1
    mov edi,1
    mov rsi,offmsg
    mov edx,8
    syscall
    call delay
    clc
next:
    dec r8
    jnz blink
    mov eax,60
    xor edi,edi
    syscall
delay:
    mov rcx,10000000
dloop:
    dec rcx
    jnz dloop
    ret
