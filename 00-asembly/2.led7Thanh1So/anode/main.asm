org 00h

mov dptr,#sodec
reset: 
	mov r3,#0

main:
	mov a,r3
	movc a,@a+dptr
	mov p2,a
	inc r3
	call delay
	cjne r3,#11,main
	jmp reset


delay:
	mov r0,#0xff
loop1:
	mov r1,#0xff
loop2:
	mov r2,#2
	djnz r2,$
	djnz r1,loop2
	djnz r0, loop1
	ret

sodec: db 0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90,0x7f
end