function sum(n, k) {
  const d = Math.floor(n / k);
  return k * (d * (d + 1)) / 2;
}

(function() {
  const n = 999;
  const s3 = sum(n, 3);
  const s5 = sum(n, 5);
  const s15 = sum(n, 15);

  const s = s3 + s5 - s15;

  console.log(s);
})();
