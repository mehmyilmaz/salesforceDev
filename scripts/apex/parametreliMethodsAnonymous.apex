ParametreliMethodlar pm = new ParametreliMethodlar();
pm.dinamikSelamlama('mehmet selim');

ParametreliMethodlar pm1 = new ParametreliMethodlar();
pm1.toplama(25, 35);


ParametreliMethodlar pm4 = new ParametreliMethodlar();
Integer sonuc = pm4.carpma(5, 7);
system.debug(sonuc);

ParametreliMethodlar pm5 = new ParametreliMethodlar();
String sonuc2 = pm5.basamakSayisi(59876);
System.debug(sonuc2);

ParametreliMethodlar pm6 = new ParametreliMethodlar();
Integer sonuc3 = pm6.yasHesaplama(Date.newInstance(2000, 01, 01));
System.debug(sonuc3);

ParametreliMethodlar pm7 = new ParametreliMethodlar();
Decimal sonuc4 = pm7.toCelcius(48.3);
System.debug(sonuc4);