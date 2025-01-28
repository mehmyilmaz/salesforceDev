public class ForLoopsTr {
    // 1 den n e kadar sayilarin toplamini veren ve integer bir parametre alan bir method yazin.
    public void toplam (Integer num) {
        
         Integer sum = 0;


        for (Integer i=1; i<=num; i++) {
             sum = sum + i;

        }
        System.debug(sum);
    }



    public void carpTablosu(Integer num) {
        for (Integer i=1; i<=num; i++) {
            Integer carpim = num*i;
            System.debug(i + ' x' + num + '=' + carpim);
        }
    }


    
    public Integer uceBoluneniBulma(Integer num) {
        Integer counter = 0;
        for (Integer i=1; i<=num; i++) {
             if (Math.mod(i, 3) == 0) {
                counter ++;
             }
        }
        return counter;
    }   
}