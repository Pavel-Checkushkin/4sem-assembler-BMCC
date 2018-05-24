;.equ CRC1, 0x800
;.equ CRC2, 0x8A0 
.text
    ;in_: .ascii "FGBOU VO SamGTU"
.global __return
    __return:

;    mov #tblpage(in_), W0
;    mov W0, PSVPAG
;    mov #tbloffset(in_), W2
;    mov #0xFF, W3
;    mov #CRC1, W4
;    mov #CRC2, W5

;    do #14, end
;	tblrdl.b [W2++], W6
;	mov [W4++], W9
;	add W6, W9, W8
;	repeat #17
;	    div.s W8, W3
;	mov W1, [W4++]
;	mov [W5++], W9
;	add W1, W9, W8
;	repeat #17
;	    div.s W8, W3
;	mov W1, [W5++]
;    end: nop
nop
.end
