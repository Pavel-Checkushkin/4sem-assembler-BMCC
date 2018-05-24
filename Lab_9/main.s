.include "p33FJ256GP710.inc"
.text
.global __reset
__reset:
    mov #4, W2
    mov #3, W3
    
    mul.ss W2, W3, W6
    
    mov #0, W4
    cpsne W2, W4
	goto end
    cpsne W3, W4
	goto end
    cpsne W2, W3
	goto end
	
    cmpr:nop    
	cpsgt W2, W3
	    goto great3
	goto great2
    
    great2: nop
	sub W2, W3, W2
	cpsne W4, W2
	    goto continue2
	goto cmpr
    
    great3: nop
	sub W3, W2, W3
	cpsne W4, W3
	    goto continue3
	goto cmpr
	
    continue2: nop
	repeat #17
	    div.s W6, W3
	goto end
	    
    continue3: nop
	repeat #17
	    div.s W6, W2
	goto end
    end: nop
nop
.end



