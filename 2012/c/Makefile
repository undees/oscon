default: test

test: a.out
	./a.out

a.out: oscon.c
	gcc -fprofile-arcs -ftest-coverage -c oscon.c
	gcc -fprofile-arcs oscon.o

# On Mountain Lion, use this instead:
# a.out: oscon.c
# 	clang -fprofile-arcs -ftest-coverage -c oscon.c
# 	clang -fprofile-arcs -ftest-coverage oscon.o

coverage: test
	gcov oscon.c

clean:
	rm a.out *.o *.gcno *.gcda *.gcov
