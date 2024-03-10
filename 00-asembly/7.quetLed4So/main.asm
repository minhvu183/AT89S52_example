org 00h
mov dptr,#sodec
mov p3,#0xff
reset:
	mov r0,#86
	mov r4,#97
main:
	mov r1,#50
	call kiemtra
	call hienthi
	inc r0			
	sjmp main

kiemtra:
	cjne r0,#100,back
	inc r4
	mov r0,#0
	cjne r4, #100, back
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
	call delay50ms
	setb p3.0
	mov a,r2
	movc a,@a+dptr
	mov p2,a
	clr p3.1
	call delay50ms
	setb p3.1

	mov a,r4
	mov b,#10
	div ab
	mov r2,a
	mov a,b
	movc a,@a+dptr
	mov p2,a
	clr p3.2
	call delay50ms
	setb p3.2
	mov a,r2
	movc a,@a+dptr
	mov p2,a
	clr p3.3
	call delay50ms
	setb p3.3

	djnz r1, hienthi
	ret

delay50ms:
	mov r7,#100
loop1x:
	mov r6,#4
	djnz r6,$
	djnz r7,loop1x
	ret	

sodec: db 0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f
end