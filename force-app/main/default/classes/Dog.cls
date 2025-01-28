public  class Dog {
  private String name;
  private String color;
  private Integer age;
  

  public  Dog(String name, String color, INteger age){
     this.name = name;
     this.color = color;
     this.age = age;
     checkAge();
  }

   
  public void checkAge(){
    

    if ( age <= 1 && age > 0) {
        System.debug('Puppy');
    }else if ( age < 1 && age <= 3) {
        System.debug('Young Dog');

    }else if (age < 3 && age <= 5 ) {
        System.debug('Adult Dog');
    }else if (age > 5) {
       System.debug('Old Dog');
    }else {
      System.debug('Dog was before');
    }
   
  }
}