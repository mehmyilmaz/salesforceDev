List<String> listStr = new list<string>();
listStr.add('out of bound');
listStr.add('yes');
listStr.add('alright');
listStr.add('yes sir');


String concateStr = ' ';

for (String eachstr : listStr) {
    concateStr += eachstr+' || ';

}
System.debug(concateStr);