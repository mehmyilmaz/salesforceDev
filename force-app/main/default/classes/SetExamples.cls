public  class SetExamples {
    // Parametre olarak integer bir list alan bir metot yazin. Bu metot tek sayilari ayri bir sette, cift sayilari ayri bir sette toplasin ve yazdirsin.. (parametrede birden fazla aynı değer olsun).

    public static void sayilarTekCiftAyirma(List<Integer> sayilar){
        Set<Integer> tekSayilar = new Set<Integer>();
        Set<Integer> ciftSayilar = new Set<Integer>();

        for (Integer sayi : sayilar) {
            if (Math.mod(sayi, 2)==0) {
                ciftSayilar.add(sayi);
            }else {
                tekSayilar.add(sayi);
        
            }
        }
        System.debug('tekSayilar '+tekSayilar);
        System.debug('ciftSayilar '+ciftSayilar);
    }

    
}