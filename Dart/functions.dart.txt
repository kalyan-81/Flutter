void main() 
{
  //functions in dart
  
  // 1. simple function without return and no parameters
  
  void printingName()
  {
    print("my name is badshah I'm a developer");
  }
  // calling the function
  printingName();
  
  //2. function with return value and no parameters
  
  String city()
  {
    String city="Hyderabad";
    return city;
  }
 
  print(city());
  
  //3. function with parameters and no return value
  
  void add(num1,num2)
  {
    print(num1+num2);
  }
  
  add(20,30);
  
  //4. function with parameters and with return value
  
  int mul(num1,num2)
    {
      return num1*num2;
    }
  
  print(mul(30,25));
  
}
  
