List<Opportunity> top5 = SoqlPractice.topOpportunites();
for (Opportunity opp : top5) {
    System.debug('Name is '+opp.Name +' Amount is '+opp.Amount +' Stage is '+opp.StageName);
}

System.debug('----- Secod Method -------');
List<Opportunity> fetch = SoqlPractice.fetchOppDetails();
System.debug(fetch.size());

for (Opportunity opp2  : fetch) {
    System.debug('Name is '+opp2.Name +' Close Date is '+opp2.CloseDate +' Stage is '+opp2.StageName);
}