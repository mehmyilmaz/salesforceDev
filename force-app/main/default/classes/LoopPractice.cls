public class LoopPractice {
    public static List<Integer> findingFactors(Integer num) {
        List<Integer> factors = new List<Integer>();
        for (Integer i = 1; i <= num; i++) {
            if (Math.Mod(num, i) == 0) {
                factors.add(i);
            }
        }
        System.debug('Factors of ' + num + ': ' + factors);
        return factors;
    }
   
}