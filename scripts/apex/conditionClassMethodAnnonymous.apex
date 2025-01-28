ConditionClass_Assignment cm = new ConditionClass_Assignment();


String result =cm.ifClassMethod(1);
System.debug(result);

String result1 =cm.ifClassMethod(2);
System.debug(result1);


String result2 =cm.ifClassMethod(5);
System.debug(result2);


String result3 = cm.caseMethod('January');
System.debug(result3);


String result4 = cm.caseMethod('May');
System.debug(result4);

String result5 = cm.caseMethod('July');
System.debug(result5);

String result6 = cm.caseMethod('not');
System.debug(result6);

