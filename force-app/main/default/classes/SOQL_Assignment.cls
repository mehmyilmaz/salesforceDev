public with sharing class SOQL_Assignment {
   public static void soql_WhereClause() {
      list<Contact>  lstcontact = [select ID,LastName from Contact WHERE LastName LIKE '%A%'];
      system.debug('contact list: ' + lstcontact);
      //Display the  size of the  variable
      integer sizeOflstcontact = lstcontact.size();
      system.debug('size of the contact list: ' + sizeOflstcontact);
   }

      public static void soql_formethod() {
         list<Contact>  lstcontact = [select LastName,Phone  FROM Contact];

         for (Contact eachContact : lstcontact)  {
              System.debug('Last name is '+eachContact.LastName+ ' and phone number is '+
                eachContact.Phone);
         }

      }


      public static List<Contact> conlst(String accName){

         List<Contact> lstCon = [SELECT Id,Name,Account.Name,AccountId FROM Contact WHERE Account.Name =: accName];
       
       
         return lstCon;
     }


     public static List<Account> accLst(String accNameSubstring) {
      List<Account> accountList = [ SELECT Id, Name,  (SELECT CaseNumber, Origin, Priority, Subject  FROM Cases) FROM Account WHERE Name LIKE :('%' + accNameSubstring + '%')];
      
       return accountList;
  }
}                   