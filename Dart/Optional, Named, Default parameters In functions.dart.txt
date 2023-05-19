void main() {

  // arrow functions
  
  void add()=> print(20+40);
 
  add();
  
  int sum(int a ,int b)=>a+b;
  
  print(sum(33,55));
 
/* important note */
  
  // it wouldn't work for multiline statements
  
  // the below code generates an error
  
//   void display()=>{
//     print("hello");
//     print("world");
//   };
  
  // Named optional parameters functions
   void display(String city1,String city2,{String city3=''})
  {
    print("city1 name $city1");
    print("city2 name $city2");
    print("city3 name $city3");
  }
  
 
  display("hyderabad","banglore",city3:"chennai");
  
  // optional parameters
   void display1(String city1,String city2,[String city3=''])
  {
    print("city1 name $city1");
    print("city2 name $city2");
    print("city3 name $city3");
  }
  
 
  display1("hyderabad","banglore");
  
  // default optional parameters
  
 void addition(int num1,int num2,{int num3=5})
  {
    print(num1+num2+num3);
  }
  
  addition(20,40);
  addition(20,40,num3:50);
  
  
  
  
}

