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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _value="My name is Raghava";
  int _level=0;
  void onClick(){
    setState(() {
      _value="My name is kalyan";
    });
  }

  void _onPressed(String name){
    setState(() {
      _value=name;
    });
  }

  void _textButtonPressed(){
    setState(() {
      _value='text button pressed';
    });
  }

  void additon(){
    setState(() {
      _level++;
    });
  }

  // void substraction(){
  //   setState(() {
  //     _level--;
  //   });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('raised button deprecated and elevated button took place'),
      ),
      body:Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children:<Widget> [
            Text(_value),
            ElevatedButton(
              onPressed: onClick, 
              child: Text('elevated button'),
              ),

            ElevatedButton(
              onPressed:()=> _onPressed('aklyan'), 
              child: Text('elevated button with parameters'),
              ),

            TextButton(
                onPressed: _textButtonPressed, 
                child:Text('textbutton'), 
                ),
            Text('Game leve-${_level}'),
            IconButton(onPressed: additon, icon: Icon(Icons.add)),
            IconButton(onPressed: (){setState(() {
              _level--;
            });}, icon:Icon(Icons.remove)),
          ],
        ),
        


      ) ,
    );
  }
}
