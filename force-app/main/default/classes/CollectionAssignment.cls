public class CollectionAssignment {
  private static Set<String> countriesSet = new set<String>{'India', 'USA','Russia', 'Germany',
    'Singapore', 'Japan'};

   public static void printLowercase (){
    
    List<String> lowerCaseList = new List<String>();
    for (String country : countriesSet) {
        lowerCaseList.add(country.toLowerCase());
    }
    
    System.debug('Lowercase Countries: ' + lowercaseList);
   }

   public static void printUppercase (){
    
    List<String> UpperCaseList = new List<String>();
    for (String country : countriesSet) {
        UpperCaseList.add(country.toUpperCase());
    }
    

    System.debug('Uppercase Countries: ' + uppercaseList);
   }
  
    
  }

