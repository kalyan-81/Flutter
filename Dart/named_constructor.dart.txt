void main() {
  // named constructors in inheritance
  var std = Student("kali");
  print(std.name); // returns kalyan because we didn't set the student variable in the constructor so it will take parent variable
}

class Human{
  String name='';
  
  //named constructor
  Human.myConstructor(String name){
    this.name=name;
    print("named constructor");
}
}

class Student extends Human{
  
  /* below code throws error that Human doesn't have unnamed construcor */
//   Student(String name){
//     print("student constructor");
//   }

    // To avoid the above error call the named constructor of Human like below
  
  Student(String name):super.myConstructor("kalyan"){
    print("student contructor");
  }
}