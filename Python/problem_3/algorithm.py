import math

def maxPrimeFactors(n):
    maxPrime = -1;

    while n % 2 == 0:
        maxPrime = 2;
        n /= 2;

    i = 3
    while i <= math.sqrt(n):
        while n % i == 0:
            maxPrime = i
            n /= i
        i += 2

    if n > 2:
        maxPrime = n

    return int(maxPrime)

def main():
    n = maxPrimeFactors(600851475143)
    print(n)

main()