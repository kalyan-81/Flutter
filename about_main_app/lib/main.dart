import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My first Page",
    color:Colors.pink,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.light), //Theme data 
 home:Scaffold(appBar: AppBar(title: Text("First Page"),), body:Container(),
 
 floatingActionButton: FloatingActionButton(child:Text("Click"),onPressed:null,),

 

 ),
  )
  
  );
}

