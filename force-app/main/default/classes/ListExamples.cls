public class ListExamples {
    
    public static void karakterSayisiHesabi(List<String> isimler){
          for (String  isim : isimler) {
            System.debug(isim +' ismi '+isim.length()+ ' karakterden olusmaktadir. ');
          }
    }

    //Parametre ile verilen decimal sayilarda en kucugunu bulan ve return eden bir metot yazalim
    public static Decimal findSmallest(List<Decimal> nums){
        Decimal smallest;
        if (!nums.isEmpty()) {
            smallest = nums[0];
            for (Decimal num : nums) {
                if (num<smallest) {
                    smallest = num;
                }
            }
        }
        return smallest;
    }
}