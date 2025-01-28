trigger AccountTrigger on Account (before insert,before update,before delete ,after insert, after update ,after delete,after undelete) {
       System.debug('--------trigger start-------');


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