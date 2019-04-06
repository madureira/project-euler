<?php

function evenFib($previous, $term, $sum) {
    $total = $previous + $term;

    if ($total > 4000000) {
        return $sum;
    }

    if ($total % 2 == 0) {
        $sum += $total;
    }

    return evenFib($term, $total, $sum);
}

function main() {
    $sum = evenFib(1, 1, 0);
    echo $sum  . "\n";
}

main();
