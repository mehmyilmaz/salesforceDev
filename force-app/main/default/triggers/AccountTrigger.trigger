trigger AccountTrigger on Account (before insert) {
       System.debug('--------trigger start-------');
       List<Account> newAccounts = trigger.new;
      for (Account acc : newAccounts) {
        acc.ShippingStreet = acc.BillingStreet;
        acc.ShippingCity = acc.BillingCity;
        acc.ShippingState = acc.BillingState;
        acc.ShippingPostalCode = acc.BillingPostalCode;
        acc.ShippingCountry = acc.BillingCountry;
        
      }
        

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