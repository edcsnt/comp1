CC=gcc
CFLAGS=-static -Wall

all:
	$(CC) $(CFLAGS) -o comp1 comp1.c
clean:
	rm -f comp1
