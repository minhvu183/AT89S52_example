org 00h

main:
	jnb p1.7, wail
	sjmp main

wail: 
	mov r3,#5
	djnz r3,$
	jb p1.7,on
	sjmp wail
	
on:
	cpl p2.0
	sjmp main

end
