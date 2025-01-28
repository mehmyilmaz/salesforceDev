public with sharing class DMLPractice {
   public static void insertSingle(String accName){
        
        Account acc = new Account();
        acc.name = accName;
        insert acc;
        
        Account acclst =[SELECT Id,Name FROM Account WHERE Name = :accName];
        System.debug(acclst);
   }

   public static List<Account> updateBulk(String uppName){
       List<Account> lstAccount = [SELECT Id,Name FROM Account WHERE Name LIKE :'%'+uppName+'%'];
       integer counter = 1;
       for (Account acc : lstAccount) {
         acc.Name += ' upd' +counter;
          counter++;
       }
       if (!lstAccount.isEmpty()) {
         update lstAccount; 
        }
       return lstAccount;
   }
}