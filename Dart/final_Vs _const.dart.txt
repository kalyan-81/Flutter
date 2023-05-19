void main() {
  
  // final vs const keywords
  
  final name="kalyan";
 
//   name="kali";  /* throws error can't assign to the final variable */
  
  
  const price=19999;
  //price=9999;  /* throws error cant't assign to the const variable */
  
  
 
  
}

 class Circle{
   //color="red";  // variable must be declared either const or final or var or a type name
   final color="red";
     //const radius=30;  /* throws error only static fields can be declared as const */
   static const radius=30; 
  }

// main difference between final and const

/* final is initialized or allocates memory when we access final variable */

/* const is initialized during compile time */