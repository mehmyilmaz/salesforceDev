List<Contact> contacts = [SELECT Id,LastName,FirstName,Email FROM Contact];
System.debug(contacts);

List<Opportunity> lstOpp = SoqlExaplesTR.getClosedWonOpps();
System.debug(lstOpp);

String opportunityName = SoqlExaplesTR.getBiggestAmountOpportunityName();
System.debug(opportunityName);


List<Opportunity> opportunities =  SoqlExaplesTR.getCreatedInLast90Days();
System.debug(opportunities);


List<Case> lstCase = SoqlExaplesTR.getCaseRecordsByPriority('High');
System.debug(lstCase);



//RELATIONSHIP SOQL

// SELECT Id,Account.Name,Account.AnnualRevenue,CreatedBy.Name,LastModifiedBy.Name,Owner.Name,Owner.Email,Owner.Title FROM Opportunity

//FROM PARENTS OBJECT TO CHILD OBJECT

// Select Id,AnnualRevenue,(Select Id,Name FROM Opportunities),(Select Id,Name,Phone FROM Contacts) FROM Account
//SELECT Id, Status__c ,Project_Name__c,(SELECT Id,Name,Subject__c,Status__c FROM Salesforce_Tickets__r WHERE Status__c='Completed') FROM Salesforce_Project__c


//FROM CHILD OBJECT TO PARENTS OBJECT

// SELECT Id,Name,Priority__c,Status__c,Subject__c,Salesforce_Project__c,Salesforce_Project__r.Project_Name__c,Salesforce_Project__r.Status__c,Salesforce_Project__r.Name FROM Salesforce_Ticket__c


SoqlExaplesTR.getContactsRelatedAccMoreThanParam(500000000);

List<Account> accounts = [Select Id,AnnualRevenue,(Select Id,Name FROM Opportunities),(Select Id,Name,Phone FROM Contacts) FROM Account];
for(Account acc : accounts){
    System.debug(acc); //Herbir account
    for(Opportunity opp:acc.Opportunities){
        System.debug(opp); 
    }
    System.debug('----------');
    for (Contact con : acc.Contacts) {
       System.debug(con) ;
    }
}




String accountName = 'Meta';
List<Contact> contacts = SOQL_Assignment.conlst(accountName);

if (contacts.isEmpty()) {
    System.debug('Contacts not found');
}else {
    
    for (Contact con : contacts) {
        System.debug('Contact ID: ' + con.Id);
        System.debug('Contact Name: ' + con.Name);
        System.debug('Account ID: ' + con.AccountId);
        System.debug('Account Name: ' + con.Account.Name);
    }
    System.debug(contacts);
}




String accountNameSubstring = 'Burlington Textiles Corp of America';
List<Account> accounts = SOQL_Assignment.accLst(accountNameSubstring);
if (accounts.isEmpty()) {
    System.debug('No Accounts found with name including: ' + accountNameSubstring);
} else {
    for (Account acc : accounts) {
        System.debug('Account Name: ' + acc.Name);

        if (acc.Cases != null && !acc.Cases.isEmpty()) {
            System.debug('Total Cases: ' + acc.Cases.size());
            for (Case c : acc.Cases) {
                System.debug('  Case Number: ' + c.CaseNumber);
                System.debug('  Case Origin: ' + c.Origin);
                System.debug('  Case Priority: ' + c.Priority);
                System.debug('  Case Subject: ' + c.Subject);
            }
        } else {
            System.debug('  No Cases found');
        }
    }
}
