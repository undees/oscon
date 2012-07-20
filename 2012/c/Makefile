default: test

test: a.out
	./a.out

a.out: oscon.c
	gcc -fprofile-arcs -ftest-coverage -c oscon.c
	gcc -fprofile-arcs oscon.o

coverage: test
	gcov oscon.c

clean:
	rm a.out *.o *.gcno *.gcda *.gcov
