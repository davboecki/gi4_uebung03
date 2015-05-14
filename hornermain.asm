SECTION .data
	x dd 4
	ergebnis dd 0
	koeffizient dd 33, 2, 7

SECTION .text
	global main

main:
	; Horner: c + x * (b + x * a)
	; vorher 3 Multiplikationen, jetzt 2

	mov eax, [x]
	imul eax, [koeffizient]
	add eax, [koeffizient+4]
	imul eax, [x]
	add eax, [koeffizient+8]

	mov [ergebnis], eax

	; end of program

	mov eax, 0
	int 0x80
