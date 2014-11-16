KOMP=gcc
program: plik.o
	$(KOMP) $^ -o $@
plik.o: main.c
	$(KOMP) -c $^ -o $@
clean: 
	rm -r *.o program
