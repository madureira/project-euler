local PHI = (1 + math.sqrt(5)) / 2;
local PSI = (1 - math.sqrt(5)) / 2;

function reverseFib(fn)
    return math.floor(math.log((fn * math.sqrt(5) + math.sqrt(5 * math.pow(fn, 2) - 4)) / 2) / math.log(PHI));
end

function getK(n)
    return math.floor(reverseFib(n) / 3);
end

function sumEven(k)
    local phi3 = math.pow(PHI, 3);
    local psi3 = math.pow(PSI, 3);

    return math.floor((1 / math.sqrt(5)) * (
        phi3 * ((1 - math.pow(phi3, k)) / (1 - phi3)) - psi3 * ((1 - math.pow(psi3, k)) / (1 - psi3))
    ));
end

function main()
  local N = 4000000;
  local k = getK(N);
  local S = sumEven(k);

  print(S)
end

main()