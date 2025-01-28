// {'super', 'bat', 'he', 'iron', 'spider', 'ant', 'super', 'spider'} elemanlarını içeren bir list create edin. 
//  Listenin her bir elemaninin sonuna 'man' ekleyin ve bu isimleri set içerisinde toplayın. (heman i he-man olarak yazsin). 

list <string> heroList = new List<String>{'super', 'bat', 'he', 'iron', 'spider', 'ant', 'super', 'spider'};
heroList.add('spider');
System.debug('herolist '+heroList);
System.debug('heroList size '+heroList.size());
Set<String> heroSet = new Set<String>();
for (String hero : heroList) {
    if (hero == 'he') {
        heroSet.add('he-man');
        
    }else {
        heroSet.add(hero+' man');
    }
    System.debug('heroSet ' + heroSet);
}


List<integer> numbers= new List<Integer>{1,2,88,24,132,56,345,987,88,24,345};

SetExamples.sayilarTekCiftAyirma(numbers);