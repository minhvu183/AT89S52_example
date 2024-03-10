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

sodec: db 0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x80
end