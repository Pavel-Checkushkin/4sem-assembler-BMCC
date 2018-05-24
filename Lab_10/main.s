.equ key_out, 0x900
.equ str_out, 0xA00
.equ str_out2, 0xB00
.equ key_len, 7
.equ str_len, 14
.text
str_in: .ascii "Beautiful pills"
str_key: .ascii "football"
.global __reset
__reset:
    mov #tblpage(str_key), W0
    mov W0, PSVPAG
    mov #tbloffset(str_key), W6
    mov #key_out, W7
    mov #key_len, W2
    
    do #1, end1
	do W2, end2
	    tblrdl.b [W6++], W3
	    mov W3, [W7++]
	    end2: nop
	mov #tbloffset(str_key), W6
	end1: nop
    
    mov #key_out, W7
    mov #tblpage(str_in), W0
    mov W0, PSVPAG
    mov #tbloffset(str_in), W6
    mov #str_len, W2
    mov #str_out, W8
    
    do W2, end3
	tblrdl.b [W6++], W3
	mov [W7++], W4
	xor W3, W4, W5
	mov W5, [W8++]
	end3: nop
    
    mov #str_out, W6
    mov #key_out, W7
    mov #str_out2, W8
    
    do W2, end4
	mov [W6++], W3
	mov [W7++], W4
	xor W3, W4, W5
	mov W5, [W8++]
	end4: nop
    
nop
.end

