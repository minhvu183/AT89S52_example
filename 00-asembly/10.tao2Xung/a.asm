org 00h
setup:
mov tmod,#0x01

main:
	mov r0,#4
	acall xung2khz
	cpl p2.1
	sjmp main
	 
xung2khz:
	cpl p2.0
	acall delay
	djnz r0, xung2khz
	ret	

delay:
	mov th0,#0xff
	mov tl0,#0x14
	setb tr0
	jnb tf0,$
	clr tr0
	clr tf0
	ret

end