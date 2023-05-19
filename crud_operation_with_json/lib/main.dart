import 'package:crud_operation_with_json/reading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Operation',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool formVisible = false;
  bool readDataVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Operation Example'),
      ),
      body: Column(
        children: [
          Visibility(
            visible: formVisible,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('FirstName'),
                    TextFormField(),
                    Text('LastName'),
                    TextFormField(),
                    Text('Email'),
                    TextFormField(),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: readDataVisibility,
            child: ReadData(),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      formVisible = !formVisible;
                    });
                  },
                  child: Text('CREATE'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      readDataVisibility = !readDataVisibility;
                    });
                  },
                  child: Text('READ'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('UPDATE'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('DELETE'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
