public  class ListPractice {
    public static String findDay(integer input) {

        String outputDay = '';

        List<String> IstDays = new List<String>();
          IstDays.add('Not a valid day');
          IstDays.add('Monday');
          IstDays.add('Tuesday');
          IstDays.add('Wednesday');
          IstDays.add('Thursday');
          IstDays.add('Friday');
          IstDays.add('Saturday');
          IstDays.add('Sunday');
          
          


          integer size1 = IstDays.size();
          

             if ( input < 0 || input >= size1) {
                outputDay = IstDays[0];
                System.debug(outputDay); 
            }else  {
                outputDay = IstDays[input];
                System.debug(outputDay);
            }
        
           


        return outputDay;
    }

    public static void listMethods(){
        List<String> listDays = new List<String>{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'};
        

        System.debug(listDays);

        listDays.add('Not this day');
        
        System.debug('add ==>'+listDays);

        // Copy list
        List<String> listDays2 = new List<String>(listDays);
        System.debug('Clone ==>'+listDays2);

        //add elemen on index 
        listDays2.add(1, ' Holiday');
        System.debug('add index ==>'+listDays2);

        //remove from list
        listDays2.remove(0);
        listDays2.remove(1);
        System.debug('remove ' +listDays2);

        //set list
        listDays2.set(2, 'whereday');
        System.debug('set ==>'+listDays2);


    }
     
    public static list<string> sortDesc(list<string> input){
         List<string> result = new List<string>();
         
         input.sort();
         System.debug(input);
        for (Integer i= input.size() - 1; i >= 0; i--) {
            
            result.add(input[i]);
        }
       
        return result;
    }

   
    
}
