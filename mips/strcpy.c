#include <stdio.h>

int main(void){}

void strcp(char* x, char* y)
{
  int i;
  i = 0;
  while ((*(x + i) = *(y + i)) != '\0')
      i += 1;
}
