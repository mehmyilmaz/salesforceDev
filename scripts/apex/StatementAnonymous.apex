Statement obj1 = new Statement();
String result = obj1.selamlama(Time.newInstance(23, 55, 10, 25));
System.debug(result);


String result1 = obj1.selamlama(Time.newInstance(13, 55, 10, 25));
System.debug(result1);

String result2 = obj1.selamlama(Time.newInstance(5, 55, 10, 25));
System.debug(result2);


Statement st1 = new Statement();
Decimal res1 = st1.switchmethod('Orange');
System.debug(res1);

Decimal res2 = st1.switchmethod('Melon');
System.debug(res2);


Statement st2 = new Statement();
String  result = st2.numaraKontrol('2125462689');
System.debug(result);

String result3 = st2.numaraKontrol('2165462689');
System.debug(result3);

String result4 = st2.numaraKontrol('2225462689');
System.debug(result4);

String result5 = st2.numaraKontrol('2125462asas');
System.debug(result5);

