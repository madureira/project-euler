#include <iostream>
#include <math.h>

static double PHI = (1 + sqrt(5)) / 2;
static double PSI = (1 - sqrt(5)) / 2;

int reverseFib(int fn)
{
    return floor(log((fn * sqrt(5) + sqrt(5 * pow(fn, 2) - 4)) / 2) / log(PHI));
}

int getK(int n)
{
    return floor(reverseFib(n) / 3);
}

int sumEven(int k)
{
    double phi3 = pow(PHI, 3);
    double psi3 = pow(PSI, 3);

    return (1 / sqrt(5)) * (
        phi3 * ((1 - pow(phi3, k)) / (1 - phi3)) - psi3 * ((1 - pow(psi3, k)) / (1 - psi3))
    );
}

int main()
{
    int N = 4000000;
    int k = getK(N);
    int S = sumEven(k);

    std::cout << S << std::endl;

    return 0;
}
