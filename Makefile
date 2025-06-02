CC=gcc
CFLAGS=-static -Wall

all:
	$(CC) $(CFLAGS) -o comp1 comp1.c
check:
	$(CC) $(CFLAGS) -o comp1 comp1.c
	./comp1
	-./comp1 foo
	rm comp1
clean:
	rm -f comp1
