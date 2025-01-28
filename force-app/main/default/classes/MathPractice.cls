public  class MathPractice {
    public void getAverage(Integer num1, Integer num2, Integer num3){
        Integer sum = num1+num2+num3;
        Integer average = sum/3;
        System.debug('output is ' +average);
    }

    public Decimal practiceTwo (Integer piece,String  order){
        Decimal price;
        order = order.toUpperCase();
        
         if (order == 'BREAD') {
            price = 1;
         }else if (order == 'BAGEL') {
           price = 2;
         }else if (order == 'CAKE') {
            price = 3;
         }else {
            System.debug('order on the menu');
         }

         return piece*price;

    }
}