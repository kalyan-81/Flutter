// Named parameters
class Card{
  var name;
  var age;
  
  Card({this.age, this.name});
}

void main(){
  
  Card c1= new Card(age:26,name:"kalyan");

  
  print('age is ${c1.age}');
  print('name is ${c1.name}');
  
  
  print("*****  observe the below and above results  **************");
  
  Card c2= new Card(name:"kali",age:26);
  
  print('age is ${c2.age}');
  print('name is ${c2.name}');
  
}
