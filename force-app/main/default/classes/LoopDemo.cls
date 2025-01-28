public class LoopDemo {
   public void print_int_while() {
       Integer count = 1;
       while (count <= 25) {
           System.debug(count);
           count++;
       }
       
   }
   public void print_N_numbers(integer n){
    for (integer i = 0 ; i< n ; i++){
        System.debug(i);
    }
   }

   public void print_N_odd_numbers(integer startInt, integer endInt){
    // if i is equal to startInt or smaller than endInt,
    // i is less than endInt.
    // i is increased by 1
       for (Integer i = startInt; i < endInt; i++) {
         integer remainderI = math.mod(i, 2);

         // modI == 1 then, it is an odd number
         if (remainderI == 1) {
             System.debug(i);
         }
       }
   }
}