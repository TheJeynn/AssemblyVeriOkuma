;30h ile 4Fh adresleri arasindaki verilerin en büyügünü bulan
;ve 50h adresine yazan program, sayisini da 51h adresine yazan
;ve adreslerini de 60h adresinden itibaren yazan
org 0000h
	SJMP basla
org 0030h

basla:
MOV 30H, #3     ; 3'ün kati (Test için)
MOV 31H, #0
MOV 32H, #9     ; 3'ün kati
MOV 33H, #12    ; 3'ün kati
MOV 34H, #15    ; 3'ün kati
MOV 35H, #20
MOV 36H, #21    ; 3'ün kati
MOV 37H, #25
MOV 38H, #92    ; 3'ün kati
MOV 39H, #33    ; 3'ün kati
MOV 3AH, #210
MOV 3BH, #210    ; 3'ün kati
MOV 3CH, #45    ; 3'ün kati
MOV 3DH, #50
MOV 3EH, #51    ; 3'ün kati
MOV 3FH, #60    ; 3'ün kati
MOV 40H, #70   ; 3'ün kati
MOV 41H, #70
MOV 42H, #72    ; 3'ün kati
MOV 43H, #80
MOV 44H, #81    ; 3'ün kati
MOV 45H, #90    ; 3'ün kati
MOV 46H, #93    ; 3'ün kati
MOV 47H, #100
MOV 48H, #102   ; 3'ün kati
MOV 49H, #200
MOV 4AH, #210   ; 3'ün kati
MOV 4BH, #120   ; 3n kati
MOV 4CH, #123   ; 3'ün kati
MOV 4DH, #130
MOV 4EH, #132   ; 3'ün kati
MOV 4FH, #1   ; 3'ün kati

	mov R0,#30h
	mov 50h,@R0
	mov 51h,#1 

tekrar:
	mov A,@R0
	mov R2,A
	CLR C
	INC R0
	mov A,50h
	SUBB A,@R0
	JC Rbuyuk
	CLR C
	JNZ dongukontrol
	INC 51h
	
dongukontrol:
	CJNE R0,#4Fh,tekrar
	mov R1,#30h
	mov R0,#60h
	LJMP karsilastir

Rbuyuk:
	mov 50h,@R0
	mov 51h,#01h 
	LJMP dongukontrol	

karsilastir:
	mov A,@R1
	CLR C
	SUBB A,50h
	JZ esit
	LJMP kontroldongusu
	
	
esit:
	mov A,R1
	mov @R0,A
	INC R0
	LJMP kontroldongusu


kontroldongusu:
	INC R1
	CJNE R1,#50h,karsilastir
	SJMP bitti

bitti:
	SJMP $
	
END
