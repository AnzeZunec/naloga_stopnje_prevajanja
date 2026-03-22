CC=gcc
CPP=cpp
AS=as
LD=gcc

CFLAGS=-m32 -Wall -Wextra -Werror -Wpedantic
TARGET=stopnje_prevajanja

.PHONY: all build run clean build_i build_s build_o

all: build run

build: build_o
	$(LD) -m32 main.o -o $(TARGET)

run: build
	./$(TARGET)

clean: 
	rm -f main.i main.s main.o $(TARGET)

build_i: main.c 
	$(CPP) -m32 main.c > main.i

build_s: build_i
	$(CC) $(CFLAGS) -S -x c main.i -o main.s 

build_o: build_s
	$(CC) $(CFLAGS) -c -x assembler main.s -o main.o
