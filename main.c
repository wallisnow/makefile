#include <stdio.h>
#include "add.h"
#include "dev.h"

int main() {
    printf("Hello, World!\n");
    printf("add %i!\n", add(1,2));
    printf("dev %i!\n", dev(2,1));
    return 0;
}
