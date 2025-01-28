string str='  sAlEsFoRcE oĞrEnEcEğIm Ve DeVeLoPeRxYz1 oLaCaĞıM. ';
//String methodları kullanarak str nin değerini-->
//Salesforce ogreneceğim ve developer olacağim şekline çevirin.
System.debug(str);
Integer karakterSayisi = str.length();
System.debug(karakterSayisi); //52

string str1 = str.trim();
system.debug(str1);//sAlEsFoRcE oĞrEnEcEğIm Ve DeVeLoPeRxYz1 oLaCaĞıM.
//System.debug(str1.length()); //49
karakterSayisi = str1.length(); 
System.debug(karakterSayisi); //49

str1 = str1.toLowerCase();
System.debug(str1); //salesforce oğreneceğim ve developerxyz1 olacağım.

str1=str1.remove('xyz1');
System.debug(str1); //salesforce oğreneceğim ve developer olacağım.

str1 = str1.capitalize();
System.debug(str1); //Salesforce oğreneceğim ve developer olacağım.


Boolean isExistDeveleoper = str1.contains('DEVELOPER');
System.debug(isExistDeveleoper);//false

isExistDeveleoper = str1.containsIgnoreCase('DEVELOPER');
System.debug(isExistDeveleoper);//true

Integer indexOfDeveloper = str1.indexOf('developer');
System.debug(indexOfDeveloper); //26

String motto = str1.substring(indexOfDeveloper).toUpperCase();
System.debug(motto);// DEVELOPER OLACAĞIM.