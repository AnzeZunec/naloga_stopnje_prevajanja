#include <stdio.h>

#define EXAMPLENUM 25

void printHello() {
    printf("Hello World");
}

int main() {
  
    #ifdef EXAMPLENUM
        printf("Example Number: %d", EXAMPLENUM);
    #else 
        printf("Examplenum not defined");
    #endif
    printHello();
    return 0;
}