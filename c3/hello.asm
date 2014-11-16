
	section	.text
	global _start

	_start:

		mov	eax, 4 !! przypisanie wartości 4 do zmiennej eax
		mov	ebx, 1 !! przypisanie wartosci 1 do zmeinnej ebx
		mov	ecx, tekst !! w wartosc ECX zostanie wpisane "Hello World"
		mov	edx, [dlugosc] !! uzycie nawiasow powoduje przypisanie wartosci z parametru dlugosc
		int	80h !! wywołanie zmiennych
		
		mov	eax, 1
		int	80h !! wywołanie zmiennej eax. Poniewaz eax=1 to jest "exit" - program zakonczy prace

	section .data

	tekst	db	"Hello world !! ", 0ah
	dlugosc	dd	$ - tekst
