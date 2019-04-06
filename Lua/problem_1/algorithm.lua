function sum(n, k)
  d = math.floor(n / k)
  return math.floor(k * (d * (d + 1)) / 2)
end

function main()
  local n = 999
  local s3 = sum(n, 3)
  local s5 = sum(n, 5)
  local s15 = sum(n, 15)
  
  local s = s3 + s5 - s15

  print(s)
end

main()
