.include "p33FJ256GP710.inc"
.text
.global __reset
__reset:
    mov #0x800, W6
    mov #9, W1
    mov W1, [W6++]
    mov #6, W1
    mov W1, [W6++]
    mov #12, W1
    mov W1, [W6++]
    mov #8, W1
    mov W1, [W6++]
    mov #5, W1
    mov W1, [W6++]
    mov #1, W1
    mov W1, [W6++]
    mov #4, W1
    mov W1, [W6++]
    mov #7, W1
    mov W1, [W6++]
    mov #3, W1
    mov W1, [W6++]
    mov #10, W1
    mov W1, [W6++]
    mov #2, W1
    mov W1, [W6++]
    mov #11, W1
    mov W1, [W6++]
    
    mov #0x800, W1
    mov #0, W0

    sort1_start: nop
    
	mov #6, W2
	cpsgt W0, W2		;if less then skip
	    goto next1		;else check other state
	
	mov #0x80A, W2		;if W1 in 2nd part of array
	cpslt W1, W2		;sort 2
	    goto sort2_start

	next1: nop
	mov #0x80A, W2
	cpslt W1, W2
	    mov #0x800, W1
	    
	mov [W1++], W3
	mov [W1], W4
	cpslt W3, W4
	    goto swp1
	
	inc W0, W0
	goto sort1_start

	swp1: nop
	    mov [W1], W2
	    mov [--W1], [++W1]
	    mov W2, [--W1]
	    inc2 W1, W1
	    mov #0, W0
	    goto sort1_start

    sort1_end: nop
    
    sort2_start: nop
    
    	mov #6, W2
	cpsgt W0, W2		;if less then skip
	    goto next2		;else check other state
	
	mov #0x816, W2		;if W1 in 2nd part of array
	cpslt W1, W2		;sort 2
	    goto sort2_end

	next2: nop
	mov #0x816, W2
	cpslt W1, W2
	    mov #0x80C, W1
	    
	mov [W1++], W3
	mov [W1], W4
	cpsgt W3, W4
	    goto swp2
	
	inc W0, W0
	goto sort2_start

	swp2: nop
	    mov [W1], W2
	    mov [--W1], [++W1]
	    mov W2, [--W1]
	    inc2 W1, W1
	    mov #0, W0
	    goto sort2_start
	    
    sort2_end: nop
    nop
.end
