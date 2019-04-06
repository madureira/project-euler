function evenFib(previous, term, sum)
  local total = previous + term

  if total > 4000000 then
    return sum
  end

  if total % 2 == 0 then
    sum = sum + total
  end

  return evenFib(term, total, sum)
end

function main()
  local sum = evenFib(1, 1, 0)
  print(sum)
end

main()