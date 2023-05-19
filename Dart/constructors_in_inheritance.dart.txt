void main() {
  
  // constructor in inheritance
  
  //creating object for student class
  
  var std =Student("kalyan");
  
  // create an object for cat class
  
  var cat1 = Cat();
}

class Human{
  String name='';
  
  //constructor default
  
  Human(){print("human constructor");}
  
  void sleep(){ print("Human can sleep"); }
}



class Student extends Human{
  
  
  int marks=200;
  //constructor parmeterized
  
  Student(String name){print("$name constructor");}
  
  void study(){ }
  
  @override
  void sleep(){
    print("student is sleeping");
  }
  
}


class Employee extends Human{
  
  int salary=12000;
  Employee(){print("employee constructor");}
  void work(){}
  @override
  void sleep(){
    print("employee is sleeping");
  }
}

 class Animal{
   //if the parent class constructor doesn't have default constructor then child class must call the parent class constructor explicitly
   Animal(String name){print("parameterized constructor");}
}

class Cat extends Animal{
  
  
 // Cat(){  print("default constructor of class");} //this will throws error
  Cat():super("blue cat"){  print("default constructor of class");}// this is explicitly calling parent class constructor
}
