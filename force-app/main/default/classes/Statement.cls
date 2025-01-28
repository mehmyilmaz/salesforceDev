public  class Statement {
    public String selamlama(Time zaman){
       integer saat = zaman.hour();
       String selam;

       if (saat < 10) {
        selam = 'Hello';

       }else if (saat < 20) {
        selam ='Iyi gunler';

       }else {
        selam ='iyi aksamlar';
       }
       
       
        return selam;

    }


    /*  Parametredeki meyveye göre meyvenin fiyat bilgisini dönen bir parametreli method create edin.Switch statement kullanın. 
     Orange=0.59 
     Apple=0.32 
     Banana=0,48 
     Cherry=3,00 
     Mango=2.79 
     Watermelon=6,89 */
   public Decimal switchmethod(string meyve){
        Decimal fiyat;
        switch on meyve {
            when 'Orange' {
                fiyat = 0.59;
            }
            when 'Apple' {
                fiyat = 0.32;
            }
             when 'Banana' {
                fiyat = 0.48;
            }
             when 'Cherry' {
                fiyat = 3.00;
            }
             when 'Mango','Melon' {
                fiyat = 2.79;
            }
             when 'Watermelon' {
                fiyat = 6.89;
            }
             when else {
                fiyat = 0;
                System.debug('Bu urun bulunmamaktadir');
            }
        }

        return fiyat;
   }  
   
   // parametre ile Verilen istanbul telefon numaralarinin Avrupa yakasina mi Anadolu yakasina mi ait oldugunu donen bir metot yazin? 
    public String numaraKontrol(string no) {
       String mesaj;
        Integer haneSayisi = no.length();
        if (haneSayisi == 10 && no.isNumeric()) {
            //Alan kontrol yapilacak
            String alanKodu = no.substring(0, 3);
           
            if (alanKodu == '212') {
                mesaj = 'Telefon numarasi Avrupa yakasina aittir';
                
            }else if (alanKodu =='216') {
                mesaj = 'Telefon numarasi Anadolu yakasina aittir';
            }else {
                mesaj = 'Telefon numarasi Istanbul a ait degildir';
            }
            
        }  else {
            mesaj = 'Verilen numara dogru degildir';
        }   

        return mesaj;
    }
    
     
}