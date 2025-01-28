map<string, string> mapCntCurrency = new map<String, String>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Poland', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');

System.debug('map of country and its currency ==> '+mapCntCurrency);

string IndiaCurrency =mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkiye');

System.debug('India currency ='+ IndiaCurrency);
System.debug(' Turkiye currency = '+TurkeyCurrency);

Set<String> countrySet = mapCntCurrency.keySet();
System.debug('country in map: '+countrySet);

List<String>  currencyList = mapCntCurrency.values();
System.debug('currency in map: '+currencyList);

Set<String> countries = mapCntCurrency.keySet();

for (String eachKey : countrySet) {
    String printString = ' country is '+ eachKey;

    string eachValue = mapCntCurrency.get(eachKey);
    printString+= ' , its currency is '+eachValue;
    
    System.debug(printString);

}