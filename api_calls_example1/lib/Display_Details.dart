import 'package:flutter/material.dart';

class Display_Details extends StatefulWidget {
  const Display_Details({super.key});

  @override
  State<Display_Details> createState() => _Display_DetailsState();
}

class _Display_DetailsState extends State<Display_Details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Displayed User Details'),
        ),
        body: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
