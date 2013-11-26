# P Walsh June 2011

# Targets
#   driver 
#   clean

# compiler
CC=gcc

# extra compiler flags
XCF=-g

driver: driver.o IntSet.o Exceptions.o
	gcc Exceptions.o driver.o IntSet.o -o driver

IntSet.o: IntSet.c IntSet.h Exceptions.h
	$(CC) $(XCF) -c IntSet.c

driver.o: IntSet.h Exceptions.h driver.c
	$(CC) $(XCF) -c driver.c

Exceptions.o:
	$(CC) $(XCF) -c Exceptions.c

clean:
	rm -f *.o core driver.o driver
