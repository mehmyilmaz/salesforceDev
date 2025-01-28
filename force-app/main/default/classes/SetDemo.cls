public class SetDemo {
    public static void citySet(){
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('BERLIN');
        cities.add('Nairobi');


        System.debug('city set: '+cities);

    }

    public static void randomIntegerSet(){
        Set<Integer> setInteger = new Set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(15);

        System.debug('setof random integers  ='+setInteger);

    }

    public static Set<Integer> setFromSet (list<integer> listInt) {
        Set<Integer> returnSet = new Set<Integer>();
        returnSet.addAll(listInt);
        return returnSet;

    }
    
}