SECTION .data
	x dd 3
	ergebnis dd 0

SECTION .text
	global main

main:
	mov eax, 0
	mov ebx, [x]
	imul ebx, ebx
	imul ebx, 3
	add eax, ebx

	mov ebx, [x]
	imul ebx, 4
	add eax, ebx

	add eax, -5
	mov [ergebnis], eax

	; end of program

	mov ebx, 0
	mov eax, 1
	int 0x80
