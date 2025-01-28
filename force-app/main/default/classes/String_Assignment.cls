public  class String_Assignment {
   public string localString1(){
     string localString = 'Thanks for the session on the string';
     System.debug(localString);

     Integer lenght = localString.length();
     System.debug(lenght);

     String upperCase = localString.toUpperCase();
     System.debug(upperCase);

     Boolean checkContain = localString.contains('session');
     System.debug('Check string session is present '+ checkContain);

     Boolean sessionCheck = localString.contains('sessions');
     System.debug('Check string sessions is present'+ sessionCheck);


     Boolean checkSessionUpper = localString.toUpperCase().contains('SESSION');
     System.debug('check string session is upper case '+ checkSessionUpper);

     return localString;
   }
}