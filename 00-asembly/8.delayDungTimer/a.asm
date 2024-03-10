org 00h
clr p3.0
mov p2,#0
mov tmod,#01

main:
	cpl p2.0
	acall delay
	sjmp main

delay: 
	mov th0,#0xed
	mov tl0,#0xf3
	setb tr0
	jnb tf0,$
	clr tr0
	clr tf0
	ret	
	
end