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
      home: MyHomePage(title: 'Flutter Table Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey),
              children: [
                Text(
                  'Customer Id',
                  textAlign: TextAlign.center,
                ),
                Text('First_Name'),
                Text('Last_Name'),
                Text('Email Id'),
              ],
            ),
            TableRow(
              children: [
                Text(
                  '1',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'kalyan cherukupally',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'cheruku',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Kalyan@gmail.com',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  '2',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'kalyan',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'cheruku',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Kalyan@gmail.com',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  '3',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'kalyan',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'cheruku',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Kalyan@gmail.com',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
