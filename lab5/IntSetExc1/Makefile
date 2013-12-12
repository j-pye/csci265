
# Targets
#   bats		Simple cew Test cases on IntSet
#   driver		Hard coded Test
#   gcov 		Line Coverage for all Modules
#   clean		clean all junk

# compiler
SD=CewDir
CC=gcc

INDENT=cat

# extra compiler flags
XCF=-g
GCF=-g -fprofile-arcs -ftest-coverage
bats: tb.out
	./tb.out

tb.out: tb.o IntSet.o Exceptions.o
	$(CC) $(XCF) -o tb.out tb.o IntSet.o Exceptions.o 

tb.o: tb.c Exceptions.h
	$(CC) $(XCF) -c tb.c

driver: driver.o IntSet.o Exceptions.o
	$(CC) $(XCF) Exceptions.o driver.o IntSet.o -o driver

tb.c: tb.cew
	rm -f $(SD)/tmp/tb.num
	rm -f ./tb.c
	awk -f $(SD)/bin/addLineNums.awk tb.cew > $(SD)/tmp/tb.num
	m4 -B20000  $(SD)/tmp/tb.num  | $(INDENT) > tb.c

IntSet.o: IntSet.c IntSet.h Exceptions.h
	$(CC) $(XCF) -c IntSet.c

driver.o: IntSet.h Exceptions.h driver.c
	$(CC) $(XCF) -c driver.c

Exceptions.o:
	$(CC) $(XCF) -c Exceptions.c

clean:
	rm -f *.o core driver.o driver *.out tb.c $(SD)/tmp/* *.gcno *.gcov *.gcda *.html *.gch
