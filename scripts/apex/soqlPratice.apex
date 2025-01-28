//SOQL: Salesforce Object Query Language
/**
 * SELECT <FIELDS>
 * FROM <SALESFORCE OBJECT>
 * WHERE <FILTER CRITERIA>
 * ORDER BY <SORTING>
 * LIMIT <NO OF RECORDS TO BE DISPLAYED>
 */

//Get all accounts which have Website
List<Account> accounts = [SELECT Id, Name FROM Account WHERE Website != NULL];

//Get all contacts which doesn't have email address
List<Contact> contacts = [SELECT Id, Name, Email FROM Contact WHERE Email = NULL];

//Get all opportunities whose amount is greater than 1M
List<Opportunity> opps = [SELECT Id, Name, Amount FROM Opportunity WHERE Amount > 1000000];

//Child to Parent
//Get all contacts along with their account name & number which have email address populated 
List<Contact> contacts = [SELECT Id, Name, Email, Account.Name, Account.AccountNumber FROM Contact WHERE Email != NULL];

//Get all payments whose amount is not null. Also, select their account name, rating and annual revenue
List<Payment__c> payments = [SELECT Id, Name, Amount__c, Account__r.Name, Account__r.Rating, Account__r.AccountNumber FROM Payment__c WHERE Amount__c != NULL];

//Parent to Child
//Get all accounts along with their contacts. Make sure Account Number is not blank
List<Account> accounts = [SELECT Id, Name, (SELECT Id, Name, Email FROM Contacts) FROM Account WHERE AccountNumber != NULL];
System.debug(accounts);

//Get all Hot rated accounts along with their payments
List<Account> accounts = [SELECT Id, Name, Rating, (SELECT Id, Name, Amount__c FROM Payments__r) FROM Account WHERE Rating = 'Hot'];





//CREATE 
Account acc = new Account();
acc.Name = 'Walmart';
acc.AccountNumber = 'ABC123456';
acc.Website = 'www.walmart.com';
insert acc;

//Get the Walmart details 
Account walmartAcc = [SELECT Id FROM Account WHERE Name = 'Walmart' LIMIT 1];

// UPDATE 
//Update the Annual Revenue of walmart to 5000000
// 1 Get the account record 
//2 Populate your target data 
// 3 save/update 
Account walAcc = [SELECT Id,AnnualRevenue FROM Account WHERE Name = 'Walmart' LIMIT 1];
walAcc.AnnualRevenue = 5000000;
update walAcc;

//DELETE 
//Delete thecustomer Universal Containers 
//1 vGet the account  record 
// 2 delete it
Account ucAcc = [SELECT Id FROM Account WHERE Name = 'Universal Containers' LIMIT 1];
delete ucAcc;

//DMLs on COLLECTIONS 
//Create 3 Accountd; Comcast NBC Universal,AT&T,Verizon
Account comAcc = new Account();
comAcc.Name = 'Comcast';
comAcc.AnnualRevenue = 10000000;
comAcc.Website = 'www.comcast.com';
insert comAcc;

Account attAcc = new  Account();
attAcc.Name = 'AT&T';
attAcc.Website ='www.att.com';
attAcc.AnnualRevenue = 5000000;
insert attAcc;

Account verAcc = new Account();
verAcc.Name = 'Verizon';
verAcc.Website = 'www.verizon.com';
verAcc.AnnualRevenue =2000000;
insert verAcc;