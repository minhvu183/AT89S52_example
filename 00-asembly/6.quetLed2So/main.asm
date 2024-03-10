org 00h
mov dptr,#sodec
mov p3,#0
reset:
	mov r0,#0

main:
	mov r1,#10
	call hienthi
	inc r0
	cjne r0,#100,main		
	sjmp reset

hienthi:
	mov a,r0
	mov b,#10
	div ab
	movc a,@a+dptr
	mov p2,a
	setb p3.0
	call delay50ms
	clr p3.0
	mov a,b
	movc a,@a+dptr
	mov p2,a
	setb p3.1
	call delay50ms
	clr p3.1
	djnz r1, hienthi
	ret

delay:
	mov r7,#255
loop1:
	mov r5,#255
loop2:
	mov r5,#2
	djnz r5,$
	djnz r6,loop2
	djnz r7,loop1
	ret

delay50ms:
	mov r7,#100
loop1x:
	mov r6,#60
	djnz r6,$
	djnz r7,loop1x
	ret	

sodec: db 0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x7f
end