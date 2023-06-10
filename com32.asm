bits 32
org 101000h
mov eax,21cd4cffh
mov edi,0b8000h
mov esi,060000h
mov ah,17h
call copyb8000
ret
ret
ret
copyb8000:
	push ebx
	push ecx
	push edx
	push esi
	push edi
	push ds
	push es
	mov dx,0
	mov ds,dx
	copyb80001:
		ds
		mov al,[esi]
		ds
		mov [edi],ax
		inc edi
		inc edi
		inc esi
		cmp al,0
		jnz copyb80001
	pop es
	pop ds
	pop edi
	pop esi
	pop edx
	pop ecx
	pop ebx
	ret
