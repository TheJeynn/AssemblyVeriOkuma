org 0000h
	SJMP basla
org 0030h
	
basla:
	
	mov dptr,#2000h
	mov A,#50h
	movx @dptr,A
	INC dptr
	mov A,#20h
	movx @dptr,A
	INC dptr
	mov A,#03h
	movx @dptr,A
	INC dptr
	mov A,#03h
	movx @dptr,A
	INC dptr
	mov A,#12h
	movx @dptr,A
	INC dptr
	mov A,#0Fh
	movx @dptr,A
	mov dptr,#2000h
	mov R1,#00h
	
tekrar:
	movx A,@dptr
	ADD A,R0
	mov R0,A
	INC dptr
	INC R1
	CLR C
	CJNE R1,#05h,tekrar
	
	end