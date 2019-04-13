import static java.lang.Math.sqrt;
import static java.lang.Math.floor;
import static java.lang.Math.log;
import static java.lang.Math.pow;

class Algorithm {
  
    private static final double PHI = (1 + sqrt(5)) / 2;
    private static final double PSI = (1 - sqrt(5)) / 2;

    private static int reverseFib(int fn) {
        return (int) floor(log((fn * sqrt(5) + sqrt(5 * pow(fn, 2) - 4)) / 2) / log(PHI));
    }

    private static int getK(int n) {
        return (int) floor(reverseFib(n) / 3);
    }

    private static int sumEven(int k) {
        double phi3 = pow(PHI, 3);
        double psi3 = pow(PSI, 3);

        return (int) ((1 / sqrt(5)) * (
            phi3 * ((1 - pow(phi3, k)) / (1 - phi3)) - psi3 * ((1 - pow(psi3, k)) / (1 - psi3))
        ));
    }

    public static void main(String[] args) {
        int N = 4000000;
        int k = getK(N);
        int S = sumEven(k);

        System.out.println(S);
    }

}
