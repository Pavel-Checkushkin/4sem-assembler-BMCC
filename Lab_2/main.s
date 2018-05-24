.equ a, 0x800
.equ b, 0x802
.equ c, 0x804
.equ d, 0x806
.global __reset    
.text
;d = [not(a)] or (b and 0x00F0) or (c and 0x0F00)
__reset:
    mov #0x0FFF, W4
    mov #0xFFFF, W5
    mov #0xFFFF, W6
    bset W4, #12
    bclr W5, #6
    btg W6, #5
    mov #0x1111, W1
    mov W1, a
    mov #0x2222, W2
    mov W2, b
    mov #0x3333, W3
    mov W3, c
    
    nop
    com a  ;1
    mov #0x00F0, W2
    mov b, W3
    and W2, W3, W4  ;2 W4
    mov #0x0F00, W1
    mov c, W2
    and W2, W1, W3   ;3 W3
    mov a, W1
    ior W1, W4, W4  ;4
    ior W4, W3, W4  ;5
    mov W4, d
    nop
.end
