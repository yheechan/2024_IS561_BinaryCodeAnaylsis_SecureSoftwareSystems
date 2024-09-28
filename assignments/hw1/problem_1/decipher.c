#include <stdio.h>
#include <string.h>

int main() {
  // shift value: 53
  int shift = 53;
  // target encrypted string
  char a[] = "fihcgimchmcgfgomeee";
  int length = strlen(a);
  printf("encrypted string: %s\n", a);

  // decrypt encryped string character by character
  // by shifting 53 to the right
  printf("decypted string: ");
  for (int i=0; i<length; i++) {
    char b = a[i] - shift;
    printf("%c", b);
  }
  printf("\n");

  return 0;
}


// 143.248.38.212:8000