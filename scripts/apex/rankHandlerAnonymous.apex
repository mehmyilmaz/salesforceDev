RankHandler rh = new RankHandler();

String p1 = rh.rankPrize(1);
System.debug('p1 is => ' + p1);

String p2 = rh.rankPrize(2);
System.debug('p2 is => ' + p2);

String p3 = rh.rankPrize(3);
System.debug('p3 is => ' + p3);

String p5 = rh.rankPrize(5);
System.debug('p5 is => ' + p5);

String p11 = rh.rankPrize(11);
System.debug('p11 is => ' + p11);


RankHandler rh2 = new RankHandler();

String ps1 = rh2.rankPrizeSwitch(1);
System.debug('ps1 is => ' + ps1);

String ps2 = rh2.rankPrizeSwitch(2);
System.debug('ps2 is => ' + ps2);

String ps3 = rh2.rankPrizeSwitch(3);
System.debug('ps3 is => ' + ps3);

String ps5 = rh2.rankPrizeSwitch(5);
System.debug('ps5 is => ' + ps5);

String ps11 = rh2.rankPrizeSwitch(11);
System.debug('ps11 is => ' + ps11);

String ps111 = rh2.rankPrizeSwitch(-5);
System.debug('ps111 is => ' + ps111);