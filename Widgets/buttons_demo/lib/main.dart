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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('flutter buttons demo'),
      ),

      body:Center(
        child:Column(
          children:<Widget> [
            Container(
              margin: EdgeInsets.all(25),
              child:TextButton(
                onPressed: (){},
                child:Text('TextButton'),

              ),
            ),
          
          Container(
            margin:EdgeInsets.all(25),
            child: TextButton(
              onPressed: (){}, 
              child: Text('TextButton with background color'),
              style:ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.red),),
            ),
          ),
          Container(
           child: TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return Colors.blue.withOpacity(0.04);
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed))
          return Colors.blue.withOpacity(0.12);
        return null; // Defer to the widget's default.
      },
    ),
  ),
  onPressed: () { },
  child: Text('TextButton kalyan')
)
          ),

        Container(
          child:ElevatedButton(
            onPressed: (){},
            child:Text('elevated button 1'),
          ),
        ),

          ],
        ),

      ),

    );
  }
}