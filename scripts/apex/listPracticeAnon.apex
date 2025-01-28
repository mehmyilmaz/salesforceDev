ListPractice.findDay(2);
ListPractice.findDay(7);
ListPractice.findDay(0);
ListPractice.findDay(8);
ListPractice.findDay(4);
ListPractice.findDay(9);
ListPractice.findDay(-1);



ListPractice.listMethods();

List<String> fruit = new List<String>{' Mango',' Strawberry',' Cherry',' Banana',' Watermelon',' Apple',' Orange',' Tangerine'};
// System.debug(fruit);

System.debug(ListPractice.sortDesc(fruit));


//Map list abought city and zipcode
Map<Integer, String> zipCodeToCityMap = new Map<Integer, String>();

zipCodeToCityMap.put(60606, 'Chicago');
zipCodeToCityMap.put(33162, 'Miami');
zipCodeToCityMap.put(11222, 'NewYork');
zipCodeToCityMap.put(332211, 'California');
zipCodeToCityMap.put(5361423, 'Ohio');

//check contains map for 204101
System.debug('check contains '+zipCodeToCityMap.containsKey(204101));

//print alll zip code
System.debug('print all zip code '+zipCodeToCityMap.keySet());

//print all city 
System.debug('print all city '+zipCodeToCityMap.values());

//print number of map
System.debug('print size '+zipCodeToCityMap.size());

//create  a set 
Set<Integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();

System.debug('set ' +uniqueZipCodeSet);

//Create a LIST 
List<String> cityNameList = zipCodeToCityMap.values();
System.debug('List ' +cityNameList);


//map is empty 
if (zipCodeToCityMap.isEmpty()) {
    System.debug('Map is empty ');
}else {
    System.debug('map is not empty');
}

/* map has key and values , key we can not change 
set  does not allow dublicates
List duplicates are allowed 
*/


