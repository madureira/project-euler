<?php

define("PHI", (1 + sqrt(5)) / 2);
define("PSI", (1 - sqrt(5)) / 2);

function reverseFib($fn) {
    return floor(log(($fn * sqrt(5) + sqrt(5 * pow($fn, 2) - 4)) / 2) / log(PHI));
}

function getK($n) {
    return floor(reverseFib($n) / 3);
}

function sumEven($k) {
    $phi3 = pow(PHI, 3);
    $psi3 = pow(PSI, 3);

    return (1 / sqrt(5)) * (
        $phi3 * ((1 - pow($phi3, $k)) / (1 - $phi3)) - $psi3 * ((1 - pow($psi3, $k)) / (1 - $psi3))
    );
}

function main() {
    $N = 4000000;
    $k = getK($N);
    $S = sumEven($k);

    echo $S . "\n";
}

main();
