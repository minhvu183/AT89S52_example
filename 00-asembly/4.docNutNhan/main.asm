org 00h

mov dptr,#sodec
reset:
	mov r3,#1
main:
	jnb p1.7, wail
	sjmp main	
wail: 
	mov r4,#5
	djnz r4,$
	jb p1.7,on
	sjmp wail	
on:	
	mov a,r3
	mov b,#10
	div ab
	movc a,@a+dptr
	mov p2,a
	mov a,b
	movc a,@a+dptr
	mov p3,a
	inc r3
	cjne r3,#100,main
	sjmp reset

sodec: db 0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90,0x7f
end