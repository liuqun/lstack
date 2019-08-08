.POSIX:
CC      = clang
CFLAGS  = -std=c11 -Wall -Wextra -O3 -mcx16
LDFLAGS = -pthread

objects = main.o lstack.o sha1.o

main: $(objects)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(objects) $(LDLIBS)

main.o: main.c lstack.h sha1.h
lstack.o: lstack.c lstack.h
sha1.o: sha1.c

run: main
	./main

clean:
	rm -f main $(objects)
