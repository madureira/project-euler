<?php

function maxPrimeFactors($n) {
    $maxPrime = -1;

    while ($n % 2 == 0) {
        $maxPrime = 2;
        $n /= 2;
    }

    for ($i = 3; $i <= sqrt($n); $i += 2) {
        while ($n % $i == 0) {
            $maxPrime = $i;
            $n /= $i;
        }
    }

    if ($n > 2) {
        $maxPrime = $n;
    }

    return $maxPrime;
}

function main() {
    $n = maxPrimeFactors(600851475143);
    echo $n . "\n";
}

main();