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

  double _value=0.0;
  void _setValue(double value)=>setState(()=> _value=value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('slider example'),
      ),
      
      body:Container(
        padding:EdgeInsets.all(25),
        child: Column(
          children:<Widget> [
            Text('the value is ${(_value*100).round()}'),

            Slider(value: _value, onChanged: _setValue),

          ],
        ),
      )
    );
  }
}
