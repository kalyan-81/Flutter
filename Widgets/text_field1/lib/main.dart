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
     
      String name="";
      
      void _onchange(String value){
        setState(() {
          name='changed-${name=value}';
        });
      }

      void _onsubmit(String value){
        setState(() {
          name='submitted-${name=value}';
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text Field demo'),
      ),
      body:Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children:<Widget> [
            Text('$name'),
            TextField(
                decoration:InputDecoration(
                  hintText: 'Type your name',
                  
                  labelText: 'User Name',
                  icon:Icon(Icons.people),

                ),
                autocorrect: true,
                autofocus:true,
                keyboardType: TextInputType.text,
                onChanged: _onchange,
                onSubmitted: _onsubmit,
                ),
          ],
        ),
      ),
    );
  }
}

