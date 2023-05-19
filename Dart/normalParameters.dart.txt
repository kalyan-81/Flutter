// normal parameters
class Card{
  var name;
  var age;
  
  Card(this.age, this.name);
}

void main(){
  
  Card c= new Card(26,"kalyan");
  
  print('age is ${c.age}');
  print('name is ${c.name}');
}

