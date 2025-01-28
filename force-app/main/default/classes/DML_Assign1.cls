public with sharing class DML_Assign1 {
   public  List<Account> insertRecords(){
    list<Account> lstAccount = new List<Account>();
       for (Integer i = 1; i < 21; i++) {
          Account accRec = new Account();
          accRec.Name = 'Test Account Created'+ i;
          lstAccount.add(accRec);
       }
       insert lstAccount;
       return lstAccount;
   }
   public List<Account> updateRecords(){
     List<Account> accQ = [SELECT Id,Name FROM Account WHERE Name LIKE 'Test Account%' LIMIT 20];
      List<Account> lstUpdateAcc = new List<Account>();
      for (Account accRec : accQ) {
         accRec.Name = 'Test Account Created Updated';
         lstUpdateAcc.add(accRec);
      }
      update lstUpdateAcc;
      return lstUpdateAcc;
   }

  
}