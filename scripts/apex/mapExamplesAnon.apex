Map<String, Integer> yaziliNotlari = new Map<String, Integer>();   

yaziliNotlari.put('Ahmet', 85);
yaziliNotlari.put('Gul', 78);
yaziliNotlari.put('Mustafa', 93);
yaziliNotlari.put('Esma', 100);
yaziliNotlari.put('Deniz', 88);
yaziliNotlari.put('Ipek', 91);
System.debug('yaziliNotlari '+yaziliNotlari);

Integer ogrenciSayisi = yaziliNotlari.size();
System.debug(ogrenciSayisi);

Integer gulunNotu = yaziliNotlari.get('Gul');
System.debug(gulunNotu);


Set<String> ogrenciIsimleri = yaziliNotlari.keySet();
System.debug('Ogrenci isimleri '+ogrenciIsimleri);//Ogrenci isimleri {Ahmet, Deniz, Esma, Gul, Ipek, Mustafa}

List<Integer> ogrenciNotlari = yaziliNotlari.values();
System.debug('yazili notlari '+ogrenciNotlari);

Decimal yaziliOrt;
Integer yaziliNottoplami  =0;

for (Integer ogrNotu : ogrenciNotlari) {
    yaziliNottoplami +=ogrNotu;

}
yaziliOrt = yaziliNottoplami / ogrenciSayisi;
System.debug('yazili ortalamasi '+yaziliOrt);



///productCatalog

ProductCatalog.displayProductPrices();


string result1 = ProductCatalog.getProductPrice('Laptop');
System.debug(result1);
