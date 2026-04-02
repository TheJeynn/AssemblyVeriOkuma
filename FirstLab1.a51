ORG 0000H
	SJMP basla

ORG 0030H

basla:
	; 1000H'den 1020H'ye test degerleri ata
	mov dptr, #1000H
	
	; Örnek degerler: tek ve çift sayilar karisik
	mov a, #01H
	movx @dptr, a
	inc dptr
	mov a, #02H
	movx @dptr, a
	inc dptr
	mov a, #03H
	movx @dptr, a
	inc dptr
	mov a, #04H
	movx @dptr, a
	inc dptr
	mov a, #05H
	movx @dptr, a
	inc dptr
	mov a, #06H
	movx @dptr, a
	inc dptr
	mov a, #07H
	movx @dptr, a
	inc dptr
	mov a, #08H
	movx @dptr, a
	inc dptr
	mov a, #09H
	movx @dptr, a
	inc dptr
	mov a, #0AH
	movx @dptr, a
	inc dptr
	mov a, #0BH
	movx @dptr, a
	inc dptr
	mov a, #0CH
	movx @dptr, a
	inc dptr
	mov a, #0DH
	movx @dptr, a
	inc dptr
	mov a, #0EH
	movx @dptr, a
	inc dptr
	mov a, #0FH
	movx @dptr, a
	inc dptr
	mov a, #10H
	movx @dptr, a
	inc dptr
	mov a, #11H
	movx @dptr, a
	inc dptr
	mov a, #12H
	movx @dptr, a
	inc dptr
	mov a, #13H
	movx @dptr, a
	inc dptr
	mov a, #14H
	movx @dptr, a
	inc dptr
	mov a, #15H
	movx @dptr, a
	inc dptr
	mov a, #16H
	movx @dptr, a
	inc dptr
	mov a, #17H
	movx @dptr, a
	inc dptr
	mov a, #18H
	movx @dptr, a
	inc dptr
	mov a, #19H
	movx @dptr, a
	inc dptr
	mov a, #1AH
	movx @dptr, a
	inc dptr
	mov a, #1BH
	movx @dptr, a
	inc dptr
	mov a, #1CH
	movx @dptr, a
	inc dptr
	mov a, #1DH
	movx @dptr, a
	inc dptr
	mov a, #1EH
	movx @dptr, a
	inc dptr
	mov a, #1FH
	movx @dptr, a
	inc dptr
	mov a, #20H
	movx @dptr, a
	;üstteki kod veri seti
	mov dptr,#1000h
	mov R0,#30h ;;tek dizi baslangici
	mov R1,#50h ;çift dizi baslangici
	mov 71h,#00h ;tek dizi adedi
	mov 72h,#00h ;tek dizi toplami
	mov 73h,#00h ;çift dizi adedi
	mov 74h,#00h ;çift dizi toplami
tekrarla:	
	movx A,@dptr
	mov R2,A
	JB ACC.0,tek	
	SJMP cift
tek:
	mov @R0,A
	INC R0
	INC 71h
	ADD A,72h
	mov 72h,A
	LJMP dongukontrol
	
cift:
	mov @R1,A
	INC R1
	INC 73h
	ADD A,74h
	mov 74h,A
	LJMP dongukontrol
	
dongukontrol:
	INC dptr
	mov A,DPL
	CJNE A,#20h,tekrarla
	
	
	mov A,71h
	CJNE A,73h,esitdegil ;esit ise alt satira degilse esit degile
	mov 75h,#0FFh ;esit atamasi
    SJMP bitti
esitdegil:
	JC tekkucuk
	mov 75h,#0Fh
	SJMP bitti
tekkucuk:
	mov 75h,#0F0h
	
bitti:
    SJMP $              ; Programi burada durdur
END