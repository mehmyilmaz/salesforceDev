trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update,
                                          before delete, after delete, after undelete) {
       if (Trigger.isBefore && Trigger.isInsert){
        System.debug('Before insert calisti');
       }else if (Trigger.isAfter && Trigger.isInsert){
        System.debug('After insert calisti');
       }else if (Trigger.isBefore && Trigger.isUpdate){
        System.debug('Before update calisti');
       } else if (Trigger.isAfter && Trigger.isUpdate){
        System.debug('After update calisti');
       }else if (Trigger.isBefore && Trigger.isDelete){
        System.debug('Before delete calisti');
       }else if (Trigger.isAfter && Trigger.isDelete){
        System.debug('After delete calisti');
       }else if (Trigger.isAfter && Trigger.isUndelete){
        System.debug('After undelete calisti');
       }


       
       
}