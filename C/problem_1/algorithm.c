#include <stdio.h>

int sum(int n, int k)
{
  return k * ((n / k * (n / k + 1)) / 2);
}

int main()
{
    int n = 999;
    int s3 = sum(n, 3);
    int s5 = sum(n, 5);
    int s15 = sum(n, 15);

    int s = s3 + s5 - s15;

    printf("%i\n", s);

    return 0;
}
