# Problem 2

## Even Fibonacci numbers

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

### Run:

```sh
javac Algorithm.java
```

```sh
java -cp . Algorithm
```

### Answer:
`4613732`

### Math equation:

Using [Binet’s formula](https://en.wikipedia.org/wiki/Fibonacci_number#Relation_to_the_golden_ratio) for **O(1)** solution:

![](/.github/equations/problem_2/1.svg)

Where **φ** (phi) is the golden ration and **ψ** (psi) is the silver ratio.

![](/.github/equations/problem_2/2.svg)

Following the same logic of considering the third terms only (index as 3i), the sum could be deducted as below:

![](/.github/equations/problem_2/3.svg)

We can use the *reverse fibonacci formula* to find n the last index:

![](/.github/equations/problem_2/4.svg)

Then we can deduct the index of the last even number **3k**:

![](/.github/equations/problem_2/5.svg)