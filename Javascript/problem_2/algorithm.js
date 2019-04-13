const PHI = (1 + Math.sqrt(5)) / 2;
const PSI = (1 - Math.sqrt(5)) / 2;

function reverseFib(fn) {
    return Math.floor(Math.log((fn * Math.sqrt(5) + Math.sqrt(5 * Math.pow(fn, 2) - 4)) / 2) / Math.log(PHI));
}

function getK(n) {
    return Math.floor(reverseFib(n) / 3);
}

function sumEven(k) {
    const phi3 = Math.pow(PHI, 3);
    const psi3 = Math.pow(PSI, 3);

    return (1 / Math.sqrt(5)) * (
        phi3 * ((1 - Math.pow(phi3, k)) / (1 - phi3)) - psi3 * ((1 - Math.pow(psi3, k)) / (1 - psi3))
    );
}

(function() {
  const N = 4000000;
  const k = getK(N);
  const S = sumEven(k);

  console.log(S);
})();
