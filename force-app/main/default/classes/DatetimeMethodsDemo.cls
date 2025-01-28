public  class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(1991, 22, 12);
        date todaydate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('Mehmet age is months is ' + ageInMonths);  
    }
    // public void printSubscriptionEndDate(){
    //     date subscriptionStartDate = date.today();

    //     Date subEndDate = subStartDate.addDays(1000);
    //     system.debug('Subscription end date is ' + subEndDate);

    //    integer endDateYear = subEndDate.year();
    //     Integer endDate('year of end date ' + endDateYear);
    //     system.debug('month of end date' + endDateMonth);
    // }
    public void birthDateInMS() {
        datetime birthDT = datetime.newInstance(1990, 10, 9, 7, 30, 00);
        long birthDateMS = birthDT.getTime();
        System.debug('My birthdate in milliseconds is: ' + birthDateMS);
    }

}