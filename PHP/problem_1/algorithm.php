<?php

function sum($n, $k) {
  $d = floor($n / $k);
  return $k * (($d) * ($d + 1) / 2);
}

function main() {
    $n = 999;
    $s3 = sum($n, 3);
    $s5 = sum($n, 5);
    $s15 = sum($n, 15);

    $s = $s3 + $s5 - $s15;

    echo $s . "\n";
}

main();