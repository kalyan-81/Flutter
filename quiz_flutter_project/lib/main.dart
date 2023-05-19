import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter Quiz'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            Text('Q1. What is Flutter', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.9),),
            ElevatedButton(onPressed: null, child: Text('FrameWork'),),
            ElevatedButton(onPressed: null, child: Text('Progamming language'),),
            ElevatedButton(onPressed: null, child: Text('All of the Above'),),
            ElevatedButton(onPressed: null, child: Text('None of the above'),),
        
        
            Text('Q1. What is Flutter', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.9),),
            ElevatedButton(onPressed: null, child: Text('FrameWork'),),
            ElevatedButton(onPressed: null, child: Text('Progamming language'),),
            ElevatedButton(onPressed: null, child: Text('All of the Above'),),
            ElevatedButton(onPressed: null, child: Text('None of the above'),),
            
            Text('Q1. What is Flutter', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.9),),
            ElevatedButton(onPressed: null, child: Text('FrameWork'),),
            ElevatedButton(onPressed: null, child: Text('Progamming language'),),
            ElevatedButton(onPressed: null, child: Text('All of the Above'),),
            ElevatedButton(onPressed: null, child: Text('None of the above'),),
        
        
            Center(
              
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton.icon(onPressed: null, icon: Icon(Icons.arrow_left), label: Text('Previous'),),
                  Text('page 1',style: TextStyle(color: Colors.blue,fontSize: 25),),
                  ElevatedButton.icon(onPressed: null, icon:Icon(Icons.arrow_right), label: Text('Next'))
            
                ],
                ),
            )
        
        
        
        
        
        
            
          ],
        ),
      ),
    ) ;
  }
}
