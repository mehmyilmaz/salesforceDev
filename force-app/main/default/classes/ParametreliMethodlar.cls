public class ParametreliMethodlar {
    public void selamlama(){
        System.debug('hosgeldiniz');
        
    }
    public void dinamikSelamlama(string isim ) {
        System.debug('hosgeldiniz '+isim);

    }
    public void toplama(Integer num1 , Integer num2) {

        Integer toplam = num1+num2;
        System.debug(toplam);
  }
  public Integer carpma(Integer num1,Integer num2){
      Integer result =num1*num2;
      return result;
  }
  public String basamakSayisi(Integer num){
    String str = String.valueOf(num);
    String result = num +' sayisi ' + str.length()+ ' basamaklidir';
    return result;

  }
  public Integer yasHesaplama(Date dogumTarihi) {
       Date bugun = Date.today();
       Integer gunFarki = dogumTarihi.daysBetween(bugun);
       Integer yas = gunFarki/365;
       return yas;

  }
   //Parametrede verilen fahrenaytı Celciusa ceviren ve return eden method yazalım
    // Temperature in degrees Celsius (°C) = (Temperature in degrees Fahrenheit (°F) - 32) * 5/9.
    public Decimal toCelcius (Decimal fahrenheit){
        Decimal celcius = (fahrenheit-32)*5/9;
        return celcius.setScale(2);
    }

}