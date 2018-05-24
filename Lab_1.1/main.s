.include "p33FJ256GP710.inc"
.global __reset
.text
    __reset:
    main:
    nop
    mov #4, W1
    mov #6, W2
    dec W2, W2
    inc2 W2, W4
.end
    