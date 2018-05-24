.equ CRC1, 0x800
.equ CRC2, 0x8A0 
.text
msg_in: .ascii "FGBOU VO SamGTU"
.global __reset
__reset:
    mov #tblpage(msg_in), W0
    mov W0, PSVPAG
    mov #tbloffset(msg_in), W2
    mov #0xFF, W3
    mov #CRC1, W4
    mov #CRC2, W5

    do #14, end
	tblrdl.b [W2++], W6
	mov [W4++], W9
	add W6, W9, W8
	repeat #17
	    div.s W8, W3
	mov W1, [W4]
	mov [W5++], W9
	add W1, W9, W8
	repeat #17
	    div.s W8, W3
	mov W1, [W5]
    end: nop
    mov [W4], W2
    mov [W5], W3
    sl W2, #8, W4
    ior W3, W4, W4
    nop
.end





