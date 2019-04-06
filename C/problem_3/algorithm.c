#include <stdio.h>
#include <math.h>

long long maxPrimeFactors(long long n)
{
    long long maxPrime = -1;

    while (n % 2 == 0)
    {
        maxPrime = 2;
        n /= 2;
    }

    for (int i = 3; i <= sqrt(n); i += 2)
    {
        while (n % i == 0)
        {
            maxPrime = i;
            n /= i;
        }
    }

    if (n > 2)
    {
        maxPrime = n;
    }

    return maxPrime;
}

int main()
{
    long long n = maxPrimeFactors(600851475143);

    printf("%i\n", n);

    return 0;
}