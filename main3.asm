SECTION .data
	x dd 4
	ergebnis dd 0
	koeffizient dd 33, 2, 7

SECTION .text
	global main

main:
	; Array im Speicher (big endian)
	; 0 1 2 3 4 5 6 7 8 9 10 11 [Bytes]
	; 0 0 2 1 0 0 0 2 0 0  0  7 [Werte (hex)]

	mov eax, 0
	mov ebx, [x]
	imul ebx, ebx
	imul ebx, [koeffizient]
	add eax, ebx

	mov ebx, [x]
	imul ebx, [koeffizient+4]
	add eax, ebx

	add eax, [koeffizient+8]
	mov [ergebnis], eax

	; end of program

	mov ebx, 0
	mov eax, 1
	int 0x80
