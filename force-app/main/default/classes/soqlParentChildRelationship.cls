public  class soqlParentChildRelationship {
   
    public static List<Contact> childToparent() {
        List<Account> lastAccounts = [SELECT Id, Name FROM Account  ORDER BY CreatedDate DESC  LIMIT 4
        ];

        
        List<Contact> lstContact = [
            SELECT Id, Name, AccountId, Account.Name FROM Contact WHERE AccountId IN :lastAccounts
        ];
        for (Contact con : lstContact) {
            System.debug('Contact ID: ' + con.Id);
            System.debug('Contact Name: ' + con.Name);
            System.debug('Account ID: ' + con.AccountId);
            System.debug('Account Name: ' + (con.Account != null ? con.Account.Name : 'No Account'));
        }
        return lstContact;
    }

    public static List<Account> parentToChild() {
        List<Account> lstAcc = [select Id, Name, (select Name from Contacts)  from Account ORDER BY CreatedDate DESC  LIMIT 4 ];
        for (Account acc : lstAcc) {
            System.debug('Account ID: ' + acc.Id);
            System.debug('Account Name: ' + acc.Name);
            if (acc.Contacts != null && !acc.Contacts.isEmpty()) {
                for (Contact con : acc.Contacts) {
                    System.debug('  Contact ID: ' + con.Id);
                    System.debug('  Contact Name: ' + con.Name);
                }
            } else {
                System.debug('  No Contacts associated with this Account');
            }
        }
        return lstAcc;
    }

    public static void totalContactsByCompany() {
        
        List<Account> lastAccount = [SELECT Id, Name FROM Account  ORDER BY CreatedDate DESC  LIMIT 4
        ];
        List<AggregateResult> groupedResults = [
            SELECT Account.Name, COUNT(Id) totalContacts FROM Contact WHERE AccountId IN:lastAccount GROUP BY Account.Name];

        for (AggregateResult ar : groupedResults) {
            System.debug('Account Name: ' + ar.get('Name'));
            System.debug('Total Contacts: ' + ar.get('totalContacts'));
        }
    }
}