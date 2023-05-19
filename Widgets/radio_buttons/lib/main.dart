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

  int _value1=0;
  int _value2=0;

  void _setValue1(value){
    setState(() {
      _value1=value;
    });
  }
  void _setValue2(value){
    setState(() {
      _value2=value;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('radio buttons'),
      ),
      body:Container(
        child:Column(
          children: [
            Radio(value: 1, groupValue: _value1, onChanged:_setValue1),
            Radio(value: 2, groupValue: _value1, onChanged:_setValue1),
            Radio(value: 3, groupValue: _value1, onChanged:_setValue1),
            Radio(value: 4, groupValue: _value1, onChanged:_setValue1),

            RadioListTile(value:5 , groupValue: _value2, onChanged: _setValue2,
           activeColor: Colors.red,
           controlAffinity: ListTileControlAffinity.leading,
           title: Text('item1'),
           subtitle: Text('sub title'),
           
            ),
            RadioListTile(value:6 , groupValue: _value2, onChanged: _setValue2,activeColor: Colors.red,
           controlAffinity: ListTileControlAffinity.leading,
           title: Text('item1'),
           subtitle: Text('sub title'),
           ),
            RadioListTile(value:7 , groupValue: _value2, onChanged: _setValue2,activeColor: Colors.red,
           controlAffinity: ListTileControlAffinity.leading,
           title: Text('item1'),
           subtitle: Text('sub title'),
           ),
            RadioListTile(value:8 , groupValue: _value2, onChanged: _setValue2,activeColor: Colors.red,
           controlAffinity: ListTileControlAffinity.leading,
           title: Text('item1'),
           subtitle: Text('sub title'),
           ),

          ],
        ),
      ),
    );
  }
}


