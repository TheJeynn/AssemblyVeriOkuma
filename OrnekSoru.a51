;30h ile 50h adresleri arasindaki verilerden 3’ün katlari olanlari 50h adresinden itibaren
;kopyalayan ve yeni olusan dizinin en büyük elemaninin 3’ün kaç kati oldugunu 70h adresine
;kaydeden programi yaziniz

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
MOV 3BH, #42    ; 3'ün kati
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
MOV 4AH, #111   ; 3'ün kati
MOV 4BH, #120   ; 3n kati
MOV 4CH, #123   ; 3'ün kati
MOV 4DH, #130
MOV 4EH, #132   ; 3'ün kati
MOV 4FH, #1   ; 3'ün kati

	mov R0,#30h
	mov R1,#50h

	
tekrar:
	mov B,#3
    mov A,@R0
 	mov R2,A
	DIV AB
	mov A,B
	JZ katidir
	LJMP dongukontrol
	
	
katidir:
	mov A,R2
	mov @R1,A
	INC R1
	SJMP dongukontrol
	
dongukontrol:
	INC R0
	CJNE R0,#50h,tekrar
	mov R0,#50h
	mov R1,#70h
	mov A,@R0
	SJMP enbuyukbul
	
enbuyukbul:
	INC R0
	mov R2,A
	SUBB A,@R0
	JC Rbuyuk
	JNC Abuyuk
	
Abuyuk:
	mov A,R2
	INC R0
	CJNE R0,#70h,enbuyukbul
	LJMP yazdir
	
Rbuyuk:
	CLR C
	mov A,@R0
	INC R0
	CJNE R0,#70h,enbuyukbul
	SJMP yazdir
	
yazdir:
	mov 70h,A

	SJMP $
end