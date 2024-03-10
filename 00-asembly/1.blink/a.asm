org 00h


main:
	cpl p2.0
	call delay
	sjmp main

delay:
	mov r0,#0xaa
	loop1:
		mov r1,#0xaa
		loop2:
			mov r2,#3
			djnz r2,$
			djnz r1,loop2
			djnz r0, loop1
		ret

end