SECTION .data
	;no data

SECTION .text
	global main

main:
	mov eax, 0
	mov ebx, 2
	imul ebx, ebx
	imul ebx, 3
	add eax, ebx

	mov ebx, 2
	imul ebx, 4
	add eax, ebx

	add eax, -5

	; end of program

	mov ebx, 0
	mov eax, 1
	int 0x80
