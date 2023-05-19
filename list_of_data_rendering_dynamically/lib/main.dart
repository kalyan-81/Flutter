import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuoteList(),
    ),
  );
}


class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes=[
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body:Column(
        children: quotes.map((quote){
          return Text(quote);
        }).toList(),
      )

    );
  }
}