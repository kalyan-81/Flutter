void main() {

  // creation of object
  
  var std=new Student();
  std.study();
  std.sleep();
  
  print("name is ${std.name}");
  print("roll no is ${std.rollno}");
  
  
  
}

// classes

class Student{
  // class consist of state and behaviour
  // object variables
  int rollno=202;
  String name="kalyan";
  
  void study(){
      // studies'
    String name="kali";//  local variables
    print(this.name+"studies");
    print(name);
  }
  
  void sleep(){
    // sleeps
    print(this.name+"sleeps");
  }
  
}