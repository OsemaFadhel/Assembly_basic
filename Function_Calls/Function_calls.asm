section .data
	input resb 100

	msg db 'Enter input: '
	len_msg equ $ - msg

	msg_h db 'Hello World', 0xa
	len_h equ $ - msg_h

section .text
global _start

_start:
	call hello
	call echo
	call exit


echo:
	mov eax, 4
	mov ebx, 1
	mov	ecx, msg
	mov	edx, len_msg
	int 0x80

	; Read
	mov edx, 100
	mov ecx, input
	mov eax, 3
	mov ebx, 0
	int 0x80

	; Write
	mov eax, 4
	mov ebx, 1
	mov	ecx, input
	mov	edx, 100
	int 0x80

	ret

hello:
	mov eax, 4
	mov ebx, 1
	mov	ecx, msg_h
	mov	edx, len_h
	int 0x80

	ret

exit:
	mov eax, 1
	mov ebx, 0
	int 0x80
