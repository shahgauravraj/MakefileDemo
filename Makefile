CC = gcc

all: hello

hello: main.o function1.o function2.o
	$(CC) main.o function1.o function2.o -o hello

main.o: main.c
	$(CC) -c main.c

function1.o: function1.c
	$(CC) -c function1.c

function2.o: function2.c
	$(CC) -c function2.c

clean:
	rm -rf *o hello
