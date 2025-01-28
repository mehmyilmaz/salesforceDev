public  class SoqlPractice {
   public static List<Opportunity> topOpportunites(){
          List<Opportunity> top5opp = [SELECT Amount,Name,StageName FROM Opportunity ORDER BY Amount DESC LIMIT 5];
          
          return top5opp;
   }

   public static List<Opportunity> fetchOppDetails(){
      List<Opportunity> oppDetails = [SELECT Name,CloseDate,StageName FROM Opportunity WHERE Name LIKE 'E%'];

      return oppDetails;
   }
}