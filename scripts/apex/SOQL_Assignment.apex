SOQL_Assignment.soql_WhereClause();

SOQL_Assignment.soql_formethod();



List<Contact> contacts = SOQL_Assignment.conlst('Bulkify Acc 4');

if (!contacts.isEmpty()) {
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