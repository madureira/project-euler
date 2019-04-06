def sum(n, k):
    d = n // k
    return k * ((d * (d + 1)) // 2)

def main():
    n = 999
    s3 = sum(n, 3)
    s5 = sum(n, 5)
    s15 = sum(n, 15)

    s = s3 + s5 - s15

    print(s)

main()
