function maxPrimeFactors(n)
  local maxPrime = -1

  while n % 2 == 0 do
    maxPrime = 2
    n = n / 2
  end

  local i = 3
  while i <= math.sqrt(n) do
    while n % i == 0 do
      maxPrime = i
      n = n / i
    end
    i = i + 2
  end

  if n > 2 then
    maxPrime = n
  end

  return math.floor(maxPrime)
end

function main()
  local n = maxPrimeFactors(600851475143)
  print(n)
end

main()