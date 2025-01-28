public class DmlDemo {
    public static void dmlDemoInsert_stndObj1(){
        //1. create new instance 
        account acc = new Account();
        //2. set field values 
        acc.Name = 'Softinnovas';
        //final 
        insert acc; //this will create a new record.
    }

    public static void dmlDemoInsert_stndObj(){
         Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Project_Name__c = 'Learn dml';
         sp.Description__c = 'learn dml batch28';
         sp.Status__c = 'New';

         insert sp;
    }


    public static void dmlUpdateDemo_stndObj1(){
        Account ac = new Account();
        ac.Name = 'Salesforce';
        insert ac;
        System.debug('record is inserted now ac : '+ac);

        ac.Name = 'Salesforce Inc.';
        update ac;
    }

    public static void dmlDemoUpdate_stnObj2(){
         Account ac = [select id,name from account where name like 'SoftInnovas%' limit 1];
         //update account 
         ac.Name = 'SoftInnovas Inc.';
         ac.Phone ='9876543214';
         update ac;
         System.debug('ac= '+ ac);
    }

    public static void dmlDemoInsert_stndObj2(){
        account acc = [select id,name from account where name like 'SoftInnovas Inc.%' limit 1];

        //create contact instance
        contact c = new contact();
        c.LastName = 'Biden';
        c.AccountId = acc.id;
        insert c;
    }

    public static void dmlDemoInsert_cstmObj2(){
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate DESC limit 1];

        Salesforce_Ticket__c newSt = new Salesforce_Ticket__c();
        newSt.Subject__c = ' create related record via apex ';
        newSt.Priority__c = 'High';
         newSt.Status__c = 'New';
         newSt.Requested_by_date__c = date.today();
         //set relationship id
          newSt.Salesforce_Project__c = sp.id;
         insert newSt;
    }

}