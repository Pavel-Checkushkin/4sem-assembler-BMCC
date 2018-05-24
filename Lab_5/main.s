.equ a, 0x804
.equ b, 0x806
.equ c, 0x808
.equ d, 0x80A
.equ e, 0x80C
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

    mov c, W2
    mov d, W0
    add W2, W0, W2
    push W2
    
    mov b, W2
    mov #100, W0
    subr W2, W0, W2
    push W2
    
    mov a, W2
    mov #100, W0
    subr W2, W0, W2
    
    pop W3
    repeat #17
	div.s W2, W3
	
    pop W2
    mul.ss W0, W2, W2
    
    mov #0x10E1, W0
    sub W2, W0, W2
    mov W2, e
    nop
.end
    
    
    
    
    


