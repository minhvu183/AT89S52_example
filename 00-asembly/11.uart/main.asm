org 00h
setup:
	mov tmod,#0x20
	mov th1,#0xfd
	mov scon,#0x50
	setb tr1

main:
	call nhan
	mov r0,a
	mov a,#' '
	call truyen
	mov a,r0
	call truyen
	sjmp main

truyen:
	mov sbuf,a
	jnb ti,$
	clr ti
	ret

nhan:
	jnb ri,$
	mov a,sbuf
	clr ri
	ret

end