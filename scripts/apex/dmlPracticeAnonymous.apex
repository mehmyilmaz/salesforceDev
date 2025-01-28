DMLPractice.insertSingle('John Practice');

List<Account> lstUpdate = DMLPractice.updateBulk('John');

for (Account acc : lstUpdate) {
    System.debug('update Account : '+acc);
}

System.debug('Total number of updated records : '+lstUpdate.size());