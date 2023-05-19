import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: 0,
        fixedColor:Colors.grey,
        items:[
          BottomNavigationBarItem(
           label :'Home',
            icon:Icon(Icons.home),
          ),
           BottomNavigationBarItem(  
      label: "Search",  
      icon: Icon(Icons.search),  
    ),  
    BottomNavigationBarItem(  
      label: "User Profile",  
      icon: Icon(Icons.account_circle),  
    ),  
        ],
        
        ),
    );
  }
}