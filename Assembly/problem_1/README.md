# Problem 1

## Multiples of 3 and 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

### Run:

#### Linux
```sh
nasm -f elf algorithm.asm && ld -m elf_i386 algorithm.o -o algorithm && rm algorithm.o
```

```sh
./algorithm
```

### Answer:
`233168`

### Math equation:

![](/.github/equations/problem_1/1.svg)