import 'package:flutter/material.dart';
import 'package:todo_list/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kalyan',
      home: HomeScreen(),
    );
  }
}
