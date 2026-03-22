CC=gcc
CPP=cpp
AS=as
LD=ld

CFLAGS=-m32 -Wall -Wextra -Werror -Wpedantic
TARGET=stopnje_prevajanja

.PHONY: all build run clean

all: build run

build:
	$(CC) $(CFLAGS) main.c -o $(TARGET)

run: build
	./$(TARGET)

clean: 
	rm -f $(TARGET)