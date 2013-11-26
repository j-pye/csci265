# P Walsh June 2011

# Targets
#   driver 
#   clean

# compiler
CC=gcc

# extra compiler flags
XCF=-g

driver: driver.o Error.o IntSet.o
	gcc driver.o Error.o IntSet.o -o driver
Error.o: Error.c Error.h
	$(CC) $(XCF) -c Error.c

IntSet.o: IntSet.c IntSet.h Error.h
	$(CC) $(XCF) -c IntSet.c

driver.o: IntSet.h Error.h
	$(CC) $(XCF) -c driver.c

clean:
	rm -f *.o core driver.o driver
