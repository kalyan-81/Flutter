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
    return Container(
      child:Scaffold(
        appBar: AppBar(
          title: Text('layout examples'),
        ),
        body: Container(
          child: Center(
            child: Container(
              height: 500,
              decoration: BoxDecoration(color:Colors.blue,),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Hello world'),
                  Image(image: NetworkImage('https://media.istockphoto.com/id/1404749040/photo/human-vs-robot.jpg?b=1&s=170667a&w=0&k=20&c=PWODkUDFPdUQiy2E4T2NknaGZsmjOeHvTeMacZ-Spfo='),
                  ),
                  Center(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color:Colors.amber,),
                        Icon(Icons.star, color:Colors.amber,),
                        Icon(Icons.star, color:Colors.amber,),
                        Icon(Icons.star, color:Colors.amber,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ) ,

    );
  }
}