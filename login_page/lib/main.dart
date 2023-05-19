import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      title:'flutter form',
      home:MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('flutter TextField Example'),
      ),
      body:Padding(
        padding: EdgeInsets.all(15),
        child:Column(children: <Widget>[
          Padding(
            padding:EdgeInsets.all(15),
              child:TextField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:'User Name',
                  hintText:'Enter Your Name',
                ),
                ),
          ),
          Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ),
                ElevatedButton(   
                  child: Text('Sign In'),  
                  onPressed: () { },  
                )    
        ],
        )
      )
    );
  }
}