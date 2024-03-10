org 00h
setup:
mov tmod,#00010001B
mov dptr,#sodec
mov p3,#0xff
reset:
	mov r4,#16
	mov r0,#56

main:
	mov r5,60
loop:
	mov r6,#40
	call chaygio
	call kiemtra
	djnz r5,loop
	inc r0		
	sjmp main

chaygio:
	mov th1,#0xed
	mov tl1,#0xf3
	setb tr1
	jnb tf1,$
	clr tr1
	clr tf1
	call hienthi
	djnz r6,chaygio
	ret
	

kiemtra:
	cjne r0,#60,back
	inc r4
	mov r0,#0
	cjne r4, #25, back
	sjmp reset
back:
	ret


hienthi:
	mov a,r0
	mov b,#10
	div ab
	mov r2,a
	mov a,b
	movc a,@a+dptr
	mov p2,a
	clr p3.0
	call delay
	setb p3.0
	mov a,r2
	movc a,@a+dptr
	mov p2,a
	clr p3.1
	call delay
	setb p3.1

	mov a,r4
	mov b,#10
	div ab
	mov r2,a
	mov a,b
	movc a,@a+dptr
	mov p2,a
	clr p3.2
	call delay
	setb p3.2
	mov a,r2
	movc a,@a+dptr
	mov p2,a
	clr p3.3
	call delay
	setb p3.3
	ret

delay:
	mov th0,#0xed
	mov tl0,#0xf3
	setb tr0
	jnb tf0,$
	clr tr0
	clr tf0
	ret	

sodec: db 0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f
end