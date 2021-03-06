from math import sqrt, floor, log

PHI = (1 + sqrt(5)) / 2
PSI = (1 - sqrt(5)) / 2

def reverse_fib(fn):
    return floor(log((fn * sqrt(5) + sqrt(5 * (fn ** 2) - 4)) / 2, PHI))

def get_k(n):
    return reverse_fib(n) // 3

def sum_even(k):
    phi3 = PHI ** 3
    psi3 = PSI ** 3
    return int((1 / sqrt(5)) * (
        phi3 * ((1 - phi3 ** k) / (1 - phi3)) - psi3 * ((1 - psi3 ** k) / (1 - psi3))
    ))

def main():
    N = 4000000
    k = get_k(N)
    S = sum_even(k)
    print(S)

main()