void main() {

  //constructors
  
  // 1. default constructor
  // 2. parameter constructor
  // 3. named constructor
  
  
  /* default constructor is executed when we created an object */
  
  Object obj = new Student(); // object for default constructor
  
  Object obj1= new Teacher("kalyan","ECE");// object for parameterized constructor
  
  Object obj2 =  Teacher.myOwnConstructor("kali","cse");
}




class Student
{
  // 1. default constructor
  Student(){
    print("default constructor is invoked when object is created");
  }
  
 
}

class Teacher
{
  // 2. parameterized constructor
  // when creating the object for this class provide argument values to the constructor
   
  String name='';
  String dept='';

  Teacher(String name, String dept)
  {
    this.name=name;
    this.dept=dept;
    
    print("name is ${this.name}  dept is ${this.dept}");
  }
  
  // Named constructor means we can any name to the constructor
  
  Teacher.myOwnConstructor(String name , String dept){
    this.name=name;
    this.dept=dept;
  }
}
