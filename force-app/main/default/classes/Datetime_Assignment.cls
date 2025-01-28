public  class Datetime_Assignment {
   public void diffofDate() {
     Date varTomorrowDate = date.newInstance(2024, 12, 27);
     system.debug('tomorrow date is ' + varTomorrowDate);


     Date varTodayDate = date.newInstance(2024, 12, 26);
     system.debug('Today date is  ' + varTodayDate);

     Integer betweenTodataToTomorrow = varTodayDate.daysBetween(varTomorrowDate);
     system.debug(' difference between today and tomorrow is ' + betweenTodataToTomorrow );
   }

    public void Timecheck(){
       Datetime varTomorrowDatetime = datetime.newInstance(2024,12,27,7,0,0);
       system.debug('Tomorrow is ' + varTomorrowDatetime);

        Datetime var10DaysDatetime = datetime.newInstancegmt(2025,1,5,9,0,0);
        system.debug('Date after 10 days ' + var10DaysDatetime);
        
        Long varDatetimeLong = 12339874361L;
        System.debug(varDatetimeLong);

         Datetime add7Days = varTomorrowDatetime.addDays(7);
         system.debug('7 days after tomorrow is ' + add7Days);

         Datetime var10DaysAddDays = var10DaysDatetime.addDays(10);
         system.debug('10 days after 10 days is ' + var10DaysAddDays);
    }

}