public with sharing class DML_Assign {
    public static void dml_insert(){

        List<Account> lstAcc = new List<Account>();
       for (Integer i = 1; i < 5; i++) {
        Account acc = new Account();
        acc.Name = 'mehmet Assignment '+i;
         lstAcc.add(acc);
       }
       insert lstAcc;
    }
    public static void updating_dml(){
        Account acc1 = new Account();
        acc1.Name = 'Account Created ';
        insert acc1;


        Account updatedAcc = [SELECT Id,Name FROM Account WHERE Name LIKE 'Account Created%'];
        updatedAcc.Name = 'Account Update';
        update updatedAcc;


        
    }
}