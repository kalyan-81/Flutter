void main() {
  
  // method overriding
  
  //creating object for student class
  
  var std = Student();
  std.sleep();
  
  var emp = Employee();
  emp.sleep();
  
  var humn=Human();
  humn.sleep();
  
}

class Human{
  String name='';
  void sleep(){ print("Human can sleep"); }
}



class Student extends Human{
  
  
  int marks=200;
  
  void study(){ }
  
  @override
  void sleep(){
    print("student is sleeping");
  }
  
}


class Employee extends Human{
  
  int salary=12000;
  
  void work(){}
  @override
  void sleep(){
    print("employee is sleeping");
  }
  
 
}
