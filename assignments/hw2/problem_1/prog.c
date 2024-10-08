#include <stdio.h>

int findme() {puts("good job!");}
int main ()
{
    long addr;
    fread(&addr, sizeof(addr), 1, stdin);
    printf("%;x\n", addr);
    ((void (*)()) addr)();
    return 0;
}