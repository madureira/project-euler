function evenFib(previous, term, sum) {
  let total = previous + term;

  if (total > 4000000) {
    return sum;
  }

  if (total % 2 == 0) {
    sum += total;
  }

  return evenFib(term, total, sum);
}

(function() {
  const sum = evenFib(1, 1, 0);
  console.log(sum);
})();
