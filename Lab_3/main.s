.equ a, 0x800
.equ b, 0x802
.equ c, 0x804
.equ d, 0x806
.equ e, 0x808
.text
.global __reset
    __reset:
    ; e = ( 100 - a ) / ( 100 - b ) * (c + d) - 4321
    nop
    mov #60, W0
    mov W0, a
    mov #99, W0
    mov W0, b
    mov #50, W0
    mov W0, c
    mov #60, W0
    mov W0, d
    
    mov #100, W2
    mov a, W0
    sub.b W2, W0, W3     ;1 W3
    mov b, W0
    sub W2, W0, W4     ;2 W4
    mov c, W0
    mov d, W1
    add W0, W1, W5      ;3 W5
    repeat #17
	div.s W3, W4     ;4 W0
    mul.ss W0, W5, W4 ;5 W4
    mov #0x10E1, W0
    sub W4, W0, W2 ;6 W2
    mov W2, e    
.end
