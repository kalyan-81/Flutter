void main() {
  
  // getters and setters 
  
  
 // 1. Default Getters and Setters
 // 2. Custom Getters and Setters
 // 3. private variables
  
  //1. default getters ans setters
  var std= Student();
  
  std.name="kalyan"; // default setter
  std.percentage=88.5; // default setter
  
  print(std.name);// default getter
  print(std.percentage);//default getter
  
  //2. custome setter and getters
  
  var std1= Student1();
  
  print(std1.getPercentage);
  
  std1.setPercentage=45.4;
  print(std1.getPercentage);
  
  //3. private variable cannot be accessed outside the class
  
  var std3 = Student3();
//  print(std3.name); // throws error: the getter name is not defined for student3
  
  /* to access the private variables outside the class, setters and getters methods are defined  for private variables*/
  
}

//1. class for default getters and setters

class Student{
  String name='';
  double percentage=0;
}

//2. class for custom Setter and Getters

class Student1{
  double percentage=0;
  
  set setPercentage(double percentage)
  {
     this.percentage=percentage;
  }
  double get getPercentage{
    return percentage;
}
}

//3. private variables
// private variable are declared with underscore("-") infront of the variable name

class Student3{
  
  String _name='kali'; // private variables
  double _percent=0; // private variables
}


