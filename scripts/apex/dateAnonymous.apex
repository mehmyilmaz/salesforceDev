Integer yil = 2024;
Integer ay = 12;
Integer gun = 9;

Date bugun = Date.today();
System.debug(bugun);
Integer bugunyil = bugun.year();
Integer buAy = bugun.month();
Integer bugunum = bugun.day();

System.debug('Tarih '+ bugun + ',yillardan '+ bugunyil+ ', aylardan' +buAy + ', gunlerden' + bugunum);

Date yeniYil = Date.newInstance(2024, 12, 31);
Integer kalanGunSayisi = bugun.daysBetween(yeniYil);

System.debug(kalanGunSayisi);

Integer yilInKacinciGunu = bugun.dayOfYear();
System.debug(yilInKacinciGunu);

Boolean artikYilMi = Date.isLeapYear(bugunyil);
System.debug(artikYilMi);


Datetime dt = Datetime.newInstance(2000, 10, 28, 15, 47, 26);

System.debug(dt);

Integer saat = dt.hour();
System.debug(saat);