class Algorithm {

    public static int evenFib(int previous, int term, int sum) {
        int total = previous + term;

        if (total > 4000000) {
            return sum;
        }

        if (total % 2 == 0) {
            sum += total;
        }

        return evenFib(term, total, sum);
    }

    public static void main(String[] args) {
        int sum = evenFib(1, 1, 0);

        System.out.println(sum);
    }

}