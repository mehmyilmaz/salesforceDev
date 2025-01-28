Account appl = new Account();
appl.Name = 'Apple';
appl.AnnualRevenue = 10000000;
appl.Website = 'www.apple.com';
insert appl;

Account met = new Account();
met.Name = 'Meta';
met.AnnualRevenue = 10000000;
met.Website = 'www.meta.com';
insert met;

Account tes = new Account();
tes.Name = 'Tesla';
tes.AnnualRevenue = 10000000;
tes.Website = 'www.tesla.com';
insert tes;

Account micro = new Account();
micro.Name = 'Microsoft';
micro.AnnualRevenue = 10000000;
micro.Website = 'www.microsoft.com';
insert micro;


  List<Contact> lstCon = new List<Contact>();
for (integer i = 1; i < 4 ; i++ ) {
    Contact con = new Contact();
    con.LastName ='Appl';
    lstCon.add(con);
}
insert lstCon;


String accountName = 'Tesla';
Account acc = [SELECT Id FROM Account WHERE name = :accountName LIMIT 1];

List<Contact> lstCon2 = new List<Contact>();
for (integer i = 1; i < 3 ; i++ ) {
    Contact con2 = new Contact();
    con2.LastName ='Tesl'+i;
    con2.AccountId = acc.Id;
    lstCon2.add(con2);
}
insert lstCon2;

String accountName = 'Microsoft';
Account acc1 = [SELECT Id FROM Account WHERE name = :accountName LIMIT 1];

List<Contact> lstCon3 = new List<Contact>();
for (integer i = 1; i < 6 ; i++ ) {
    Contact con3 = new Contact();
    con3.LastName ='Micro'+i;
    con3.AccountId = acc1.Id;
    lstCon3.add(con3);
}
insert lstCon3;



// Call childToParent method
SoqlParentChildRelationship.childToParent();

// Call parentToChild method
SoqlParentChildRelationship.parentToChild();

// Call totalContactsByCompany method
SoqlParentChildRelationship.totalContactsByCompany();