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

void _onChanged1(bool value)=>setState(()=>_value1=value);
void _onChanged2(bool value)=>setState(()=>_value2=value);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('switch example'),),

      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children:<Widget> [
            Switch(value: _value1, onChanged: _onChanged1),
            Switch(value: _value2, onChanged: _onChanged2),

            SwitchListTile(value: _value1, onChanged: _onChanged1,
            title: Text('hello world'),
            ),
          ],
        ),

      ),
    );
  }
}
