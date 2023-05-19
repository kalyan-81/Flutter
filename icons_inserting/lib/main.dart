import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:Scaffold(appBar: AppBar(),
                    body: HomePage();

      )
      
      )
      
     
      );
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ;
  }
}