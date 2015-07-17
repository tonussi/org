#include <stdio.h>

int main(void) {
  printf("\n%d\n", positive(4, -9));
}

int positive(int a, int b) {
  if (addit(a, b) > 0)
  {
    return 1;
  } else {
    return 0;
  }
}

int addit(int a, int b) {
  return a + b;
}
