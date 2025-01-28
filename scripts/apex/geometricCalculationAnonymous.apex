GeometricCalculation gc = new GeometricCalculation();


Boolean sonuc3 = gc.containsZero(7, 84, 29);
System.debug(sonuc3);

Boolean sonuc4 = gc.containsZero(10,-315,4398);
System.debug(sonuc4);

Boolean sonuc5 = gc.containsZero(61, 41, 73);
System.debug(sonuc5);


Decimal sonuc2 = gc.calcVolume(4.4, 6.02, 1.25).setScale(2);
System.debug(sonuc2);




String sonuc = gc.calcPerimeter(14, 20);
System.debug(sonuc);


