public class ListDemo {
    public static String candidateList(integer i) {
        List<String> listCandidates = new list<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('candidates ==> ' +listCandidates);

       string candidate = '';
       if (i >= 0 && i < listCandidates.size()) {
         candidate = listCandidates[i];
       } else {
         candidate = ' No value found. Try again later';
       }
        return candidate;

    }

    public static void randomIntegerList() {
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        integer index3Value = listInteger.get(3);
        integer index3Value2 = listInteger[0];
        System.debug('index 3 value is '+ index3Value);
        System.debug('index 2 value is '+index3Value2);
        System.debug('random integer list ==> ' +listInteger);
    }

    public static void allCats(){
        List<cat> cats = new List<cat>();
        //how to add elements in list of cat?
        //which elements we can add?
        //A. we can instances of CAT class in this list.

        cat c1 = new cat('cinamon ', ' brown');
        cat c2 = new cat('duman ', 'dark gray');
        cat c3 = new cat();


        cats.add(c1);
        cats.add(c2);
        cats.add(c3);

        System.debug('cats ===> '+cats);  

        if (!cats.isEmpty()) {
            System.debug('cat at 0 ' + cats[0]);
        }
    }

    public static void iterateList(){

        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        for (Integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
}