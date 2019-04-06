def evenFib(previous, term, sum):
    total = previous + term;

    if total > 4000000:
        return sum

    if total % 2 == 0:
        sum += total

    return evenFib(term, total, sum)

def main():
    sum = evenFib(1, 1, 0)
    print(sum)

main()