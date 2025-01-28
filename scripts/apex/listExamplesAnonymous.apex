//  Kırtasiye ürünlerini tutan bir list create edin; 
// 1. Başlangıçta 3 ürünle listeyi oluşturun daha sonra 3 ürünü tek tek ekleyin. 
// 2. Liste boş mu değil mi kontrol edin 
// 3. Listede kaç eleman olduğunu yazdırın 
// 4. Listenin 2. ve 4. index teki elemanını yazdırın 
// 5. Listenin son elemanını yazdırın 
// 6. Listede Harita 'nın olup olmadığını kontrol edin 
// 7. Listedeki elemanları sıralayın 
// 8. Farklı bir liste daha oluşturun ve ilk listemizle eşit mi diye kontrol edin 
// 9. İkinci listeyi ilk listemize ekleyin 
// 10.Listenin ilk elemanını silin 
// 11.Listenin elemanlarını uppercase olarak tek tek yazdırın.


// 1. Başlangıçta 3 ürünle listeyi oluşturun daha sonra 3 ürünü tek tek ekleyin. 
List<String> kirtasiyeElemanlari = new List<String>{'Silgi ', ' Kalem ', ' Cetvel'};
//System.debug(kirtasiyeElemanlari);

kirtasiyeElemanlari.add('Defter');
kirtasiyeElemanlari.add('Kitap');
kirtasiyeElemanlari.add('Canta');

System.debug(kirtasiyeElemanlari);   //(Silgi ,  Kalem ,  Cetvel, Defter, Kitap, Canta)

// 2. Liste boş mu değil mi kontrol edin 
Boolean listeBosmu = kirtasiyeElemanlari.isEmpty();
System.debug(' liste bosmu '+listeBosmu);



// 3. Listede kaç eleman olduğunu yazdırın 
integer size2 = kirtasiyeElemanlari.size();
System.debug('Eleman sayis ==> '+size2);


// 4. Listenin 2. ve 4. index teki elemanını yazdırın 

String ilkEleman = kirtasiyeElemanlari.get(0);
System.debug(ilkEleman);

String ikinciIndexliEleman = kirtasiyeElemanlari.get(2);
System.debug(ikinciIndexliEleman);

String dortIndexEleman = kirtasiyeElemanlari.get(4);
System.debug(' Dort uncu eleman '+ dortIndexEleman);


// 5. Listenin son elemanını yazdırın 
String sonEleman  = kirtasiyeElemanlari.get(size2 - 1);
System.debug(' son eleman '+sonEleman);

// 6. Listede Harita 'nın olup olmadığını kontrol edin

Boolean haritaVarmi = kirtasiyeElemanlari.contains('Harita');
System.debug(' Harita var mi '+haritaVarmi);

// 7. Listedeki elemanları sıralayın 
kirtasiyeElemanlari.sort();
System.debug(kirtasiyeElemanlari);

// 8. Farklı bir liste daha oluşturun ve ilk listemizle eşit mi diye kontrol edin 
List<String> kirtasiyeElemanlari2 = new List<String>{'Zimba ',' Harita ', ' Flut '};
Boolean listelerEsitmi = kirtasiyeElemanlari.equals(kirtasiyeElemanlari2);

System.debug('Listeler esit mi ' +listelerEsitmi);


// 9. İkinci listeyi ilk listemize ekleyin 
kirtasiyeElemanlari.addAll(kirtasiyeElemanlari2);
System.debug(kirtasiyeElemanlari);//( Cetvel,  Kalem , Canta, Defter, Kitap, Silgi , Zimba ,  Harita ,  Flut )


// 10.Listenin ilk elemanını silin 
String removeFirst = kirtasiyeElemanlari.remove(0);
System.debug('Remove item ' +removeFirst);
System.debug('After remove item list ==>'+kirtasiyeElemanlari);


// 11.Listenin elemanlarını uppercase olarak tek tek yazdırın.
for (Integer i = 0; i <kirtasiyeElemanlari.size(); i++) {
    System.debug(kirtasiyeElemanlari.get(i).toUpperCase());
}


//Integerlerdan olusan bir liste create edin.


List<Integer> IstInteger = new List<Integer>();
IstInteger.add(21);
IstInteger.add(15);
IstInteger.add(19);
IstInteger.add(145);
IstInteger.add(3);
IstInteger.add(637);
System.debug(IstInteger); //(21, 15, 19, 145, 3, 637)

//1. Listedeki en kucuk elemani bulun 
IstInteger.sort();
System.debug(IstInteger);//(3, 15, 19, 21, 145, 637)

Integer smallestNum = IstInteger.get(0);
System.debug(' smallestNum ==> '+smallestNum);//3

//2. Listedeki tum elemanlari toplayip sonucu yazdirin
Integer total = 0;
for (Integer num : IstInteger) {
    total = total+num;
    System.debug(num);

}
System.debug(total);


List<String> names = new List<String>{'Ahmet','Yilmaz','Nejla','Ibrahim','Mehmet','Okan','Enes'};
ListExamples.karakterSayisiHesabi(names);

List<Decimal> ondalikSayilar = new List<Decimal>{45.3,23.6,2.8,123.67,56.5};
Decimal smallest = ListExamples.findSmallest(ondalikSayilar);
System.debug(smallest);