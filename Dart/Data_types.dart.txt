void main()
{
  // dart programming data types
  /*
   * 1. numbers => int,double
   * 2. Strings
   * 3. Booleans
   * 4. List(also known as arrays)
   * 5. maps
   * 6. runes(for expressing unicode characters in string)
   * 7. Symbols
   * 
   * 
   * All data types in  dart are objects default values for all types in "null".
   */
  
  //numbers: int
  
  int age=26;
  print(age);
  
  //numbers:double
  double money=10.50;
  print(money);
  
  //Strings
  
  String name="kalyan"; // we can use single quotes or double quotes
  print(name);
  
  //boolean
  bool alive=true;
  bool dead=false;
  
  print(alive);
  print(dead);
  
  //literals
  
//   10;
//   "kalyan";
//   flase;
//   true;
//   12.49;
 
  //string literal
  String s1="first ";
  String s2='second ';
  String s3="it's okay";
  String s4='it\'s okay';
  
  //string interpolation
  /* string manipulations are called interpolation" */
  
  print(s1+s2);
  print("$s1$s2");
  print('$s1$s3');
  
  int length=150;
  int breadth=550;
  print("length is = $length breadth is = $breadth");
  
  print("my age is"+age.toString());
  
  print(s4.length);
  
 
}

  
