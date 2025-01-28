public  class DmlExamples {

     // En yüksek AnnualRevenue lu accountu bulup onun description fieldını update edelim.
    public static void updateHighestAnnualRevenuAccDescription(){
        Account acc = [SELECT Id,AnnualRevenue FROM Account WHERE AnnualRevenue != null ORDER BY AnnualRevenue DESC LIMIT 1];
        String message = date.today() + ' tarihi itibariyle Annualrevenue su en büyük olan recordtur ===>  ' + acc.AnnualRevenue;
        acc.Description = message;
        update acc;
    }
      
    // Son 15 gün içinde create edilmiş olan, Closed olmayan ve Amountu en büyük olan Opportunity recorduna task create eden method yazalım.


    public static void createTaskToHighsetAmountOpp(){
        List<Opportunity> Opportunities = [SELECT Id,Name FROM Opportunity WHERE Amount != null AND CreatedDate = LAST_N_DAYS :15 AND StageName NOT In ('Closed Won' , 'Closed Lost') ORDER BY Amount DESC LIMIT 1 ];


        if (!Opportunities.isEmpty()) {
            Opportunity opp = Opportunities[0];
            Task task = new Task();

            task.Subject = 'New Task For Opp';
            task.Priority = 'Hight';
            task.Status = 'Not Started';
            task.WhatId = opp.Id;
            task.ActivityDate = Date.today().addDays(7);

            insert task;
        }


    }
}