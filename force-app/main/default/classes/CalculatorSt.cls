public class CalculatorSt {
    public static Integer add(integer a, Integer b) {
        
        
        return a+b;  
    }

    public static Integer add(integer x, integer y, integer z) {

        return x+y+z;
        
    }

    public static integer add(list<integer> intList){
        integer sum = 0;


        for (integer eachInt : intList) {
            System.debug(eachInt);
            sum += eachInt;
        
        }
    
        System.debug(sum);
        return sum;

    }
}