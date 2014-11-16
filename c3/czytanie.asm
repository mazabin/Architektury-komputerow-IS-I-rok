	section .text
	global _start
	
	_start:
		mov eax, 3 ; !! czytanie
		mov ebx, 0 ; !! input
		mov ecx, tekst
		mov edx, [dlugosc]
		int 80h
	
		mov eax, 4 ; !! pisanie
		mov ebx, 1 ; !! output
		mov ecx, tekst
		mov edx, [dlugosc]
		int 80h
	
		mov eax, 1
		int 80h

	section .data
	tekst dq 0 , 0ah
	dlugosc dd $ - tekst
