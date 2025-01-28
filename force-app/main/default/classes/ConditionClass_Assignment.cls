public  class ConditionClass_Assignment {
    public String ifClassMethod(Integer input){
      String output_Month;
      if (input==1) {
        output_Month = 'January';
        
      }else if (input==2) {
        output_Month = 'February';
      } else {
        output_Month = 'Not a valid Month';
      }

      return output_Month;
    }


    public String caseMethod(String input1){
        String output_quarter;
         if (input1 =='January' || input1=='February' || input1=='March') {
            output_quarter ='quarter 1';
         }else if (input1 =='April' ||input1== 'May' || input1=='June') {
            output_quarter ='quarter 2';
         }else if (input1 =='July' ||input1== 'August' || input1=='September') {
            output_quarter ='quarter 3';
         }else if (input1 =='October' ||input1== 'November' || input1=='December') {
            output_quarter ='quarter 4';
         }else {
            output_quarter = 'Not a valid Month';
         }
        return output_quarter;
    }
}