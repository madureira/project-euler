#include <stdio.h>

int evenFib(int previous, int term, int sum)
{
    int total = previous + term;

    if (total > 4000000)
    {
        return sum;
    }

    if (total % 2 == 0)
    {
        sum += total;
    }

    return evenFib(term, total, sum);
}

int main()
{
    int sum = evenFib(1, 1, 0);

    printf("%i\n", sum);

    return 0;
}
