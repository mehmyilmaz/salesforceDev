Account acc = new Account();
acc.Name = ' First Account from VS';
acc.AnnualRevenue = 1000;
acc.Rating = 'Hot';

insert acc;

Contact con = new Contact();
con.LastName = 'Contact From VS';
con.FirstName = 'Contact';
con.Phone = '2341233';
con.Email= 'contact@sf.com';
insert  con;

//recort update
Contact conn = [select LastName from Contact Where LastName ='Contact From VS' limit 1];
conn.LastName ='From VS';
update conn;


List<Account> lstAcc = new List<Account>();
for (integer i = 0; i < 5; i++ ) {
    Account acc = new Account();
    acc.Name = 'Bulkify Acc '+ i;
    acc.Industry = ' Techonology';
    lstAcc.add(acc);
}
insert lstAcc;

List<Opportunity> lstOpp = new List<Opportunity>();
for (integer i =1; i<4; i++) {
    Opportunity opp = new Opportunity();
    opp.Name = 'Opp - '+i;
    opp.StageName = 'Prospecting';
    opp.CloseDate = date.today().addDays(15);

    lstOpp.add(opp);

}

insert lstOpp;

//List update
List<Account> accUpdated = [SELECT Id ,AnnualRevenue FROM Account  WHERE Name Like 'Bulkify Acc%'];
System.debug(accUpdated);

List<Account> updatedRecords = new List<Account>();

for (Account acc : accUpdated) {
    if (acc.AnnualRevenue == null) {
        acc.Type = 'Prospect';
        updatedRecords.add(acc);
    }
}
update updatedRecords;

//DELETE RECORD 
Account accDeleted = [SELECT Id FROM Account WHERE Name = 'Bulkify Acc 3' LIMIT 1];
delete accDeleted;

//List deleted records
List<Opportunity> oppsDeleted = [SELECT Id FROM Opportunity WHERE Name Like 'Opp -%'];
delete oppsDeleted;


Account acc = new Account();
acc.Name = 'Test Acc';
System.debug('Insert oncesi '+acc);
insert acc;
System.debug('Insert sonrasi  '+acc);


Contact con = new Contact();
con.LastName = 'Test Contact ';
con.AccountId = acc.Id;
insert con;


Salesforce_Project__c sp = new Salesforce_Project__c();
sp.Project_Name__c = 'Test Project';
sp.Status__c = 'New';
insert sp;

Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Subject__c = 'Test Ticket';
st.Salesforce_Project__c = sp.Id;
insert st;



DmlExamples.updateHighestAnnualRevenuAccDescription();
DmlExamples.createTaskToHighsetAmountOpp();
