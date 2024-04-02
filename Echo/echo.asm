section .data
	msg resb 100

	intro db 'write input:'
	len_intro equ $ - intro

section .text
	global _start

_start:
	; Write
	mov eax, 4
	mov ebx, 1
	mov	ecx, intro
	mov	edx, len_intro
	int 0x80

	; Read
	mov edx, 100
	mov ecx, msg
	mov eax, 3
	mov ebx, 0
	int 0x80

	; Write
	mov eax, 4
	mov ebx, 1
	mov	ecx, msg
	mov	edx, 100
	int 0x80

	; Exit
	mov eax, 1
	xor ebx, ebx
	int 0x80
