public class GeometricCalculation {
    public String calcPerimeter(Integer num1,Integer num2 ){
        Integer result = (num1+num2)*2;
        String result2 = 'The parimetre is '+result +' meters.'; 
        
        return result2;
    }

    public Decimal calcVolume(Decimal num1, Decimal num2, Decimal num3){
        Decimal result = num1 * num2 *num3;


        return result;

    }

    public Boolean containsZero(Integer num1, Integer num2, Integer num3){
        Integer sum = num1+num2+num3;
        String cumle = ' '+sum;

        Boolean sum2 = cumle.contains('0');
        return sum2;
    }
}