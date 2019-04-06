function maxPrimeFactors(n) {
  let maxPrime = -1;

  while (n % 2 == 0) {
    maxPrime = 2;
    n /= 2;
  }

  for (let i = 3; i <= Math.sqrt(n); i += 2) {
    while (n % i == 0) {
      maxPrime = i;
      n /= i;
    }
  }
  
  if (n > 2) {
    maxPrime = n;
  }

  return maxPrime;
}

function main() {
  const n = maxPrimeFactors(600851475143);
  console.log(n);
}

main();
