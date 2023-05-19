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

  bool _value1=false;
  bool _value2=false;

  void _changeEvent(value){
    setState(() {
      _value1=value;
    },);
  }

  void _changeEvent2(value){
    setState(() {
      _value2=value;
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('check boxes examples'),
      ),
      body:Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children:<Widget> [
              Text('Add Widgets Here'),

              Checkbox(value: _value1, onChanged:_changeEvent ),
              CheckboxListTile(value:_value2, onChanged: _changeEvent2,
              title: Text('value1'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.archive),
              activeColor:Colors.amber,

              ),
            ],
          ),
        ),
      )
    );
  }
}

