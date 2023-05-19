void main(){
  
  //inheritance
  // now we will create object for the student class and set the name
  
  var std=Student();
  std.name="kalyan";// even though the name field is not present in the student class it is possible to set the name beause it was inherited by  the Human class
  
  print(std.name);
  
  // similarly for employee class create an object
  
  var emp=Employee();
  emp.name="John";
  
  print(emp.name);
  
  std.sleep();
  emp.sleep();
  
  
}

class Human{
  String name='';
  void sleep(){ print("${this.name}  can sleep"); }
}



class Student extends Human{
  
  
  int marks=200;
  
  void study(){ }
  
}


class Employee extends Human{
  
  int salary=12000;
  
  void work(){}
  
 
}