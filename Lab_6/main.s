; a(k) = 12 * a(k-2) + a(k-1) mod 7, k = 1, 2, 3, ? 
.equ begin, 0x800

.text
    .global __reset
    __reset:
    mov #begin, W2
    mov #1, W1
    mov W1, [W2++]
    mov #0, W1
    mov W1, [W2++]
    
    do #9, end
	mov W2, W5
	mov #7, W7
	mov [--W5], W6
	repeat #17
	    div.s W6, W7
	mov #12, W7
	mul.ss W7, [--W5], W8
	add W1, W8, [W2++]
	end: nop
    nop
.end
    
    