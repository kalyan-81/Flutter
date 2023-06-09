import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

static const String _title= 'Flutter absorb pointer demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home:Scaffold(
        appBar: AppBar(title:const Text(_title)),
        body:const Center(child: MyStatelessWidget(),
        )

        ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children:<Widget>[
        SizedBox(
          width:200.0,
          height:100.0,
          child:ElevatedButton(
            onPressed: (){print('i am not wrapped with absorb pointer');},
            child:Text('click me'),

          ),
        ),
        SizedBox(
          width:100.0,
          height:100.0,
          child:AbsorbPointer(
            absorbing: true,// by default it is true.. true--> prevents the hit button and false will not prevent
            child:ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade200,
              ),
              onPressed: (){print('iam wrapped with absorb pointer');},
              child:Text('wrapped with absorb pointer'),
            ),
          ),
        ),
      ]
    );
  }
}

