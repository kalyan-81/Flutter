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
      title: 'Flutter TextField Demo',
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
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    String value='';
    return Scaffold(
      appBar: AppBar(
        title:Text('TextField Demo'),
        ),
        body:
          Column(
            children: <Widget>[
              Padding(padding:EdgeInsets.all(15),
              child:TextField(
                controller: nameController,
                onChanged: (text){value=text;} ,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:'User Name',
                  hintText:'Enter your name',

                )
              ),
              ),

              Padding(padding:EdgeInsets.all(15),
              child:TextField(
                controller:passwordController,
                obscureText:true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'enter your password with min 8 characters'
                ),
              ),

              ),

              ElevatedButton(onPressed: (){}, 
              child:Text('Register'),
              )
         
          ],
          )

      );
  }
}

