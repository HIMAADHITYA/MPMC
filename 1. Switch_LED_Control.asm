BITS 64
section data
pl db 1
msg on db "LED ON", 10
msg off db "LED OFF, 10
section .text
global start
start:
test byte [p1], 1
jnz LED_OFF
nov eax, 1
mov edi, 1
nov rsi, asg_on
nov edx, 7
syscall
jmp EXIT
LED OFF:
nov eax, 1
nov edi, 1
nov rsi, msg off
που edx, syscall
EXIT:
nov eax, 60
syscall
xor edi, edi
