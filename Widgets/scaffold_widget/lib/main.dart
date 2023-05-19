// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home:Myhomepage(),
    );
  }
}

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Welcome To Our New App'),
      ),
      body:Center(
        child: Text('You Won 100Rs to redeem please click below redeem button',
        style:TextStyle(
        color:Colors.amberAccent,
        fontSize: 30.0,
        backgroundColor: Colors.grey[800],
      ),
      ),
      ),

      floatingActionButton: FloatingActionButton(onPressed:(){},
      elevation: 1.0,
      
      child:Text('redeem',),
      ),
      drawer: Drawer(
        child: ListView(children:const<Widget> [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.orangeAccent,),
            child:Text('My Favourite',
            style:TextStyle(
              color:Colors.green,fontSize: 30.0,
            ),
            )
          ),
        
          ListTile(
            title:Text('1'),
          ),
          ListTile(
            title: Text("All Mail Inboxes"),
            leading:Icon(Icons.mail),
          ),
        Divider(
          height:0.2,
        ),
        ListTile(  
            title:  Text("Primary"),  
        ),  
        ListTile(  
            title: Text("Social"),  
        ),  
        ListTile(  
            title: Text("Promotions"),  
        ),   

        ],
        ),
       ),
      
      );
     
    
  }
}

