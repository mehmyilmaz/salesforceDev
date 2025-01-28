public  class SoqlExaplesTR {
   // StageName i 'Closed Won 'olan opp leri getiren, bu opp leri return bir method yazalim
   public static List<Opportunity> getClosedWonOpps(){
    List<Opportunity> opportunities = [SELECT Id,Name,CloseDate,StageName FROM Opportunity WHERE StageName = 'Closed Won'];

    return opportunities;
   }
   //Amount en buyuk olan Opportunity nin name ini return eden bir method yazalim 

   public static String getBiggestAmountOpportunityName(){
    Opportunity opp = [SELECT Id,Name,Amount FROM Opportunity ORDER BY Amount DESC NULLS LAST LIMIT 1 ];

     String oppName = opp.Name;
     return oppName;
   }


   // son 90 gun icinde create edilen opportunity recordlarini return eden method yazalim

    public static List<Opportunity> getCreatedInLast90Days(){
        List<Opportunity> opportunities = [SELECT Id,Name,Amount,CreatedDate FROM Opportunity WHERE CreatedDate = LAST_N_DAYS:90 ORDER BY Name];
        for (Opportunity opp : opportunities) {
            System.debug(opp.Name+'=>'+opp.Amount);
        }
        return opportunities;
   }
   

   // Parametre ile Case objesinin priority fieldının bilgisini alan ve buna gore recordları return eden bir method yazalım

   public static List<Case> getCaseRecordsByPriority(String priority){
      List<Case> cases =[SELECT Id,CaseNumber,Priority,Subject,Status FROM Case WHERE Priority =: priority];
      for (Case cs : cases) {
        System.debug(cs.Subject);
        System.debug(cs.Status);
      }
      return cases;
   }
   
   // Bagli oldugu accountun AnnualRevenue su parametre ile verilen miktardan buyuk olan Contactlari debug edelim 

     public static void getContactsRelatedAccMoreThanParam(Decimal amount){
          List<Contact> contacts = [SELECT Id,Name,AccountId,Account.Name,Account.   AnnualRevenue FROM Contact WHERE Account.AnnualRevenue >: amount];
           System.debug(contacts);
          for (Contact con : contacts) {
               System.debug('------------');
               System.debug(con.Name);
               System.debug(con.Account.Name);
               System.debug(con.Account.AnnualRevenue);

             }
    }
    

    // Herhangibir Opportunitinin bağlı oldugu Accountların sayısını return eden bir method yazalım.

    public static Integer getAccountSizeWithRelatedOpp(){
        List<Opportunity> lstOpp = [SELECT Id,AccountId FROM Opportunity WHERE AccountId != null];
        Set<Id> accIds = new Set<Id>();
        for (Opportunity opp : lstOpp) {
            accIds.add(opp.AccountId);
        }
         List<Account> lstAcc = [SELECT Id,Name FROM Account WHERE Id IN:accIds];
        for (Account acc : lstAcc) {
            System.debug('Account Id ==> ' + acc.Id + ' Account Name ==> ' + acc.Name);
        }

         return lstAcc.size();
     }

    public static Integer getAccountSizeWithRelatedOpp2(){
        List<Account> lstAcc = [SELECT Id,Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE AccountId !=null)];
        for (Account acc : lstAcc) {
            System.debug('Account Id ==> ' + acc.Id + ' Account Name ==> ' + acc.Name);
         }
      
        return lstAcc.size();
    }

    public static List<Contact> conlst(String accName){

          List<Contact> lstCon = [SELECT Id,Name,Account.Name,Account.Id FROM Contact WHERE Account.Name =: accName];
        
        
          return lstCon;
    }

   
    
}