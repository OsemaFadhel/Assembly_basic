

ft_write:
	mov eax, 4
	mov ebx, 1
	mov	ecx, msg_h
	mov	edx, len_h
	int 0x80

	ret
