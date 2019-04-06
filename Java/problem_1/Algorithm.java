class Algorithm {

    public static int sum(int n, int k) {
        return k * ((n / k) * (n / k + 1) / 2);
    }

    public static void main(String[] args) {
        int n = 999;
        int s3 = sum(n, 3);
        int s5 = sum(n, 5);
        int s15 = sum(n, 15);

        int s = s3 + s5 - s15;

        System.out.println(s);
    }

}
