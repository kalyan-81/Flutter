import 'package:flutter/material.dart';
import 'dart:async';

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
  String _value='';

  Future _selectDate() async{
    DateTime picked = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate:  DateTime(2016), lastDate: DateTime(2019));
    if(picked !=null) setState(()=>_value=picked.toString());
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Date picker Example'),

      ),
      body:Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children:<Widget> [
            Text('Date pick'),
          ],
        ),
      )
    );
  }
}
