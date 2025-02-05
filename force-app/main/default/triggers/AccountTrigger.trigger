trigger AccountTrigger on Account (before insert,before update ,after insert,after update,before delete,after delete,after undelete) {
       System.debug('--------trigger start-------');

       if (Trigger.isBefore) {
           for (Account  eachAccount : trigger.new) {
                 if (trigger.isInsert && eachAccount.active__c == 'Yes') {
                    eachAccount.Description='Account is now active. Enjoy!'; 
                    
                 }
           }
       }


















      /* List<Account> newAccounts = trigger.new;
      for (Account acc : newAccounts) {
        //Throw error if AnnualRevenue is less than 100000
        if (acc.AnnualRevenue < 100000) {
            acc.addError('AnnualRevenue cant be less than 100000');
        }
        //Copy Billing Address into Shipping Address
          if (acc.ShippingStreet == null && acc.ShippingCity == null && acc.ShippingState == null && acc.ShippingPostalCode == null && acc.ShippingCountry == null) {
               acc.ShippingStreet = acc.BillingStreet;
               acc.ShippingCity = acc.BillingCity;
               acc.ShippingState = acc.BillingState;
               acc.ShippingPostalCode = acc.BillingPostalCode;
               acc.ShippingCountry = acc.BillingCountry;

            }
        }*/

        // Map<id,Account> trgNewMap = trigger.newMap;
        // Map<id,Account> trgOldMap = trigger.oldMap;

        // if (Trigger.isBefore && Trigger.isInsert) {
        //     integer countWebsiteChange =0;
        //     for (Id  eachId : trgNewMap.keySet()) {
        //         Account newAccount = trgNewMap.get(eachId);
        //         Account oldAccount = trgOldMap.get(eachId);

        //         System.debug('new account website field value '+newAccount.website);
        //         System.debug('old account website field value '+oldAccount.website);

        //         if (newAccount.Website != oldAccount.Website) {
        //             System.debug('for account '+newAccount.Name+ 'new Website is '+ newAccount.website);
        //             countWebsiteChange++;
        //         }
        //     }
        //     System.debug('count of website change = '+countWebsiteChange);


          

        // // List<account> accTriggerNew = trigger.new;
        // // List<account> accTriggerOld = trigger.old;

        // // if (trigger.isAfter && trigger.isUpdate) {
        // //     Set<Id> setIds = trgNewMap.keyset();
        // //     for (Id eachID : setIds) {
        // //         //get new Account from eachID (key)

        // //         //.get method of map to get account record 
        // //         Account newAcc = trgNewMap.get(eachID);
        // //         Account oldAcc = trgOldMap.get(eachID);
                

        // //         string newName = newAcc.Name;
        // //         string oldName = oldAcc.Name;
        // //         System.debug('new account name  is  '+newName +', old account was '+oldName);
        // //     }

           
        // }


        

    //    


    //  if (Trigger.isBefore && Trigger.isInsert) {
    //    System.debug('trigger.new in BEFERO INSERT --> '+trigger.new);
    //  }
    //  if (Trigger.isAfter  && Trigger.isInsert) {
    //     System.debug('trigger.new in AFTER INSERT --> '+trigger.new);
    //  }

    //    List<Account> newAccounts = trigger.new;

    //    if (Trigger.isAfter) {
    //       System.debug('after insert/ update new records : '+newAccounts);
    //       System.debug('after insert/ update new records size : '+newAccounts.size() );
    //       for (Account eachAcc : newAccounts) {
    //         System.debug('new acc id is  '+eachAcc.Id+ ' ,new acc name is  '+ eachAcc.Name);
    //       }
         
    //    }
}