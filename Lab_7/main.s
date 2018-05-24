
.equ msg_out, 0x800
.text
msg_in: .ascii "Stariy vonuchiy ded!"
.global __reset
__reset:
    mov #tblpage(msg_in), W0
    mov W0, PSVPAG
    mov #tbloffset(msg_in), W6
    mov #msg_out, W7
    do #19, end
	tblrdl.b [W6++], W2
	 
	sl W2, #8, W4
	ior W4, W2, W4
	mov W4, [W7++]
	
	sl W2, #8, W4
	tblrdl.b [W6++], W3
	ior W4, W3, W4
	mov W4, [W7++]
	end: nop
    nop
.end


