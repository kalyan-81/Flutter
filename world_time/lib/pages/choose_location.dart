// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  const ChoseLocation({super.key});

  @override
  State<ChoseLocation> createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Column(
        children:<Text> [
          Text('India'),
          Text('Japan'),
          Text('USA'),
          Text('South Africa'),
          Text('Germany')
        ],
      ),
    );
  }
}